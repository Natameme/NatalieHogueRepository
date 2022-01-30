#include <stdio.h>
#include <stdlib.h>
#include <math.h>


//compile and run with    clang ToneLattice.c -o ToneLattice && ./ToneLattice
int main(){

//variables
int rowSize = 16;
int conSize = rowSize * rowSize;

int conArr[rowSize][rowSize];
int toneLatt[rowSize][rowSize];

int octaves = 1;
int range = octaves * 12;
int midiRoot = 69;



//create tone lattice
toneLatt[0][0] = 0;
  //printf("%i ", toneLatt[0][0]);

//populate first row
for(int i = 1; i < rowSize; i++){

  toneLatt[i][0] = ((toneLatt[i-1][0] + 5) % range);
//  printf("%i ", toneLatt[i][0]);

}
//printf("\n");

//Populate every other row
for(int k = 1; k < rowSize; k++){

  for(int j = 0; j < rowSize; j++){

    toneLatt[j][k] = (((toneLatt[j][k-1]) + 7) % range);
  //  printf("%i ", toneLatt[j][k]);

  }

  //printf("\n");

}


//PLACEHOLDER FILL conArr with 0s

for(int x = 0; x < rowSize; x++){
  for(int y = 0; y < rowSize; y++){
    conArr[y][x] = 0;
  }
}

conArr[1][2] = 1;
conArr[6][3] = 1;
conArr[8][2] = 1;


//TODO: convert active cells to MIDI

int note = 0;

for(int y = 0; y < rowSize; y++){
  for(int x = 0; x < rowSize; x++){
      if(conArr[y][x] == 1){
        note = toneLatt[y][x] + midiRoot;
        printf("note: %i \n", note);
      } else {
        // do nothing
      }
  }
}



}
