#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <math.h>
#include <ctype.h>

typedef struct harmonic {
float partial;
float amplitude;
} harmonic;

void saveMatrix(int *, int);
int getTableSize(void);

//STOP PROTOTYPES///
int bourdon();    //
int clarion();    //
int fifteenth();  //
int melodia();    //
int mixture();    //
int octave();     //
int principle();  //
int trumpet();    //
int twelfth();    //
int violone();    //
////////////////////

int main(){
//PER STOP PROTOTYPE
//open a .CSV files with harmonic information (int harmonic, float Amplitude)
// Keep a reference to a text file
// open a text file in the write mode
bourdon();


return 0;

//for loop generates an additive oscillator per stops

//MIDI/OSC input controls pitch of synth

}

//STOPS//
//Bourdon
int bourdon(){
  FILE* file = fopen("stops/Bourdon_8.csv", "r");
  struct harmonic bourdon[3];

  if(file == NULL){
    printf("\n404: file not found\n\n");
    return 2;
  }
  for (int j = 0; j < sizeof(bourdon)/sizeof(bourdon[0]); j++)
  {
      int got = fscanf(file, "%f,%f", &bourdon[j].partial, &bourdon[j].amplitude);
      if (got != 2) break; // wrong number of tokens - maybe end of file
  }

  fclose(file);

  for (int i = 0; i < sizeof(bourdon)/sizeof(bourdon[0]); i++)
  {
      printf("%f, %f \n", bourdon[i].partial, bourdon[i].amplitude);
  }
  return -1;
}



/*
int getTableSize(){
  FILE *file;
  file = fopen("%s, r", fileName);

  if(file == NULL){
    printf("matrix.txt could not be opened...\n");
  }

  int value, count = 0;
  while(fscanf(file, "%d", &value) != EOF) count++;

  fclose(file);

  return sqrt(count);
  return 0;
}
*/
