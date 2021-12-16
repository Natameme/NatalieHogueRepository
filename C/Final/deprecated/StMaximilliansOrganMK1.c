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
//clang StMaximilliansOrganMK1.c -o StMaximilliansOrganMK1 -lportaudio -lportmidi

//Run with:
//./StMaximilliansOrganMK1

//or do both operations together
//clang StMaximilliansOrganMK1.c -o StMaximilliansOrganMK1 -lportaudio -lportmidi && ./StMaximilliansOrganMK1

//------------------------------------------------------------------------------------
//Constants
#define kAudioInputDeviceIndex 0 //Built-in input
#define kAudioOutputDeviceIndex 2 //Built-in output
#define kNumFramesPerBuffer 2048
#define kSamplingRate 44100.0
#define kNumChannels 2
#define kMIDIInputDeviceID 0
#define kMaxMIDIEvents 1
#define kDefaultFrequency 110.0
#define kNumVoices 4
//-----------------------------------------------------------------
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
  float bourEight, bourFour, clarFour, fifTwo, melEight, mixOne, octFour, prinEight, truEight, truSixt, tweTwo, vioEight;
  ////////////////////
  // SYNTHESIS SECTION
  ////////////////////

  for (int q = 0; q < kNumVoices; q++){
      for(unsigned long n = 0; n < numFrames; n += kNumChannels){

    voice = sineWave->phase[q];

    bourEight = (sin(voice *  M_PI * 2.0f * 1.0f * 2.0f) * 0.0316f)+
                (sin(voice *  M_PI * 2.0f * 3.0f * 2.0f) * 0.00944f)+
                (sin(voice *  M_PI * 2.0f * 5.0f * 2.0f) * 0.00177f);
    //Bourdon Four
    bourFour =  (sin(voice *  M_PI * 2.0f * 1.0f * 4.0f) * 0.0316f)+
                (sin(voice *  M_PI * 2.0f * 3.0f * 4.0f) * 0.00944f)+
                (sin(voice *  M_PI * 2.0f * 5.0f * 4.0f) * 0.00177f);
    //Clarion Four
    clarFour = (0.5 *
                (sin(voice *  M_PI * 2.0f * 1.0f  * 4.0f ) * 0.0901f)+
                (sin(voice *  M_PI * 2.0f * 2.0f  * 4.0f ) * 0.108f)+
                (sin(voice *  M_PI * 2.0f * 3.0f  * 4.0f ) * 0.0609f)+
                (sin(voice *  M_PI * 2.0f * 4.0f  * 4.0f ) * 0.0319f)+
                (sin(voice *  M_PI * 2.0f * 5.0f  * 4.0f ) * 0.0184f)+
                (sin(voice *  M_PI * 2.0f * 6.0f  * 4.0f ) * 0.0393f)+
                (sin(voice *  M_PI * 2.0f * 7.0f  * 4.0f ) * 0.0350f)+
                (sin(voice *  M_PI * 2.0f * 8.0f  * 4.0f ) * 0.0555f)+
                (sin(voice *  M_PI * 2.0f * 9.0f  * 4.0f ) * 0.0331f)+
                (sin(voice *  M_PI * 2.0f * 10.0f * 4.0f ) * 0.0412f)+
                (sin(voice *  M_PI * 2.0f * 11.0f * 4.0f ) * 0.0263f)+
                (sin(voice *  M_PI * 2.0f * 12.0f * 4.0f ) * 0.0151f)+
                (sin(voice *  M_PI * 2.0f * 13.0f * 4.0f ) * 0.0123f)+
                (sin(voice *  M_PI * 2.0f * 15.0f * 4.0f ) * 0.00237f)+
                (sin(voice *  M_PI * 2.0f * 16.0f * 4.0f ) * 0.00139f));
      //Fifteenth two
      fifTwo = (0.5 *
               (sin(voice *  M_PI * 2.0f * 1.0f   * 8.0f ) * 0.116f)+
               (sin(voice *  M_PI * 2.0f * 2.0f   * 8.0f ) * 0.0223f)+
               (sin(voice *  M_PI * 2.0f * 3.0f   * 8.0f ) * 0.329f)+
               (sin(voice *  M_PI * 2.0f * 4.0f   * 8.0f ) * 0.00371f)+
               (sin(voice *  M_PI * 2.0f * 5.0f   * 8.0f ) * 0.000803f)+
               (sin(voice *  M_PI * 2.0f * 6.0f   * 8.0f ) * 0.000393f)+
               (sin(voice *  M_PI * 2.0f * 7.0f   * 8.0f ) * 0.00127f)+
               (sin(voice *  M_PI * 2.0f * 8.0f   * 8.0f ) * 0.00105f)+
               (sin(voice *  M_PI * 2.0f * 9.0f   * 8.0f ) * 0.000350f)+
               (sin(voice *  M_PI * 2.0f * 10.0f  * 8.0f ) * 0.000881f)+
               (sin(voice *  M_PI * 2.0f * 11.227 * 8.0f ) * 0.000489f)+
               (sin(voice *  M_PI * 2.0f * 12.0f  * 8.0f ) * 0.000323f));
      //melodia Eight
      melEight = (0.5 *
                 (sin(voice *  M_PI * 2.0f * 1.0f * 2.0f ) * 0.331f)+
                 (sin(voice *  M_PI * 2.0f * 2.0f * 2.0f ) * 0.0346f)+
                 (sin(voice *  M_PI * 2.0f * 3.0f * 2.0f ) * 0.0518f)+
                 (sin(voice *  M_PI * 2.0f * 4.0f * 2.0f ) * 0.00803f)+
                 (sin(voice *  M_PI * 2.0f * 5.0f * 2.0f ) * 0.0141f)+
                 (sin(voice *  M_PI * 2.0f * 6.0f * 2.0f ) * 0.00254f)+
                 (sin(voice *  M_PI * 2.0f * 7.0f * 2.0f ) * 0.00156f)+
                 (sin(voice *  M_PI * 2.0f * 8.0f * 2.0f ) * 0.00149f)+
                 (sin(voice *  M_PI * 2.0f * 10.0f * 2.0f) * 0.00102f));
      //Mixture 1 1/3
      mixOne = (0.5 *
               (sin(voice *  M_PI * 2.0f * 1.0f    * 16.0f ) * 0.0421f)+
               (sin(voice *  M_PI * 2.0f * 1.331f  * 16.0f ) * 0.0588f)+
               (sin(voice *  M_PI * 2.0f * 2.0f    * 16.0f ) * 0.0623f)+
               (sin(voice *  M_PI * 2.0f * 2.662f  * 16.0f ) * 0.0117f)+
               (sin(voice *  M_PI * 2.0f * 3.0f    * 16.0f ) * 0.00291f)+
               (sin(voice *  M_PI * 2.0f * 4.0f    * 16.0f ) * 0.00436f)+
               (sin(voice *  M_PI * 2.0f * 5.0f    * 16.0f ) * 0.000588f)+
               (sin(voice *  M_PI * 2.0f * 5.325f  * 16.0f ) * 0.00467f)+
               (sin(voice *  M_PI * 2.0f * 6.0f    * 16.0f ) * 0.00184f)+
               (sin(voice *  M_PI * 2.0f * 6.657f  * 16.0f ) * 0.000582f)+
               (sin(voice *  M_PI * 2.0f * 7.0f    * 16.0f ) * 0.000158f)+
               (sin(voice *  M_PI * 2.0f * 8.0f    * 16.0f ) * 0.00358f)+
               (sin(voice *  M_PI * 2.0f * 9.0f    * 16.0f ) * 0.000239f)+
               (sin(voice *  M_PI * 2.0f * 10.0f   * 16.0f ) * 0.000616f)+
               (sin(voice *  M_PI * 2.0f * 10.651f * 16.0f ) * 0.00142f)+
               (sin(voice *  M_PI * 2.0f * 12.0f   * 16.0f ) * 0.000543f)+
               (sin(voice *  M_PI * 2.0f * 13.314  * 16.0f ) * 0.000518f)+
               (sin(voice *  M_PI * 2.0f * 14.0f   * 16.0f ) * 0.000327f)+
               (sin(voice *  M_PI * 2.0f * 14.645f * 16.0f ) * 0.000211f)+
               (sin(voice *  M_PI * 2.0f * 16.256f * 16.0f ) * 0.000803f)+
               (sin(voice *  M_PI * 2.0f * 18.0f   * 16.0f ) * 0.000254f)+
               (sin(voice *  M_PI * 2.0f * 18.641f * 16.0f ) * 0.000147f)+
               (sin(voice *  M_PI * 2.0f * 21.304f * 16.0f ) * 0.000285f)+
               (sin(voice *  M_PI * 2.0f * 23.967f * 16.0f ) * 0.000114f));
      //Octave Four
      octFour = (0.5 *
                (sin(voice *  M_PI * 2.0f * 1.0f    * 4.0f )  * 0.221f)+
                (sin(voice *  M_PI * 2.0f * 2.0f    * 4.0f )  * 0.0749f)+
                (sin(voice *  M_PI * 2.0f * 3.0f    * 4.0f )  * 0.0165f)+
                (sin(voice *  M_PI * 2.0f * 4.0f    * 4.0f )  * 0.0113f)+
                (sin(voice *  M_PI * 2.0f * 5.0f    * 4.0f )  * 0.00254f)+
                (sin(voice *  M_PI * 2.0f * 6.0f    * 4.0f )  * 0.00316f)+
                (sin(voice *  M_PI * 2.0f * 7.0f    * 4.0f )  * 0.000653f)+
                (sin(voice *  M_PI * 2.0f * 8.0f    * 4.0f )  * 0.000350f)+
                (sin(voice *  M_PI * 2.0f * 9.0f    * 4.0f )  * 0.000478f)+
                (sin(voice *  M_PI * 2.0f * 10.0f   * 4.0f )  * 0.000668f)+
                (sin(voice *  M_PI * 2.0f * 11.0f   * 4.0f )  * 0.000741f)+
                (sin(voice *  M_PI * 2.0f * 12.0f   * 4.0f )  * 0.000575f)+
                (sin(voice *  M_PI * 2.0f * 13.0f   * 4.0f )  * 0.000412f)+
                (sin(voice *  M_PI * 2.0f * 14.0f   * 4.0f )  * 0.000371f)+
                (sin(voice *  M_PI * 2.0f * 15.0f   * 4.0f )  * 0.000295f)+
                (sin(voice *  M_PI * 2.0f * 16.281f * 4.0f )  * 0.000237f));
      //Principle Eight
      prinEight = (0.5 *
                  (sin(voice *  M_PI * 2.0f * 1.0f  * 2.0f ) * 0.167f)+
                  (sin(voice *  M_PI * 2.0f * 2.0f  * 2.0f ) * 0.0785f)+
                  (sin(voice *  M_PI * 2.0f * 3.0f  * 2.0f ) * 0.0251f)+
                  (sin(voice *  M_PI * 2.0f * 4.0f  * 2.0f ) * 0.0384f)+
                  (sin(voice *  M_PI * 2.0f * 5.0f  * 2.0f ) * 0.00543f)+
                  (sin(voice *  M_PI * 2.0f * 6.0f  * 2.0f ) * 0.00912f)+
                  (sin(voice *  M_PI * 2.0f * 7.0f  * 2.0f ) * 0.00301f)+
                  (sin(voice *  M_PI * 2.0f * 8.0f  * 2.0f ) * 0.00171f)+
                  (sin(voice *  M_PI * 2.0f * 9.0f  * 2.0f ) * 0.00146f)+
                  (sin(voice *  M_PI * 2.0f * 10.0f * 2.0f ) * 0.00136f)+
                  (sin(voice *  M_PI * 2.0f * 11.0f * 2.0f ) * 0.00109f)+
                  (sin(voice *  M_PI * 2.0f * 18.0f * 2.0f ) * 0.00108f));
      //trumpet 8
      truEight = (0.5 *
                 (sin(voice *  M_PI * 2.0f * 1.0f  * 2.0f ) * 0.0346f)+
                 (sin(voice *  M_PI * 2.0f * 2.0f  * 2.0f ) * 0.0371f)+
                 (sin(voice *  M_PI * 2.0f * 3.0f  * 2.0f ) * 0.00794f)+
                 (sin(voice *  M_PI * 2.0f * 4.0f  * 2.0f ) * 0.0582f)+
                 (sin(voice *  M_PI * 2.0f * 5.0f  * 2.0f ) * 0.01f)+
                 (sin(voice *  M_PI * 2.0f * 6.0f  * 2.0f ) * 0.0291f)+
                 (sin(voice *  M_PI * 2.0f * 7.0f  * 2.0f ) * 0.0254f)+
                 (sin(voice *  M_PI * 2.0f * 8.0f  * 2.0f ) * 0.0199f)+
                 (sin(voice *  M_PI * 2.0f * 9.0f  * 2.0f ) * 0.0144f)+
                 (sin(voice *  M_PI * 2.0f * 10.0f * 2.0f ) * 0.0142f)+
                 (sin(voice *  M_PI * 2.0f * 11.0f * 2.0f ) * 0.0103f)+
                 (sin(voice *  M_PI * 2.0f * 12.0f * 2.0f ) * 0.00623f)+
                 (sin(voice *  M_PI * 2.0f * 13.0f * 2.0f ) * 0.0234f)+
                 (sin(voice *  M_PI * 2.0f * 14.0f * 2.0f ) * 0.0127f)+
                 (sin(voice *  M_PI * 2.0f * 15.0f * 2.0f ) * 0.0113f)+
                 (sin(voice *  M_PI * 2.0f * 16.0f * 2.0f ) * 0.00312f)+
                 (sin(voice *  M_PI * 2.0f * 17.0f * 2.0f ) * 0.00136f)+
                 (sin(voice *  M_PI * 2.0f * 18.0f * 2.0f ) * 0.00269f)+
                 (sin(voice *  M_PI * 2.0f * 19.0f * 2.0f ) * 0.00231f)+
                 (sin(voice *  M_PI * 2.0f * 20.0f * 2.0f ) * 0.00121f)+
                 (sin(voice *  M_PI * 2.0f * 21.0f * 2.0f ) * 0.000363f)
                 );
                 //trumpet 16
      truSixt =  (0.5 *
                 (sin(voice *  M_PI * 2.0f * (1.0f)  ) * 0.0346f)+
                 (sin(voice *  M_PI * 2.0f * (2.0f)  ) * 0.0371f)+
                 (sin(voice *  M_PI * 2.0f * (3.0f)  ) * 0.00794f)+
                 (sin(voice *  M_PI * 2.0f * (4.0f)  ) * 0.0582f)+
                 (sin(voice *  M_PI * 2.0f * (5.0f)  ) * 0.01f)+
                 (sin(voice *  M_PI * 2.0f * (6.0f)  ) * 0.0291f)+
                 (sin(voice *  M_PI * 2.0f * (7.0f)  ) * 0.0254f)+
                 (sin(voice *  M_PI * 2.0f * (8.0f)  ) * 0.0199f)+
                 (sin(voice *  M_PI * 2.0f * (9.0f)  ) * 0.0144f)+
                 (sin(voice *  M_PI * 2.0f * (10.0f) ) * 0.0142f)+
                 (sin(voice *  M_PI * 2.0f * (11.0f) ) * 0.0103f)+
                 (sin(voice *  M_PI * 2.0f * (12.0f) ) * 0.00623f)+
                 (sin(voice *  M_PI * 2.0f * (13.0f) ) * 0.0234f)+
                 (sin(voice *  M_PI * 2.0f * (14.0f) ) * 0.0127f)+
                 (sin(voice *  M_PI * 2.0f * (15.0f) ) * 0.0113f)+
                 (sin(voice *  M_PI * 2.0f * (16.0f) ) * 0.00312f)+
                 (sin(voice *  M_PI * 2.0f * (17.0f) ) * 0.00136f)+
                 (sin(voice *  M_PI * 2.0f * (18.0f) ) * 0.00269f)+
                 (sin(voice *  M_PI * 2.0f * (19.0f) ) * 0.00231f)+
                 (sin(voice *  M_PI * 2.0f * (20.0f) ) * 0.00121f)+
                 (sin(voice *  M_PI * 2.0f * (21.0f) ) * 0.000363f)
                 );

      //Twelfth 2 2/3
      tweTwo = (0.5 *
               (sin(voice *  M_PI * 2.0f * 1.0f   ) * 0.0822f)+
               (sin(voice *  M_PI * 2.0f * 2.0f   ) * 0.0749f)+
               (sin(voice *  M_PI * 2.0f * 3.0f   ) * 0.00841f)+
               (sin(voice *  M_PI * 2.0f * 4.0f   ) * 0.00234f)+
               (sin(voice *  M_PI * 2.0f * 5.0f   ) * 0.00139f)+
               (sin(voice *  M_PI * 2.0f * 6.0f   ) * 0.000831f)+
               (sin(voice *  M_PI * 2.0f * 7.0f   ) * 0.00147f)+
               (sin(voice *  M_PI * 2.0f * 8.0f   ) * 0.00190f)+
               (sin(voice *  M_PI * 2.0f * 9.0f   ) * 0.00116f)+
               (sin(voice *  M_PI * 2.0f * 10.0f  ) * 0.000530f)+
               (sin(voice *  M_PI * 2.0f * 11.0f  ) * 0.00146f)+
               (sin(voice *  M_PI * 2.0f * 12.0f  ) * 0.000363f)+
               (sin(voice *  M_PI * 2.0f * 13.0f  ) * 0.000305f)
               );
      //Violone Eight
      vioEight = (0.5 *
                 (sin(voice *  M_PI * 2.0f * 1.0f     ) * 0.197f)+
                 (sin(voice *  M_PI * 2.0f * 2.0f     ) * 0.141f)+
                 (sin(voice *  M_PI * 2.0f * 3.0f     ) * 0.113f)+
                 (sin(voice *  M_PI * 2.0f * 4.385f   ) * 0.131f)+
                 (sin(voice *  M_PI * 2.0f * 5.370f   ) * 0.105f)+
                 (sin(voice *  M_PI * 2.0f * 6.347f   ) * 0.162f)+
                 (sin(voice *  M_PI * 2.0f * 7.327f   ) * 0.118f)+
                 (sin(voice *  M_PI * 2.0f * 8.308f   ) * 0.0524f)+
                 (sin(voice *  M_PI * 2.0f * 9.288f   ) * 0.0389f)+
                 (sin(voice *  M_PI * 2.0f * 10.736f  ) * 0.0426f)+
                 (sin(voice *  M_PI * 2.0f * 12.0f    ) * 0.0199f)
                );

    theta =  bourEight +
             bourFour  +
             clarFour  +
             fifTwo    +
             melEight  +
             mixOne    +
             octFour   +
             prinEight +
             truEight  +
             truSixt   +
             tweTwo    +
             vioEight;

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

  if(Pm_Poll(sineWave->inputStream)){
    Pm_Read(sineWave->inputStream, &sineWave->event, kMaxMIDIEvents);

      if(Pm_MessageStatus(sineWave->event.message) == 0x90){
        int on = Pm_MessageData1(sineWave->event.message);
        //printf("ON: %i ", on);
        //prevents overwriting of an active voice
        if(bag[v][0] != 0){
          v++;
        }
        //2. get and store Note|Velocity pairs
        bag[v][0] = Pm_MessageData1(sineWave->event.message);//note = pitch
        bag[v][1] = Pm_MessageData2(sineWave->event.message); //velocity on
        //Send Info to Instrument
        sineWave->frequency[v] = (440.0f * pow(2, (bag[v][0]- 69)/12.0f)) / kSamplingRate;//MTOF
        sineWave->amplitude[v] = bag[v][1] / 127.0f;//Velocity2Amplitude

        //Loop Around when voices is at max
        if(v >= (kNumVoices-1)){
          v = 0;
      } else {
        v++;  //INCREMENT VOICE NUMBER
      }
      //increment to new slot

    } else if (Pm_MessageStatus(sineWave->event.message) == 0x80){

      int off = Pm_MessageData1(sineWave->event.message);

      //printf("off: %i \n", off);

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
  /*  printf("MIDI:");
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
    printf("\n");*/
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
