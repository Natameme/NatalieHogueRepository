# St Maximillian's Organ
## how to Run

###Step 1

Set your console directory to Final/Source/

###Step 2a

Make sure your midi controller is plugged in before opening the program

###Step 2b

In the current implementation, compile OrganSecondBuild.c with the code

  ```
  clang StMaximilliansOrganMKII.c -o StMaximilliansOrganMKII -lportaudio -lportmidi && ./StMaximilliansOrganMKII
  ```

The code will run through and midi setting, ideally it should return without an error, however in the event that you get an "invalid device ID" error,

    - Look through the list of audio and midi device and take the respective ID numbers for your desired devices

    - go into StMaximilliansOrganMK1.c and in the Constants Section (line 14) reinstantiate "kAudioDeviceOutputIndex" and "kMIDIInputDeviceID" with the correct indexes corresponding to the device you wish to user

###Step 3

    - Once you compile and run the code with no error you should be good to start making sound! hit a note on your keyboard and try it out.
