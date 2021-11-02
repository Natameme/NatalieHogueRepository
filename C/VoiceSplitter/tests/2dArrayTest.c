#include <stdio.h>
#include <math.h>

int imax(int[][2], int);
//int delNote(int[][2], int, int);

int main(){
///////////////////////////////////////////////////////////////////////////////
  //MIDI STRUCTURE//
  typedef struct midiNote
  {
    int note;
    int channel;
  } midiNote;
///////////////////////////////////////////////////////////////////////////////
    //NOTEON//
    int note[][2] =
  {
                          /*voice*/
                          {/*note*/73,/*velocity*/99},
                          {69,90},
                          {76,89},
                          {80,100},
                          {83,101}
  };
    int marrSize = ( (sizeof(note) / sizeof(int) ) / 2);
///////////////////////////////////////////////////////////////////////////////
    //CHANNEL//
    int channel[16][2] =
    {
                          /*channel*/
                        {/*note*/0,/*velocity*/0},
                        {0,0},
                        {0,0},
                        {0,0},
                        {0,0},
                        {0,0},
                        {0,0},
                        {0,0},
                        {0,0},
                        {0,0},
                        {0,0},
                        {0,0},
                        {0,0},
                        {0,0},
                        {0,0},
                        {0,0},
  };
    int carrSize = ( (sizeof(channel) / sizeof(int) ) / 2);
///////////////////////////////////////////////////////////////////////////////
    //NOTE DIAGNOSTIC LOOP//
    for(int i = 0; i < marrSize; i++)
  {
        printf("note: %i | velocity: %i\n", note[i][0], note[i][1]);
  }
    printf("////////////////////////////////\n");
///////////////////////////////////////////////////////////////////////////////
    //REALLOCATION//
    int l;
    while(l < marrSize)
  {
    int maxim = imax(note, marrSize);
    //int naxim = vmax(note, marrSize);
    channel[l][0] = maxim;
    channel[l][1] = note[l][1];
        for(int i = 0; i < marrSize;)
        {
          if(note[i][0] == maxim)
          {
            note[i][0] = 0;
            note[i][1] = 0;
            i++;
          } else
          {
            i++;
          }
        }
    l++;
  }

///////////////////////////////////////////////////////////////////////////////
    //CHANNEL DIAGNOSTIC LOOP//
    for(int i = 0; i< carrSize; i++)
  {
      printf("note: %i | velocity: %i | channel %i\n", channel[i][0], channel[i][1], i);
  }

///////////////////////////////////////////////////////////////////////////////
    //END OF MAIN FUNCTION//
    return 0;
}
///////////////////////////////////////////////////////////////////////////////
/*===========================================================================*/
///////////////////////////////////////////////////////////////////////////////
//INTEGER MAXIMUM//
int imax(int arr[][2], int marrSize)
{
  int i;

    // Initialize maximum element
    int max = arr[0][0];

    // Traverse array elements from second and
    // compare every element with current max
    for (i = 1; i < marrSize; i++)
    {
        if (arr[i][0] > max)
            max = arr[i][0];
    }
    return max;
    return i;
}
///////////////////////////////////////////////////////////////////////////////
//DELETE NOTE//
/*int delNote(int arr[][2], int max, int arrSize)
{
  int i = 0;

  //delete note
  return arr;
}*/
