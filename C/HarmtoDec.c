#include <stdio.h>

//clang HarmtoDec.c -o HarmtoDec && ./HarmtoDec
// ./HarmtoDec

#define numHarms = 32;

int main(){

   static float i = 1;
   float harm;

//  while(i <= 32){
    harm = 69;
    // increment zero to prevent infinite loop
    if(harm == 0.0){
      i++;
      //printf("%f \n", harm);
    } else if(harm > 2.0){ // if harm is greater than 2 divide it until it isn't
      while(harm > 2.0){
          harm = harm / 2.0; // divide harm by 2 until it's less than 2
        }
        printf("%f \n", harm);
    } else { // if(harm >= 1.0) // if harm is greater than 1 (implied less than 2)
      i++;//increment i
    }
    i++;
  //}
return 0;
}
