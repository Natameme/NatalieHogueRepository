# St Maximillian's Organ Indev
### Notes

  this indev folder contains in development models. This file may or may not be empty depending on current development stage. That said, if the reader is planning to edit the source file, it is wise to duplicate & move to this directory for editing, as not to accidentally destroy the source.  

## how to Run

###Step 1

Set your console directory to Final/Source/

###Step 2a

Make sure your midi controller is plugged in before opening the program

###Step 2b

The line to compile each program is at the top of each C file, following the rough structure

    `clang Filename.c -o Filename -lportaudio -lportmidi && ./Filename`

The code will run through and midi setting, ideally it should return without an error, however in the event that you get an "invalid device ID" error,

    - Look through the list of audio and midi device and take the respective ID numbers for your desired devices

    - go into OrganSecondBuild.c and in the Constants Section (line 14) reinstantiate "kAudioDeviceOutputIndex" and "kMIDIInputDeviceID" with the correct numbers corresponding to the device you wish to user

###Step 3

    - Once you compile and run the code with no error you should be good to start making sound! hit a note on your keyboard and try it out.

    - Polyphony and the ability to pull in and out stops are coming in a later version. For now the (admittedly janky) method of pulling in and out stops is to comment out the stops you don't want at line 364.
