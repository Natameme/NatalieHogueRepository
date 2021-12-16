//ST MAXIMILIAN'S ORGAN
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
//clang StmaximiliansOrganMKII.c -o StmaximiliansOrganMKII -lportaudio -lportmidi

//Run with:
//./StmaximiliansOrganMKII

//or do both operations together
//clang StmaximiliansOrganMKII.c -o StmaximiliansOrganMKII -lportaudio -lportmidi && ./StmaximiliansOrganMKII

//------------------------------------------------------------------------------------
//Constants
#define kAudioInputDeviceIndex 0  //Built-in input
#define kAudioOutputDeviceIndex 0 //Built-in output
#define kNumFramesPerBuffer 256
#define kSamplingRate 44100.0     //Sample Rate
#define kNumChannels 2            //Number of Audio Channels
#define kMIDIInputDeviceID 0      //MIDI input index
#define kMaxMIDIEvents 1          //MIDI output index
#define kDefaultFrequency 110.0   //defines center frequency
#define kNumVoices 16             //number of voices
#define EDO 12.0f                 //Notes Per Octave
//-------------------------------------------------------------------
//PER STOP ARRAY DEFINITIONS
//for use in process() and loadStops()
float bourEight[512], //bourdon 8
      bourFour[512],  //bourdon 4
      clarFour[512],  //clarion 4
      fifTwo[512],    //fifteenth 2
      melEight[512],  //melodia 8
      mixOne[512],    //mixture 1
      octFour[512],   //octave 4
      prinEight[512], //principle 8
      truEight[512],  //trumpet 8
      truSixt[512],   //trumpet 16
      tweTwo[512],    //twelfth 2 2/3
      vioEight[512],  //violone 8
      test[512];      //test oscillator for debugging

//NOTE Spreadsheets containing stop data can be found in Final/deprecated/stops
//single cycle .wav files can additionally be found in Final/deprecated/waves
//-----------------------------------------------------------------
//SINEWAVE STRUCTURE
//Array value allows per-voice control of each parameter
typedef struct SineWave {
  float frequency[kNumVoices];
  float phase[kNumVoices];
  float amplitude[kNumVoices];
  PmEvent event;
  PortMidiStream *inputStream;
} SineWave;

//------------------------------------------------------------------
//Function prototypes

//PortAudio Handling
int initPortAudio();
int closePortAudio();
void printPaDevices();

//PortMIDI Handling
int initPortMidi();
int closePortMidi();
void printPmDevices();

//Synthesis Engine
void process(float *buffer, unsigned long numFrames, void *userData);
void loadStops();

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

  //PORT AUDIO HANDLING
  PaStream *pStream; //For port audio streaming
  PaStreamParameters inputParameters;
  PaStreamParameters outputParameters;

  //SET UP SYNTHESIZER
  SineWave sineWave;

  for(int k = 0; k<=kNumVoices; k++){ //operation per voice
  sineWave.frequency[k] = kDefaultFrequency / kSamplingRate;
  sineWave.phase[k] = 0.0f;
  sineWave.amplitude[k] = 0.0f;
}

  //Initialize port audio and midi
  if(initPortAudio()) return 1;
  if(initPortMidi()) return 1;

  //Print available audio and midi devices
  printf("/////////////////\n");
  printf("// \n");
  printf("// AUDIO DEVICES\n");
  printf("// \n");
  printf("/////////////////\n");
  printf("--------------------------------------------\n");
  printPaDevices();
  printf("MIDI DEVICES\n");
  printPmDevices();

  //Print Title Card
  printf("////////////////////////////////////////");
  printf("\n//\n//\n// St Maximilian's Organ ");
  printf("\n// 2021 Developed by Natalie Hogue ");
  printf("\n// In Loving memory of Charlie McKenzie \n//\n//\n");
  printf("//////////////////////////////////////// \n\n");


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
    printf(" Audio Stream Initialized! Hit Some Keys! \n Change Volume Per-Stop with CCs 12~23 or Output Volume with CC 7 \n Press Enter Key to Exit\n");
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
//val and vol arrays for CC control, declared outside of process() to avoid reinitialization


void process(float *buffer, unsigned long numFrames, void *userData){
  SineWave *sineWave = (SineWave *) userData;
  float theta = 0, sine = 0, voice = 0; // theta: angular velocity; sine: sample value; voice: phase per voice;
  static int   val[128]; //array of MIDI CC values
  static float vol[128]; //mirrors val with float values between 0 and 1

  //volume initialization
  static int init = 0;//init creates a condition where vol values initialize once, and no more
  if(init == 0){
    //main volume initialization
    vol[7]  = 1.0f;
    //per stop volume initialization
    vol[12] = 1.0f;
    vol[13] = 1.0f;
    vol[14] = 1.0f;
    vol[15] = 1.0f;
    vol[16] = 1.0f;
    vol[17] = 1.0f;
    vol[18] = 1.0f;
    vol[19] = 1.0f;
    vol[20] = 1.0f;
    vol[21] = 1.0f;
    vol[22] = 1.0f;
    vol[23] = 1.0f;
    init++;
  }

  //load stops
  loadStops();

  ////////////////////
  // SYNTHESIS SECTION
  ////////////////////

  for (int q = 0; q < kNumVoices; q++){
      for(unsigned long n = 0; n < numFrames; n += kNumChannels){

    //convert sineWave->phase[q] into an integer to drive arrays
    voice = sineWave->phase[q] * (512); //voice tracks phase per voice
    int dex = voice; //dex drives arrays
    //printf("%f, %i\n", voice, dex);//debugging

    //STOP TRANSLATION FROM ARRAY TO SAMPLE VALUE
    float bEight = bourEight[dex] * (vol[7]) * (vol[12]);
    float bFour  = bourFour[dex]  * (vol[7]) * (vol[13]);
    float cFour  = clarFour[dex]  * (vol[7]) * (vol[14]);
    float fTwo   = fifTwo[dex]    * (vol[7]) * (vol[15]);
    float mEight = melEight[dex]  * (vol[7]) * (vol[16]);
    float mOne   = mixOne[dex]    * (vol[7]) * (vol[17]);
    float oFour  = octFour[dex]   * (vol[7]) * (vol[18]);
    float pEight = prinEight[dex] * (vol[7]) * (vol[19]);
    float tEight = truEight[dex]  * (vol[7]) * (vol[20]);
    float tSixt  = truSixt[dex]   * (vol[7]) * (vol[21]);
    float tTwo   = tweTwo[dex]    * (vol[7]) * (vol[22]);
    float vEight = vioEight[dex]  * (vol[7]) * (vol[23]);

    float te     = test[dex] * vol[7];

    //add stops together
    theta =  bEight +
             bFour +
             cFour +
             fTwo +
             mEight +
             mOne +
             oFour +
             pEight +
             tEight +
             tSixt +
             tTwo +
             vEight;

    //test oscillator
    //theta = te;

    // sine = value per sample
    sine = theta;

    //add voices together
    for(int c = 0; c < kNumChannels; c++){
      buffer[n + c] += pow(sineWave->amplitude[q], 0.25) * sine;
    }

    //set phase to equal frequency per voice
    sineWave->phase[q] += sineWave->frequency[q];

    //prevent any value of phase from being >1
    if(sineWave->phase[q] >= 1.0f){
      sineWave->phase[q] -= 1.0f;
    }
  }
}


  ////////////////
  // MIDI MESSAGES
  ////////////////
  static int v = 0;//round-robin index
  static int bag[kNumVoices][2];//array for round-robin

  //MIDI INPUT STREAM
  if(Pm_Poll(sineWave->inputStream)){
    Pm_Read(sineWave->inputStream, &sineWave->event, kMaxMIDIEvents);

    //CONTROL CHANGE
    if(Pm_MessageStatus(sineWave->event.message) == 0xB0){


        int knob  = Pm_MessageData1(sineWave->event.message); // keeps track of control knob (data byte 1)
        val[knob] = Pm_MessageData2(sineWave->event.message); // array keeps track of value per knob
        vol[knob] = val[knob]/127.0f;

      // printf("knob: %i vol: %f \n", knob, vol[knob]);

      // printf("cc: %i, val: %i\n", knob, val[knob]);//debugging

    }
    //NOTE ON/OFF
      if(Pm_MessageStatus(sineWave->event.message) == 0x90){ //note on

        int on = Pm_MessageData1(sineWave->event.message);

        //printf("ON: %i ", on);//debugging

        //prevents overwriting of an active voice
        if(bag[v][0] != 0){
          v++;
        }
        //2. get and store Note|Velocity pairs
        bag[v][0] = Pm_MessageData1(sineWave->event.message);//note = pitch
        bag[v][1] = Pm_MessageData2(sineWave->event.message); //velocity on
        //Send Info to Instrument
        sineWave->frequency[v] = (440.0f * pow(2, (bag[v][0]- 69)/EDO)) / kSamplingRate;//Midi to Freq
        sineWave->amplitude[v] = bag[v][1] / 127.0f;//Velocity2Amplitude

        //Loop Around when voices is at max
        if(v >= (kNumVoices-1)){
          v = 0;
      } else {
        v++;  //INCREMENT VOICE NUMBER
      }
      //increment to new slot

    } else if (Pm_MessageStatus(sineWave->event.message) == 0x80){ //note off
      int off = Pm_MessageData1(sineWave->event.message);

      //printf("off: %i \n", off);//debugging

      for(int i = 0; i < kNumVoices; i++){

          //printf("index : %i\n", i);//debugging

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

    ////////////////
    //MIDI DEBUGGING
    ////////////////
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

  }//end of input stream
}//end of function
//------------------------------------------------------------------------------------
void loadStops(){
  //STOP DEFINITIONS FOR USE IN loadStops()

  for(int i = 0; i <= 512; i++){
    float dex = i; //convert i to floating point
    float phasor = (dex/(512/2)) - 1.0f; //convert floating poin index to value 0 ~ 1

    //////////////////
    //STOP DEFINITIONS
    //////////////////
                bourEight[i] = (sin(phasor *  M_PI * 2.0f * 1.0f * 2.0f) * 0.0316f)+
                               (sin(phasor *  M_PI * 2.0f * 3.0f * 2.0f) * 0.00944f)+
                               (sin(phasor *  M_PI * 2.0f * 5.0f * 2.0f) * 0.00177f);

                   //Bourdon Four
                bourFour[i] =  (sin(phasor *  M_PI * 2.0f * 1.0f * 4.0f) * 0.0316f)+
                               (sin(phasor *  M_PI * 2.0f * 3.0f * 4.0f) * 0.00944f)+
                               (sin(phasor *  M_PI * 2.0f * 5.0f * 4.0f) * 0.00177f);
                   //Clarion Four
                clarFour[i] =  (sin(phasor *  M_PI * 2.0f * 1.0f  * 4.0f ) * 0.0901f)+
                               (sin(phasor *  M_PI * 2.0f * 2.0f  * 4.0f ) * 0.108f)+
                               (sin(phasor *  M_PI * 2.0f * 3.0f  * 4.0f ) * 0.0609f)+
                               (sin(phasor *  M_PI * 2.0f * 4.0f  * 4.0f ) * 0.0319f)+
                               (sin(phasor *  M_PI * 2.0f * 5.0f  * 4.0f ) * 0.0184f)+
                               (sin(phasor *  M_PI * 2.0f * 6.0f  * 4.0f ) * 0.0393f)+
                               (sin(phasor *  M_PI * 2.0f * 7.0f  * 4.0f ) * 0.0350f)+
                               (sin(phasor *  M_PI * 2.0f * 8.0f  * 4.0f ) * 0.0555f)+
                               (sin(phasor *  M_PI * 2.0f * 9.0f  * 4.0f ) * 0.0331f)+
                               (sin(phasor *  M_PI * 2.0f * 10.0f * 4.0f ) * 0.0412f)+
                               (sin(phasor *  M_PI * 2.0f * 11.0f * 4.0f ) * 0.0263f)+
                               (sin(phasor *  M_PI * 2.0f * 12.0f * 4.0f ) * 0.0151f)+
                               (sin(phasor *  M_PI * 2.0f * 13.0f * 4.0f ) * 0.0123f)+
                               (sin(phasor *  M_PI * 2.0f * 15.0f * 4.0f ) * 0.00237f)+
                               (sin(phasor *  M_PI * 2.0f * 16.0f * 4.0f ) * 0.00139f);
                     //Fifteenth two
                  fifTwo[i] = (sin(phasor *  M_PI * 2.0f * 1.0f   * 8.0f ) * 0.116f)+
                              (sin(phasor *  M_PI * 2.0f * 2.0f   * 8.0f ) * 0.0223f)+
                              (sin(phasor *  M_PI * 2.0f * 3.0f   * 8.0f ) * 0.329f)+
                              (sin(phasor *  M_PI * 2.0f * 4.0f   * 8.0f ) * 0.00371f)+
                              (sin(phasor *  M_PI * 2.0f * 5.0f   * 8.0f ) * 0.000803f)+
                              (sin(phasor *  M_PI * 2.0f * 6.0f   * 8.0f ) * 0.000393f)+
                              (sin(phasor *  M_PI * 2.0f * 7.0f   * 8.0f ) * 0.00127f)+
                              (sin(phasor *  M_PI * 2.0f * 8.0f   * 8.0f ) * 0.00105f)+
                              (sin(phasor *  M_PI * 2.0f * 9.0f   * 8.0f ) * 0.000350f)+
                              (sin(phasor *  M_PI * 2.0f * 10.0f  * 8.0f ) * 0.000881f)+
                              (sin(phasor *  M_PI * 2.0f * 11.227 * 8.0f ) * 0.000489f)+
                              (sin(phasor *  M_PI * 2.0f * 12.0f  * 8.0f ) * 0.000323f);
                     //melodia Eight
                  melEight[i] = (sin(phasor *  M_PI * 2.0f * 1.0f * 2.0f ) * 0.331f)+
                                (sin(phasor *  M_PI * 2.0f * 2.0f * 2.0f ) * 0.0346f)+
                                (sin(phasor *  M_PI * 2.0f * 3.0f * 2.0f ) * 0.0518f)+
                                (sin(phasor *  M_PI * 2.0f * 4.0f * 2.0f ) * 0.00803f)+
                                (sin(phasor *  M_PI * 2.0f * 5.0f * 2.0f ) * 0.0141f)+
                                (sin(phasor *  M_PI * 2.0f * 6.0f * 2.0f ) * 0.00254f)+
                                (sin(phasor *  M_PI * 2.0f * 7.0f * 2.0f ) * 0.00156f)+
                                (sin(phasor *  M_PI * 2.0f * 8.0f * 2.0f ) * 0.00149f)+
                                (sin(phasor *  M_PI * 2.0f * 10.0f * 2.0f) * 0.00102f);
                     //Mixture 1 1/3
                  mixOne[i] = (sin(phasor *  M_PI * 2.0f * 1.0f    * 16.0f ) * 0.0421f)+
                              (sin(phasor *  M_PI * 2.0f * 1.331f  * 16.0f ) * 0.0588f)+
                              (sin(phasor *  M_PI * 2.0f * 2.0f    * 16.0f ) * 0.0623f)+
                              (sin(phasor *  M_PI * 2.0f * 2.662f  * 16.0f ) * 0.0117f)+
                              (sin(phasor *  M_PI * 2.0f * 3.0f    * 16.0f ) * 0.00291f)+
                              (sin(phasor *  M_PI * 2.0f * 4.0f    * 16.0f ) * 0.00436f)+
                              (sin(phasor *  M_PI * 2.0f * 5.0f    * 16.0f ) * 0.000588f)+
                              (sin(phasor *  M_PI * 2.0f * 5.325f  * 16.0f ) * 0.00467f)+
                              (sin(phasor *  M_PI * 2.0f * 6.0f    * 16.0f ) * 0.00184f)+
                              (sin(phasor *  M_PI * 2.0f * 6.657f  * 16.0f ) * 0.000582f)+
                              (sin(phasor *  M_PI * 2.0f * 7.0f    * 16.0f ) * 0.000158f)+
                              (sin(phasor *  M_PI * 2.0f * 8.0f    * 16.0f ) * 0.00358f)+
                              (sin(phasor *  M_PI * 2.0f * 9.0f    * 16.0f ) * 0.000239f)+
                              (sin(phasor *  M_PI * 2.0f * 10.0f   * 16.0f ) * 0.000616f)+
                              (sin(phasor *  M_PI * 2.0f * 10.651f * 16.0f ) * 0.00142f)+
                              (sin(phasor *  M_PI * 2.0f * 12.0f   * 16.0f ) * 0.000543f)+
                              (sin(phasor *  M_PI * 2.0f * 13.314  * 16.0f ) * 0.000518f)+
                              (sin(phasor *  M_PI * 2.0f * 14.0f   * 16.0f ) * 0.000327f)+
                              (sin(phasor *  M_PI * 2.0f * 14.645f * 16.0f ) * 0.000211f)+
                              (sin(phasor *  M_PI * 2.0f * 16.256f * 16.0f ) * 0.000803f)+
                              (sin(phasor *  M_PI * 2.0f * 18.0f   * 16.0f ) * 0.000254f)+
                              (sin(phasor *  M_PI * 2.0f * 18.641f * 16.0f ) * 0.000147f)+
                              (sin(phasor *  M_PI * 2.0f * 21.304f * 16.0f ) * 0.000285f)+
                              (sin(phasor *  M_PI * 2.0f * 23.967f * 16.0f ) * 0.000114f);
                     //Octave Four
                  octFour[i] = (sin(phasor *  M_PI * 2.0f * 1.0f    * 4.0f )  * 0.221f)+
                               (sin(phasor *  M_PI * 2.0f * 2.0f    * 4.0f )  * 0.0749f)+
                               (sin(phasor *  M_PI * 2.0f * 3.0f    * 4.0f )  * 0.0165f)+
                               (sin(phasor *  M_PI * 2.0f * 4.0f    * 4.0f )  * 0.0113f)+
                               (sin(phasor *  M_PI * 2.0f * 5.0f    * 4.0f )  * 0.00254f)+
                               (sin(phasor *  M_PI * 2.0f * 6.0f    * 4.0f )  * 0.00316f)+
                               (sin(phasor *  M_PI * 2.0f * 7.0f    * 4.0f )  * 0.000653f)+
                               (sin(phasor *  M_PI * 2.0f * 8.0f    * 4.0f )  * 0.000350f)+
                               (sin(phasor *  M_PI * 2.0f * 9.0f    * 4.0f )  * 0.000478f)+
                               (sin(phasor *  M_PI * 2.0f * 10.0f   * 4.0f )  * 0.000668f)+
                               (sin(phasor *  M_PI * 2.0f * 11.0f   * 4.0f )  * 0.000741f)+
                               (sin(phasor *  M_PI * 2.0f * 12.0f   * 4.0f )  * 0.000575f)+
                               (sin(phasor *  M_PI * 2.0f * 13.0f   * 4.0f )  * 0.000412f)+
                               (sin(phasor *  M_PI * 2.0f * 14.0f   * 4.0f )  * 0.000371f)+
                               (sin(phasor *  M_PI * 2.0f * 15.0f   * 4.0f )  * 0.000295f)+
                               (sin(phasor *  M_PI * 2.0f * 16.281f * 4.0f )  * 0.000237f);
                     //Principle Eight
                  prinEight[i] = (sin(phasor *  M_PI * 2.0f * 1.0f  * 2.0f ) * 0.167f)+
                                 (sin(phasor *  M_PI * 2.0f * 2.0f  * 2.0f ) * 0.0785f)+
                                 (sin(phasor *  M_PI * 2.0f * 3.0f  * 2.0f ) * 0.0251f)+
                                 (sin(phasor *  M_PI * 2.0f * 4.0f  * 2.0f ) * 0.0384f)+
                                 (sin(phasor *  M_PI * 2.0f * 5.0f  * 2.0f ) * 0.00543f)+
                                 (sin(phasor *  M_PI * 2.0f * 6.0f  * 2.0f ) * 0.00912f)+
                                 (sin(phasor *  M_PI * 2.0f * 7.0f  * 2.0f ) * 0.00301f)+
                                 (sin(phasor *  M_PI * 2.0f * 8.0f  * 2.0f ) * 0.00171f)+
                                 (sin(phasor *  M_PI * 2.0f * 9.0f  * 2.0f ) * 0.00146f)+
                                 (sin(phasor *  M_PI * 2.0f * 10.0f * 2.0f ) * 0.00136f)+
                                 (sin(phasor *  M_PI * 2.0f * 11.0f * 2.0f ) * 0.00109f)+
                                 (sin(phasor *  M_PI * 2.0f * 18.0f * 2.0f ) * 0.00108f);
                     //trumpet 8
                  truEight[i] = (sin(phasor *  M_PI * 2.0f * 1.0f  * 2.0f ) * 0.0346f)+
                                (sin(phasor *  M_PI * 2.0f * 2.0f  * 2.0f ) * 0.0371f)+
                                (sin(phasor *  M_PI * 2.0f * 3.0f  * 2.0f ) * 0.00794f)+
                                (sin(phasor *  M_PI * 2.0f * 4.0f  * 2.0f ) * 0.0582f)+
                                (sin(phasor *  M_PI * 2.0f * 5.0f  * 2.0f ) * 0.01f)+
                                (sin(phasor *  M_PI * 2.0f * 6.0f  * 2.0f ) * 0.0291f)+
                                (sin(phasor *  M_PI * 2.0f * 7.0f  * 2.0f ) * 0.0254f)+
                                (sin(phasor *  M_PI * 2.0f * 8.0f  * 2.0f ) * 0.0199f)+
                                (sin(phasor *  M_PI * 2.0f * 9.0f  * 2.0f ) * 0.0144f)+
                                (sin(phasor *  M_PI * 2.0f * 10.0f * 2.0f ) * 0.0142f)+
                                (sin(phasor *  M_PI * 2.0f * 11.0f * 2.0f ) * 0.0103f)+
                                (sin(phasor *  M_PI * 2.0f * 12.0f * 2.0f ) * 0.00623f)+
                                (sin(phasor *  M_PI * 2.0f * 13.0f * 2.0f ) * 0.0234f)+
                                (sin(phasor *  M_PI * 2.0f * 14.0f * 2.0f ) * 0.0127f)+
                                (sin(phasor *  M_PI * 2.0f * 15.0f * 2.0f ) * 0.0113f)+
                                (sin(phasor *  M_PI * 2.0f * 16.0f * 2.0f ) * 0.00312f)+
                                (sin(phasor *  M_PI * 2.0f * 17.0f * 2.0f ) * 0.00136f)+
                                (sin(phasor *  M_PI * 2.0f * 18.0f * 2.0f ) * 0.00269f)+
                                (sin(phasor *  M_PI * 2.0f * 19.0f * 2.0f ) * 0.00231f)+
                                (sin(phasor *  M_PI * 2.0f * 20.0f * 2.0f ) * 0.00121f)+
                                (sin(phasor *  M_PI * 2.0f * 21.0f * 2.0f ) * 0.000363f);
                                //trumpet 16
                  truSixt[i] =  (sin(phasor *  M_PI * 2.0f * (1.0f)  ) * 0.0346f)+
                                (sin(phasor *  M_PI * 2.0f * (2.0f)  ) * 0.0371f)+
                                (sin(phasor *  M_PI * 2.0f * (3.0f)  ) * 0.00794f)+
                                (sin(phasor *  M_PI * 2.0f * (4.0f)  ) * 0.0582f)+
                                (sin(phasor *  M_PI * 2.0f * (5.0f)  ) * 0.01f)+
                                (sin(phasor *  M_PI * 2.0f * (6.0f)  ) * 0.0291f)+
                                (sin(phasor *  M_PI * 2.0f * (7.0f)  ) * 0.0254f)+
                                (sin(phasor *  M_PI * 2.0f * (8.0f)  ) * 0.0199f)+
                                (sin(phasor *  M_PI * 2.0f * (9.0f)  ) * 0.0144f)+
                                (sin(phasor *  M_PI * 2.0f * (10.0f) ) * 0.0142f)+
                                (sin(phasor *  M_PI * 2.0f * (11.0f) ) * 0.0103f)+
                                (sin(phasor *  M_PI * 2.0f * (12.0f) ) * 0.00623f)+
                                (sin(phasor *  M_PI * 2.0f * (13.0f) ) * 0.0234f)+
                                (sin(phasor *  M_PI * 2.0f * (14.0f) ) * 0.0127f)+
                                (sin(phasor *  M_PI * 2.0f * (15.0f) ) * 0.0113f)+
                                (sin(phasor *  M_PI * 2.0f * (16.0f) ) * 0.00312f)+
                                (sin(phasor *  M_PI * 2.0f * (17.0f) ) * 0.00136f)+
                                (sin(phasor *  M_PI * 2.0f * (18.0f) ) * 0.00269f)+
                                (sin(phasor *  M_PI * 2.0f * (19.0f) ) * 0.00231f)+
                                (sin(phasor *  M_PI * 2.0f * (20.0f) ) * 0.00121f)+
                                (sin(phasor *  M_PI * 2.0f * (21.0f) ) * 0.000363f);

                     //Twelfth 2 2/3
                  tweTwo[i] = (sin(phasor *  M_PI * 2.0f * 1.0f   ) * 0.0822f)+
                              (sin(phasor *  M_PI * 2.0f * 2.0f   ) * 0.0749f)+
                              (sin(phasor *  M_PI * 2.0f * 3.0f   ) * 0.00841f)+
                              (sin(phasor *  M_PI * 2.0f * 4.0f   ) * 0.00234f)+
                              (sin(phasor *  M_PI * 2.0f * 5.0f   ) * 0.00139f)+
                              (sin(phasor *  M_PI * 2.0f * 6.0f   ) * 0.000831f)+
                              (sin(phasor *  M_PI * 2.0f * 7.0f   ) * 0.00147f)+
                              (sin(phasor *  M_PI * 2.0f * 8.0f   ) * 0.00190f)+
                              (sin(phasor *  M_PI * 2.0f * 9.0f   ) * 0.00116f)+
                              (sin(phasor *  M_PI * 2.0f * 10.0f  ) * 0.000530f)+
                              (sin(phasor *  M_PI * 2.0f * 11.0f  ) * 0.00146f)+
                              (sin(phasor *  M_PI * 2.0f * 12.0f  ) * 0.000363f)+
                              (sin(phasor *  M_PI * 2.0f * 13.0f  ) * 0.000305f);
                     //Violone Eight
                  vioEight[i] = (sin(phasor *  M_PI * 2.0f * 1.0f     ) * 0.197f)+
                                (sin(phasor *  M_PI * 2.0f * 2.0f     ) * 0.141f)+
                                (sin(phasor *  M_PI * 2.0f * 3.0f     ) * 0.113f)+
                                (sin(phasor *  M_PI * 2.0f * 4.385f   ) * 0.131f)+
                                (sin(phasor *  M_PI * 2.0f * 5.370f   ) * 0.105f)+
                                (sin(phasor *  M_PI * 2.0f * 6.347f   ) * 0.162f)+
                                (sin(phasor *  M_PI * 2.0f * 7.327f   ) * 0.118f)+
                                (sin(phasor *  M_PI * 2.0f * 8.308f   ) * 0.0524f)+
                                (sin(phasor *  M_PI * 2.0f * 9.288f   ) * 0.0389f)+
                                (sin(phasor *  M_PI * 2.0f * 10.736f  ) * 0.0426f)+
                                (sin(phasor *  M_PI * 2.0f * 12.0f    ) * 0.0199f);

                test[i] = sin(phasor *  M_PI * 2.0f * 1.0f);

    //wave debug
    //printf("%f \n", bourEight[i]);
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
    printf("ID: %d, Name: %s, ", curDeviceID, pDeviceInfo->name);
    printf("API name: %s\n", pHostApiInfo->name);
    printf("Max output channels: %d\t", pDeviceInfo->maxOutputChannels);
    printf("Max input channels: %d\n", pDeviceInfo->maxInputChannels);
    printf("--------------------------------------------\n");
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
    printf("ID: %d, Name: %s, ",curDeviceID,pDeviceInfo->name);
    printf("MIDI API: %s\n",pDeviceInfo->interf);
    printf("Max MIDI outputs: %d\t",pDeviceInfo->output);
    printf("Max MIDI inputs: %d\n",pDeviceInfo->input);
    printf("--------------------------------------------\n");
  }
}
//------------------------------------------------------------------------------------
