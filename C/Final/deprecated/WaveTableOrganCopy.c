

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <memory.h>
#include <math.h>
#include <portaudio.h>
#include <portmidi.h>

//Compile with:
//clang WaveTableOrgan.c -o OrganToo -lportaudio -lportmidi
//Run with:
//./WaveOrgan

//clang WaveTableOrganCopy.c -o WaveOrganCpy -lportaudio -lportmidi && ./WaveOrganCpy

//------------------------------------------------------------------------------------
//Constants
#define kAudioInputDeviceIndex 0 //Built-in input
#define kAudioOutputDeviceIndex 2 //Built-in output
#define kNumFramesPerBuffer 512
#define kSamplingRate 44100.0
#define kNumChannels 2
#define kMIDIInputDeviceID 0
#define kMaxMIDIEvents 1
#define kDefaultFrequency 110.0
#define kNumVoices 4
//------------------------------------------------------------------------------------
//Declare user data that holds SNDFILE and SF_INFO
//so that we can use them inside audio render callback
typedef struct SineWave {
  float frequency[kNumVoices];
  float phase[kNumVoices];
  float amplitude[kNumVoices];
  PmEvent event;
  PortMidiStream *inputStream;
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
  PaStreamParameters inputParameters;
  PaStreamParameters outputParameters;

  //Set up synthesizer
  SineWave sineWave;

  for(int k = 0; k<=kNumVoices; k++){
  sineWave.frequency[k] = kDefaultFrequency / kSamplingRate;
  sineWave.phase[k] = 0.0f;
  sineWave.amplitude[k] = 0.0f;
}

  //Initialize port audio and midi
  if(initPortAudio()) return 1;
  if(initPortMidi()) return 1;

  //Print available audio and midi devices
  printPaDevices();
  printPmDevices();

  //Open MIDI input
  PmError pmError = Pm_OpenInput(&sineWave.inputStream, kMIDIInputDeviceID, NULL, 512L, NULL, NULL);
  if(pmError != pmNoError){
    printf("Error: Pm_OpenInput() failed. %s\n", Pm_GetErrorText(pmError));
    return 1;
  }

  //Configure port audio input streaming setup
  memset(&inputParameters, 0, sizeof(PaStreamParameters));
  inputParameters.channelCount = kNumChannels;
	inputParameters.device = kAudioInputDeviceIndex;
	inputParameters.sampleFormat = paFloat32;
	inputParameters.suggestedLatency = 0.0;

  //Configure port audio output streaming setup
  memset(&outputParameters, 0, sizeof(PaStreamParameters));
  outputParameters.channelCount = kNumChannels;
	outputParameters.device = kAudioOutputDeviceIndex;
	outputParameters.sampleFormat = paFloat32;
	outputParameters.suggestedLatency = 0.0;

  //Open port audio streaming
  PaError error = Pa_OpenStream(
    &pStream,
    &inputParameters, //input
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
  pmError = Pm_Close(sineWave.inputStream);
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
  SineWave *sineWave = (SineWave *) userData;
  float theta = 0, sine = 0;
  float voice, bourEight, bourFour, clarFour, fifTwo, melEight, mixOne, octFour, prinEight, truEight, truSixt, tweTwo, vioEight;
  ////////////////////
  // SYNTHESIS SECTION
  ////////////////////
for(int q = 0; q < kNumVoices; q++){
  for(unsigned long n=0; n < numFrames; n+=kNumChannels){
    // per sine structure (sin(sineWave->phase * Pi * 2(tau) * harmonic * octave(16=1 8=2 4=4 2=8 1=16) ))


    voice = sineWave->phase[q];

    //TEST WAVE

      theta = (sin(voice * (2.0f * M_PI) ));

      sine = theta;

    for(int c = 0; c < kNumChannels; c++){

      buffer[n + c] +=  pow(sineWave->amplitude[q], 0.25) * sine;


      sineWave->phase[0]  += sineWave->frequency[0];
      sineWave->phase[1]  += sineWave->frequency[1];
      sineWave->phase[2]  += sineWave->frequency[2];
      sineWave->phase[3]  += sineWave->frequency[3];



        if(sineWave->phase[0] >= 1.0f){
          sineWave->phase[0] -= 1.0f;
        }
      //}
    }
  }
}

  ////////////////
  // MIDI MESSAGES
  ////////////////x
  static int v = 0;//round-robin index
  static int bag[4][2]= {{0,0},{0,0},{0,0},{0,0}} ;//array for round-robin

  if(Pm_Poll(sineWave->inputStream)){
    Pm_Read(sineWave->inputStream, &sineWave->event, kMaxMIDIEvents);

      if(Pm_MessageStatus(sineWave->event.message) == 0x90){
        int on = Pm_MessageData1(sineWave->event.message);
        printf("ON: %i ", on);
        //2. get and store Note|Velocity pairs
        bag[v][0] = Pm_MessageData1(sineWave->event.message);//note = pitch
        bag[v][1] = Pm_MessageData2(sineWave->event.message); //velocity on
        //Send Info to Instrument
        sineWave->frequency[v] = 0.00240f;//(55.0f * pow(2, (bag[v][0]- 69)/12.0f)) / kSamplingRate;//MTOF
        sineWave->amplitude[v] = 0.5;//bag[v][1] / 127.0f;//Velocity2Amplitude

        //Loop Around when voices is at max
        if(v >= (kNumVoices-1)){
          v = 0;
      } else {
        v++;  //INCREMENT VOICE NUMBER
      }
      //increment to new slot

    } else if (Pm_MessageStatus(sineWave->event.message) == 0x80){

      int off = Pm_MessageData1(sineWave->event.message);

      printf("off: %i \n", off);

      for(int i = 0; i < kNumVoices; i++){
          //printf("index : %i\n", i);
          if(bag[i][0] == off){//note = noteoff

            bag[i][0] = 0;//zero out note
            bag[i][1] = 0;//zero out velocity


            sineWave->frequency[i] = 0;//turn off freq
            sineWave->amplitude[i] = 0;//turn off note

          } else {
          //do nothing
        }
      }
    }
    //FOR DEBUGGING
      printf("MIDI: v1[%i, %i] v2[%i, %i] v3[%i, %i] v4[%i, %i]\n", bag[0][0], bag[0][1], bag[1][0], bag[1][1], bag[2][0], bag[2][1], bag[3][0], bag[3][1]);
      printf("FREQ: v1[%f] v2[%f] v3[%f] v4[%f]\n", sineWave->frequency[0], sineWave->frequency[1], sineWave->frequency[2], sineWave->frequency[3]);
      printf("AMP : v1[%f] v2[%f] v3[%f] v4[%f]\n", sineWave->amplitude[0], sineWave->amplitude[1], sineWave->amplitude[2], sineWave->amplitude[3]);
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

  //Samples are interleaved so increment by two with kNumChannels
  for(unsigned long n=0; n < numFrames; n+=kNumChannels){//iterate over samples in channels
    for(int c=0;c<kNumChannels;c++){//Iterate over number of channels
      outBuffer[n+c] = inBuffer[n+c]; //Copy input to output
    }
  }

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
//------------------------------------------------------------------------------------
