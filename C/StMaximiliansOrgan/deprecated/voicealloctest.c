#include <stdio.h>
#include<ctype.h>

int main(){

  int note[2] = {0,0};
  int bag[4][2] = {{0,0},{0,0},{0,0},{0,0}};
  for(int i = 0; i <= 16; i++){
    printf("note input:");
    scanf("%i", &note[0]);
    printf("velocity input:");
    scanf("%i", &note[1]);
      if(note[0] != 0){
        bag[0][0] = note[0];
        bag[0][1] = note[1];
      } else if (note[0] != 0 && bag[0][0] != 0){
        bag[1][0] = note[0];
        bag[1][1] = note[1];
      } else if (note[0] != 0 && bag[0][0] != 0 && bag[1][0] != 0){
        bag[2][0] = note[0];
        bag[2][1] = note[1];
      } else if (note[0] != 0 && bag[0][0] != 0 && bag[1][0] != 0 && bag[2][0 != 0]){
        bag[3][0] = note[0];
        bag[3][1] = note[1];
      }
      printf("[%i,%i] [%i,%i] [%i,%i] [%i,%i]" , bag[0][0], bag[0][1], bag[1][0], bag[1][1], bag[2][0], bag[2][1], bag[3][0], bag[3][1]);
    }
return 0;
}
