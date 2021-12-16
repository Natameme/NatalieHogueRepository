//ST MAXIMILLIAN'S ORGAN
//Code by Natalie Hogue for Akito Van Troyer's C Programming Class
/*
  Boilerplate code heavily based on SineSynth.c architecture from
    EP-353_Class_Materials/12.MIDI+ModularProgramming/02.SineSynth
  in Main EP-353 Class Repository
*/

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <memory.h>
#include <math.h>
#include <portaudio.h>
#include <portmidi.h>

//Compile with:
//clang EnvTest.c -o EnvTest -lportaudio -lportmidi
//Run with:
//./EnvTest

//clang EnvTest.c -o EnvTest -lportaudio -lportmidi && ./EnvTest

//------------------------------------------------------------------------------------
//Constants
#define kAudioInputDeviceIndex 0 //Built-in input
#define kAudioOutputDeviceIndex 2 //Built-in output
#define kNumFramesPerBuffer 1024
#define kSamplingRate 44100.0
#define kNumChannels 2
#define kMIDIInputDeviceID 0
#define kMaxMIDIEvents 1
#define kDefaultFrequency 110.0
#define kNumVoices 8
#define kAmpAttack 5 //in seconds
#define kAmpRelease 5
//------------------------------------------------------------------------------------
//Declare Structures
typedef struct SineWave {
  float frequency[kNumVoices];
  float phase[kNumVoices];
  float amplitude[kNumVoices];
  PmEvent event;
  PortMidiStream *inputStream;
} SineWave;

typedef struct Stop {
  SNDFILE *file;
  SF_INFO info;
} Stop;

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
    printf("ERROR: Pm_OpenInput() failed. %s\n", Pm_GetErrorText(pmError));
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
    printf("ERROR: Failed to open port audio stream. %s\n",Pa_GetErrorText(error));
    closePortAudio();
    return 1;
  }

  //Start port audio streaming
  error = Pa_StartStream(pStream);
  if(error != paNoError){
    printf("ERROR: Stream Start Failed %s\n",Pa_GetErrorText(error));
  }
  else {
    printf("Audio Stream Initialized! Play Some sounds, exit with the Enter Key\n");
    getchar();
    error = Pa_StopStream(pStream);
    if(error != paNoError){
      printf("ERROR: Failed to stop port audio stream. %s", Pa_GetErrorText(error));
    }
  }

  //Close input MIDI stream
  pmError = Pm_Close(sineWave.inputStream);
  if(pmError != pmNoError){
    printf("ERROR: Pm_Close() failed. %s\n",Pm_GetErrorText(pmError));
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
  float theta = 0, sine = 0, voice = 0, env = 0;
  ////////////////////
  // SYNTHESIS SECTION
  ////////////////////

  for (int q = 0; q < kNumVoices; q++){
      for(unsigned long n = 0; n < numFrames; n += kNumChannels){

    voice = sineWave->phase[q];

    theta =  sin(voice * M_PI * 2.0f);

    sine = theta;

    for(int c = 0; c < kNumChannels; c++){
      buffer[n + c] += pow(sineWave->amplitude[q], 0.25) * sine;
    }

    sineWave->phase[q] += sineWave->frequency[q];

    if(sineWave->phase[q] >= 1.0f){
      sineWave->phase[q] -= 1.0f;
    }
  }
}

  ////////////////
  // MIDI MESSAGES
  ////////////////x
  static int v = 0;//round-robin index
  static int bag[kNumVoices][2];//array for round-robin
  int attk = kAmpAttack * kSamplingRate;
  int rel  = kAmpRelease * kSamplingRate;


  if(Pm_Poll(sineWave->inputStream)){
    Pm_Read(sineWave->inputStream, &sineWave->event, kMaxMIDIEvents);


      if(Pm_MessageStatus(sineWave->event.message) == 0x90){
        int on = Pm_MessageData1(sineWave->event.message);
        printf("ON: %i ", on);
        //prevents overwriting of an active voice
        if(bag[v][0] != 0){
          v++;
        }
        //2. get and store Note|Velocity pairs
        bag[v][0] = Pm_MessageData1(sineWave->event.message);//note = pitch
        bag[v][1] = Pm_MessageData2(sineWave->event.message); //velocity on
        //Send Info to Instrument
        sineWave->frequency[v] = (440.0f * pow(2, (bag[v][0]- 69)/12.0f)) / kSamplingRate;//MTOF

        sineWave->amplitude[v] = (bag[v][1] / 127.0f);
        //envelope attack
        //WHEN NOTE ON, (INTERPOLATE A LINE BETWEEN 0 AND 1, the length of kAmpAttack) * velocity

          //sineWave->amplitude[v] = y0 + (x - x0) * ((bag[v][1] / 127.0f) / (x1 - x0));

        /*y0 + (x - x0) * ((y1 - y0) / (x1 - x0))

    - `y0` is the starting value of the envelope.
    - `y1` is the ending value of the envelope.
    - `x` is the current index of the buffer that we are applying to the envelope.
    - `x0` is the starting index of the buffer.
    - `x1` is the ending index of the buffer.*/

        //sineWave->amplitude[v] = bag[v][1] / 127.0f;//Velocity2Amplitude

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
    //DEBUGGING check if midi is working
    printf("MIDI:");
      for(int i = 0; i < kNumVoices; i++){
        printf("[%i, %i] ", bag[i][0], bag[i][1]);
    }
    printf("\n");
    //DEBUGGING check if freq is working
    printf("Frequency:");
      for(int i = 0; i < kNumVoices; i++){
        printf("[%f] ", sineWave->frequency[i]);
    }
    printf("\n");
    //DEBUGGING check if amp is working
    printf("amplitude:");
      for(int i = 0; i < kNumVoices; i++){
        printf("[%f] ", sineWave->amplitude[i]);
    }
    printf("\n");
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
//PORT AUDIO INIT
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
