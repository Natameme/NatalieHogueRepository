#include <stdio.h>

/*
MIDI VOICE SPLITTER

by Natalie Hogue & Weiqi Kong

dynamically allocates each voice of a midi chord to a different channel, (up to 16 voices)

useful for MPE applications?
*/

int max(int [][],int, int);
int delNote(int [][], int, int);



/////////////////////
////Main Function////
/////////////////////

int main(){

  //MIDI note structure
  typedef struct midiNote {
    int note;
    int channel;
  } midiNote;

  midiNote noteOn;

  noteOn.note[16][2] = { {/*note*/34, /*velocity*/120}, {13, 96}, {67, 121}, {45, 64}, {69, 23}};
  noteOn.channel[16][2] = {/*channel 1*/{/*note*/0,/*velocity*/0}, {0,0}, {0,0}, {0,0}, {0,0}, {0,0}, {0,0}, {0,0}, {0,0}, {0,0}, {0,0}, {0,0}, {0,0}, {0,0}, {0,0}, {0,0}};

  int pitchArrSize = (sizeof(noteOn.note) / sizeof(int)/2);

  for(int k = 0; k < pitchArrSize; k++){
  printf("Pitch    %i: %i ", k, noteOn.note[k][0]);
  printf("Velocity %i: %i\n", k, noteOn.note[k][1]);
  }
  
  int l = 0;
  int j = 0;
  while (l <= pitchArrSize){
    int maxim;
    maxim = max(noteOn.note, pitchArrSize, l);
    noteOn.channel[l][0] = maxim;
    noteOn.channel[l][1] = noteOn.note[l][1];
    delNote(noteOn.note[l][0], maxim, pitchArrSize);
    delNote(noteOn.note[l][1], maxim, pitchArrSize);
    l++;
  }

  //end of main function
  return 0;
}

///////////////////
////Get Maximum////
///////////////////

int max(int x,int k, int l){
	int t,i;
	t=x[0];
	for(i=1;i<k;i++)
        {
		if(x[i]>t)
			t=x[i];
	}
	return(t);
  //end of maximum
}


///////////////////
////Delete Note////
///////////////////

int delNote(int arr, int max, int arrSize){
  int i = 0;
    while(i < arrSize){
      if(arr[i] == max){
        arr[i] = 0;
        i++;
      } else {
        i++;
      }
    }
  //delete note
}
