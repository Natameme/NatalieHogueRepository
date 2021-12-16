#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <memory.h>
#include <math.h>
#include <portaudio.h>
#include <portmidi.h>

//Compile with:
//clang PolySineSynth.c -o 01.SineSynth -lportaudio -lportmidi && ./01.SineSynth
//Run with:
//./01.SineSynth
//------------------------------------------------------------------------------------
//Constants
#define kAudioOutputDeviceIndex 2 //Built-in output
#define kNumFramesPerBuffer 512
#define kSamplingRate 44100.0
#define kNumChannels 2
#define kMIDIInputDeviceID 0
#define kMaxMIDIEvents 1
#define kDefaultFrequency 440.0
#define kNumVoices 10

//------------------------------------------------------------------------------------
//Declare user data that holds SNDFILE and SF_INFO
//so that we can use them inside audio render callback
typedef struct SineWave {
  float frequency;
  float phase;
  float amplitude;
  PmEvent event;
  PortMidiStream *inputStream;
  bool isMuted;
} SineWave;

//------------------------------------------------------------------------------------
//Function prototypes
int initPortAudio();
int closePortAudio();
void printPaDevices();
void process(float *buffer, unsigned long numFrames, void *userData);
int initPortMidi();
int closePortMidi();
void printPmDevices();
//------------------------------------------------------------------------------------
//Audio render callback function
int renderCallback(
  const void *input,
  void *output,
  unsigned long frameCount,
  const PaStreamCallbackTimeInfo* timeInfo,
  PaStreamCallbackFlags statusFlags,
  void *userData
);
//------------------------------------------------------------------------------------
int main(int argc, char *argv[]){
  PaStream *pStream; //For port audio streaming
  PaStreamParameters outputParameters;

  //Set up synthesizer
  SineWave sineWave[kNumVoices];
  for (int i = 0; i < kNumVoices; i++) {
    sineWave[i].frequency = kDefaultFrequency / kSamplingRate;
    sineWave[i].phase = 0.0f;
    sineWave[i].amplitude = 1.0f;
    sineWave[i].isMuted = true;
  }

  //Initialize port audio and midi
  if(initPortAudio()) return 1;
  if(initPortMidi()) return 1;

  //Print available audio and midi devices
  printPaDevices();
  printPmDevices();

  //Open MIDI input
  PmError pmError = Pm_OpenInput(&sineWave[0].inputStream, kMIDIInputDeviceID, NULL, 512L, NULL, NULL);
  if(pmError != pmNoError){
    printf("Error: Pm_OpenInput() failed. %s\n", Pm_GetErrorText(pmError));
    return 1;
  }

  //Update pointer for MIDI input
  for (int i = 0; i < kNumVoices; i++) {
    sineWave[i].inputStream = sineWave[0].inputStream;
  }

  //Configure port audio output streaming setup
  memset(&outputParameters, 0, sizeof(PaStreamParameters));
  outputParameters.channelCount = kNumChannels;
	outputParameters.device = kAudioOutputDeviceIndex;
	outputParameters.sampleFormat = paFloat32;
	outputParameters.suggestedLatency = 0.0;

  //Open port audio streaming
  PaError error = Pa_OpenStream(
    &pStream,
    NULL, //input
    &outputParameters, //output
    kSamplingRate,
    kNumFramesPerBuffer, //frames per buffer
    paNoFlag,
    renderCallback,
    &sineWave
  );

  //Check for error in opening port audio streaming
  if(error != paNoError){
    printf("Error: Failed to open port audio stream. %s\n",Pa_GetErrorText(error));
    closePortAudio();
    return 1;
  }

  //Start port audio streaming
  error = Pa_StartStream(pStream);
  if(error != paNoError){
    printf("Error: Failed to start port audio stream. %s\n",Pa_GetErrorText(error));
  }
  else {
    printf("Rendering audio... Press enter to stop streaming audio\n");
    getchar();
    error = Pa_StopStream(pStream);
    if(error != paNoError){
      printf("Error: Failed to stop port audio stream. %s", Pa_GetErrorText(error));
    }
  }

  //Close input MIDI stream
  pmError = Pm_Close(sineWave[0].inputStream);
  if(pmError != pmNoError){
    printf("Error: Pm_Close() failed. %s\n",Pm_GetErrorText(pmError));
    return 1;
  }

  //Close port audio streaming
  if(closePortAudio()) return 1;
  if(closePortMidi()) return 1;

  return 0;
}
//------------------------------------------------------------------------------------
void process(float *buffer, unsigned long numFrames, void *userData){
  static int curVoice = 0;

  SineWave *sineWave = (SineWave *) userData;
  float theta = 0, sine = 0, stops;

  // Generate Sine Wave
  for (int voice = 0; voice < kNumVoices; voice++){
    if(!sineWave[voice].isMuted){
      for(unsigned long n = 0; n < numFrames; n += kNumChannels){

        theta = sineWave[voice].phase;

        stops = sin(theta *  M_PI * 2.0f * 1.0f * 2.0f);

        sine = stops;

        for(int c = 0; c < kNumChannels; c++){
          buffer[n + c] += sineWave[voice].amplitude * sine;
        }

        sineWave[voice].phase += sineWave[voice].frequency;
        if(sineWave[voice].phase >= 1.0f){
          sineWave[voice].phase -= 1.0f;
        }
      }
    }
  }

  // Look for incoming MIDI Messages
  if(Pm_Poll(sineWave[0].inputStream)){
    Pm_Read(sineWave[0].inputStream, &sineWave[0].event, kMaxMIDIEvents);
    // Look for Note on message
    if(Pm_MessageStatus(sineWave[0].event.message) == 0x90){ //Note on
      unsigned char note = Pm_MessageData1(sineWave[0].event.message);

      if(curVoice < kNumVoices){
        sineWave[curVoice].frequency = (440.0f * pow(2, (note - 69)/12.0f)) / kSamplingRate;

        sineWave[curVoice].amplitude = (1.0f / kNumVoices); // (Pm_MessageData2(sineWave[curVoice].event.message) / 127.0f)
        sineWave[curVoice].isMuted = false;
        curVoice++;
      }
    }
    else if(Pm_MessageStatus(sineWave[0].event.message) == 0x80){ //Note off
      sineWave[--curVoice].isMuted = true;
    }
  }
}
//------------------------------------------------------------------------------------
int renderCallback(
  const void *input,
  void *output,
  unsigned long frameCount,
  const PaStreamCallbackTimeInfo* timeInfo,
  PaStreamCallbackFlags statusFlags,
  void *userData
){
  float *inBuffer = (float *) input;
  float *outBuffer = (float *) output;
  unsigned long numFrames = frameCount * kNumChannels;

  memset(outBuffer, 0, numFrames * sizeof(float));

  process(outBuffer, numFrames, userData);

  return 0;
}
//------------------------------------------------------------------------------------
int initPortAudio(){ //Initialize Port Audio
  PaError error = Pa_Initialize();
  if(error != paNoError){
    printf("Error: Pa_Initialize() failed with %s\n", Pa_GetErrorText(error));
    return 1;
  }
  return 0;
}
//------------------------------------------------------------------------------------
int closePortAudio(){ //Terminate Port Audio
  PaError error = Pa_Terminate();
  if(error != paNoError){
    printf("Error: Pa_Terminate() failed with %s\n",Pa_GetErrorText(error));
    return 1;
  }
  return 0;
}
//------------------------------------------------------------------------------------
void printPaDevices(){
  //Get number of port audio devices available
  PaDeviceIndex numDevices = Pa_GetDeviceCount();
  PaDeviceIndex curDeviceID;

  const PaDeviceInfo *pDeviceInfo;
  const PaHostApiInfo *pHostApiInfo;

  //Iterate over each device and print out information about them
  for(curDeviceID = 0; curDeviceID < numDevices; curDeviceID++){
    pDeviceInfo = Pa_GetDeviceInfo(curDeviceID);
    pHostApiInfo = Pa_GetHostApiInfo(pDeviceInfo->hostApi);
    printf("--------------------------------------------\n");
    printf("ID: %d, Name: %s, ", curDeviceID, pDeviceInfo->name);
    printf("API name: %s\n", pHostApiInfo->name);
    printf("Max output channels: %d\t", pDeviceInfo->maxOutputChannels);
    printf("Max input channels: %d\n\n", pDeviceInfo->maxInputChannels);
  }
}

int initPortMidi() { //Initialize Port MIDI
  PmError error = Pm_Initialize();
  if(error != pmNoError){
    printf("Error: Pm_Initialize() failed. %s\n", Pm_GetErrorText(error));
    return 1;
  }
  return 0;
}

int closePortMidi() { //Terminate Port MIDI
  PmError error = Pm_Terminate();
  if(error != pmNoError){
    printf("Error: Pm_Terminate() failed. %s\n",Pm_GetErrorText(error));
    return 1;
  }
  return 0;
}

void printPmDevices() {
  //Get the number of port MIDI devices available
  int numDevices = Pm_CountDevices();
  PmDeviceID curDeviceID;
  const PmDeviceInfo *pDeviceInfo;

  //Iterate over each device and print out information about them
  for(curDeviceID = 0; curDeviceID < numDevices; curDeviceID++){
    pDeviceInfo = Pm_GetDeviceInfo(curDeviceID);
    printf("--------------------------------------------\n");
    printf("ID: %d, Name: %s, ",curDeviceID,pDeviceInfo->name);
    printf("MIDI API: %s\n",pDeviceInfo->interf);
    printf("Max MIDI outputs: %d\t",pDeviceInfo->output);
    printf("Max MIDI inputs: %d\n\n",pDeviceInfo->input);
  }
}
