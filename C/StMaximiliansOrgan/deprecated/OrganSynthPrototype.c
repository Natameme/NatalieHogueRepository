#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <memory.h>
#include <math.h>
#include <portaudio.h>
#include <portmidi.h>

//Compile with:
//clang OrganSynthPrototype.c -o OrganProto -lportaudio -lportmidi
//Run with:
//./OrganProto

//clang OrganSynthPrototype.c -o OrganProto -lportaudio -lportmidi && ./OrganProto

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
//------------------------------------------------------------------------------------
//Declare user data that holds SNDFILE and SF_INFO
//so that we can use them inside audio render callback
typedef struct SineWave {
  int harmonic;
  float frequency;
  float phase;
  float amplitude;
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
  sineWave.frequency = kDefaultFrequency / kSamplingRate;
  sineWave.phase = 0.0f;
  sineWave.amplitude = 0.0f;

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
  float bourEight, bourFour, clarFour, fifTwo, melEight, mixOne, octFour, prinEight, truEight, truSixt, tweTwo, vioEight;

  // Generate Sine Wave
  for(unsigned long n=0; n < numFrames; n+=kNumChannels){
    // per sine structure (sin(sineWave->phase * Pi * 2(tau) * harmonic * octave(16=1 8=2 4=4 2=8 1=16) ))
    //Bourdon Eight
    bourEight = (sin(sineWave->phase *  M_PI * 2.0f * 1.0f * 2.0f) * 0.0316f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 3.0f * 2.0f) * 0.00944f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 5.0f * 2.0f) * 0.00177f);
    //Bourdon Four
    bourFour =  (sin(sineWave->phase *  M_PI * 2.0f * 1.0f * 4.0f) * 0.0316f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 3.0f * 4.0f) * 0.00944f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 5.0f * 4.0f) * 0.00177f);
    //Clarion Four
    clarFour = (0.5 *
                (sin(sineWave->phase *  M_PI * 2.0f * 1.0f  * 4.0f ) * 0.0901f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 2.0f  * 4.0f ) * 0.108f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 3.0f  * 4.0f ) * 0.0609f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 4.0f  * 4.0f ) * 0.0319f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 5.0f  * 4.0f ) * 0.0184f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 6.0f  * 4.0f ) * 0.0393f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 7.0f  * 4.0f ) * 0.0350f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 8.0f  * 4.0f ) * 0.0555f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 9.0f  * 4.0f ) * 0.0331f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 10.0f * 4.0f ) * 0.0412f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 11.0f * 4.0f ) * 0.0263f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 12.0f * 4.0f ) * 0.0151f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 13.0f * 4.0f ) * 0.0123f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 15.0f * 4.0f ) * 0.00237f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 16.0f * 4.0f ) * 0.00139f));
      //Fifteenth two
      fifTwo = (0.5 *
               (sin(sineWave->phase *  M_PI * 2.0f * 1.0f   * 8.0f ) * 0.116f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 2.0f   * 8.0f ) * 0.0223f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 3.0f   * 8.0f ) * 0.329f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 4.0f   * 8.0f ) * 0.00371f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 5.0f   * 8.0f ) * 0.000803f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 6.0f   * 8.0f ) * 0.000393f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 7.0f   * 8.0f ) * 0.00127f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 8.0f   * 8.0f ) * 0.00105f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 9.0f   * 8.0f ) * 0.000350f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 10.0f  * 8.0f ) * 0.000881f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 11.227 * 8.0f ) * 0.000489f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 12.0f  * 8.0f ) * 0.000323f));
      //melodia Eight
      melEight = (0.5 *
                 (sin(sineWave->phase *  M_PI * 2.0f * 1.0f * 2.0f ) * 0.331f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 2.0f * 2.0f ) * 0.0346f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 3.0f * 2.0f ) * 0.0518f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 4.0f * 2.0f ) * 0.00803f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 5.0f * 2.0f ) * 0.0141f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 6.0f * 2.0f ) * 0.00254f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 7.0f * 2.0f ) * 0.00156f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 8.0f * 2.0f ) * 0.00149f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 10.0f * 2.0f) * 0.00102f));
      //Mixture 1 1/3
      mixOne = (0.5 *
               (sin(sineWave->phase *  M_PI * 2.0f * 1.0f    * 16.0f ) * 0.0421f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 1.331f  * 16.0f ) * 0.0588f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 2.0f    * 16.0f ) * 0.0623f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 2.662f  * 16.0f ) * 0.0117f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 3.0f    * 16.0f ) * 0.00291f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 4.0f    * 16.0f ) * 0.00436f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 5.0f    * 16.0f ) * 0.000588f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 5.325f  * 16.0f ) * 0.00467f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 6.0f    * 16.0f ) * 0.00184f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 6.657f  * 16.0f ) * 0.000582f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 7.0f    * 16.0f ) * 0.000158f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 8.0f    * 16.0f ) * 0.00358f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 9.0f    * 16.0f ) * 0.000239f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 10.0f   * 16.0f ) * 0.000616f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 10.651f * 16.0f ) * 0.00142f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 12.0f   * 16.0f ) * 0.000543f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 13.314  * 16.0f ) * 0.000518f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 14.0f   * 16.0f ) * 0.000327f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 14.645f * 16.0f ) * 0.000211f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 16.256f * 16.0f ) * 0.000803f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 18.0f   * 16.0f ) * 0.000254f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 18.641f * 16.0f ) * 0.000147f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 21.304f * 16.0f ) * 0.000285f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 23.967f * 16.0f ) * 0.000114f));
      //Octave Four
      octFour = (0.5 *
                (sin(sineWave->phase *  M_PI * 2.0f * 1.0f    * 4.0f )  * 0.221f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 2.0f    * 4.0f )  * 0.0749f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 3.0f    * 4.0f )  * 0.0165f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 4.0f    * 4.0f )  * 0.0113f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 5.0f    * 4.0f )  * 0.00254f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 6.0f    * 4.0f )  * 0.00316f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 7.0f    * 4.0f )  * 0.000653f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 8.0f    * 4.0f )  * 0.000350f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 9.0f    * 4.0f )  * 0.000478f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 10.0f   * 4.0f )  * 0.000668f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 11.0f   * 4.0f )  * 0.000741f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 12.0f   * 4.0f )  * 0.000575f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 13.0f   * 4.0f )  * 0.000412f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 14.0f   * 4.0f )  * 0.000371f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 15.0f   * 4.0f )  * 0.000295f)+
                (sin(sineWave->phase *  M_PI * 2.0f * 16.281f * 4.0f )  * 0.000237f));
      //Principle Eight
      prinEight = (0.5 *
                  (sin(sineWave->phase *  M_PI * 2.0f * 1.0f  * 2.0f ) * 0.167f)+
                  (sin(sineWave->phase *  M_PI * 2.0f * 2.0f  * 2.0f ) * 0.0785f)+
                  (sin(sineWave->phase *  M_PI * 2.0f * 3.0f  * 2.0f ) * 0.0251f)+
                  (sin(sineWave->phase *  M_PI * 2.0f * 4.0f  * 2.0f ) * 0.0384f)+
                  (sin(sineWave->phase *  M_PI * 2.0f * 5.0f  * 2.0f ) * 0.00543f)+
                  (sin(sineWave->phase *  M_PI * 2.0f * 6.0f  * 2.0f ) * 0.00912f)+
                  (sin(sineWave->phase *  M_PI * 2.0f * 7.0f  * 2.0f ) * 0.00301f)+
                  (sin(sineWave->phase *  M_PI * 2.0f * 8.0f  * 2.0f ) * 0.00171f)+
                  (sin(sineWave->phase *  M_PI * 2.0f * 9.0f  * 2.0f ) * 0.00146f)+
                  (sin(sineWave->phase *  M_PI * 2.0f * 10.0f * 2.0f ) * 0.00136f)+
                  (sin(sineWave->phase *  M_PI * 2.0f * 11.0f * 2.0f ) * 0.00109f)+
                  (sin(sineWave->phase *  M_PI * 2.0f * 18.0f * 2.0f ) * 0.00108f));
      //trumpet 8
      truEight = (0.5 *
                 (sin(sineWave->phase *  M_PI * 2.0f * 1.0f  * 2.0f ) * 0.0346f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 2.0f  * 2.0f ) * 0.0371f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 3.0f  * 2.0f ) * 0.00794f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 4.0f  * 2.0f ) * 0.0582f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 5.0f  * 2.0f ) * 0.01f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 6.0f  * 2.0f ) * 0.0291f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 7.0f  * 2.0f ) * 0.0254f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 8.0f  * 2.0f ) * 0.0199f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 9.0f  * 2.0f ) * 0.0144f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 10.0f * 2.0f ) * 0.0142f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 11.0f * 2.0f ) * 0.0103f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 12.0f * 2.0f ) * 0.00623f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 13.0f * 2.0f ) * 0.0234f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 14.0f * 2.0f ) * 0.0127f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 15.0f * 2.0f ) * 0.0113f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 16.0f * 2.0f ) * 0.00312f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 17.0f * 2.0f ) * 0.00136f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 18.0f * 2.0f ) * 0.00269f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 19.0f * 2.0f ) * 0.00231f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 20.0f * 2.0f ) * 0.00121f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 21.0f * 2.0f ) * 0.000363f)
                 );
                 //trumpet 16
      truSixt =  (0.5 *
                 (sin(sineWave->phase *  M_PI * 2.0f * (1.0f)  ) * 0.0346f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (2.0f)  ) * 0.0371f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (3.0f)  ) * 0.00794f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (4.0f)  ) * 0.0582f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (5.0f)  ) * 0.01f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (6.0f)  ) * 0.0291f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (7.0f)  ) * 0.0254f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (8.0f)  ) * 0.0199f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (9.0f)  ) * 0.0144f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (10.0f) ) * 0.0142f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (11.0f) ) * 0.0103f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (12.0f) ) * 0.00623f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (13.0f) ) * 0.0234f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (14.0f) ) * 0.0127f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (15.0f) ) * 0.0113f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (16.0f) ) * 0.00312f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (17.0f) ) * 0.00136f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (18.0f) ) * 0.00269f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (19.0f) ) * 0.00231f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (20.0f) ) * 0.00121f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * (21.0f) ) * 0.000363f)
                 );

      //Twelfth 2 2/3
      tweTwo = (0.5 *
               (sin(sineWave->phase *  M_PI * 2.0f * 1.0f   ) * 0.0822f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 2.0f   ) * 0.0749f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 3.0f   ) * 0.00841f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 4.0f   ) * 0.00234f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 5.0f   ) * 0.00139f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 6.0f   ) * 0.000831f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 7.0f   ) * 0.00147f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 8.0f   ) * 0.00190f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 9.0f   ) * 0.00116f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 10.0f  ) * 0.000530f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 11.0f  ) * 0.00146f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 12.0f  ) * 0.000363f)+
               (sin(sineWave->phase *  M_PI * 2.0f * 13.0f  ) * 0.000305f)
               );
      //Violone Eight
      vioEight = (0.5 *
                 (sin(sineWave->phase *  M_PI * 2.0f * 1.0f     ) * 0.197f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 2.0f     ) * 0.141f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 3.0f     ) * 0.113f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 4.385f   ) * 0.131f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 5.370f   ) * 0.105f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 6.347f   ) * 0.162f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 7.327f   ) * 0.118f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 8.308f   ) * 0.0524f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 9.288f   ) * 0.0389f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 10.736f  ) * 0.0426f)+
                 (sin(sineWave->phase *  M_PI * 2.0f * 12.0f    ) * 0.0199f)
                );

    float test = (sin(sineWave->phase * (2.0f * M_PI) ));


      /*
       bourEight
       bourFour
       clarFour
       fifTwo
       melEight
       mixOne
       octFour
       prinEight
       truEight
       truSixt
       tweTwo
       vioEight
       */
      theta = (bourEight +
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
               vioEight
             //test
           ) / 2.0f ;
      sine = theta;

        for(int c = 0; c < kNumChannels; c++){
          buffer[n + c] = sineWave->amplitude * sine;
      sineWave->phase += sineWave->frequency;
      if(sineWave->phase >= 1.0f){
        sineWave->phase -= 1.0f;
      }
   }


  }

  // Look for incoming MIDI Messages
  if(Pm_Poll(sineWave->inputStream)){
    Pm_Read(sineWave->inputStream, &sineWave->event, kMaxMIDIEvents);
    int bag[4][2] = {{0,0},{0,0},{0,0},{0,0}};
    // Look for Note on message
    /*printf("note on/off: %d \n", Pm_MessageStatus(sineWave->event.message));
    printf("pitch: %d \n", Pm_MessageData1(sineWave->event.message));
    printf("velocity: %d \n---\n", Pm_MessageData2(sineWave->event.message));
    */
    int v = 0;
      if(Pm_MessageStatus(sineWave->event.message) == 0x90){
      //voice 0
      bag[v][0] = Pm_MessageData1(sineWave->event.message);//note = pitch
      sineWave->frequency = (55.0f * pow(2, (bag[v][0]- 69)/12.0f)) / kSamplingRate;
      bag[v][1] = Pm_MessageData2(sineWave->event.message); //velocity on
      sineWave->amplitude = bag[v][1] / 127.0f;
      printf("v0 note: %i    \nv0 velocity: %i\n--------\n", bag[v][0], bag[v][1]);
      v++;
      if(v == 4){
        v = 0;
      }
    } else if (Pm_MessageStatus(sineWave->event.message) == 0x80){
      bag[v][1] = 0;
      sineWave->amplitude = bag[v][1];
      printf("v%i note: %i    \nv0 velocity: %i\n--------\n", v, bag[v][0], bag[v][1]);
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
