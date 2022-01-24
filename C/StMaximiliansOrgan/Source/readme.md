# St Maximillian's Organ
## how to Run

### Step 1

Set your console directory to Final/Source/

### Step 2a

Make sure your midi controller is plugged in before opening the program

### Step 2b

In the current implementation, compile OrganSecondBuild.c with the code

  ```
  clang StMaximilliansOrganMKII.c -o StMaximilliansOrganMKII -lportaudio -lportmidi && ./StMaximilliansOrganMKII
  ```

The code will run through and midi setting, ideally it should return without an error, however in the event that you get an "invalid device ID" error,

    - Look through the list of audio and midi device and take the respective ID numbers for your desired devices

go into StMaximilliansOrganMK1.c and in the 
Constants Section (line 14) reinstantiate
"kAudioDeviceOutputIndex" and "kMIDIInputDeviceID" 
with the correct indexes corresponding to the device you wish to user

### Step 3

    - Once you compile and run the code with no error you should be good to start making sound! hit a note on your keyboard and try it out.


## use with a DAW

While I would love to build a VST wrapper for this instrument, this the current best implementation for use with a DAW. It should work with any DAW that has the capacity to communicate with external MIDI devices.

### MIDI routing

For Mac

  - Go into Audio MIDI Setup
  - Open MIDI Studio (⌘2)
  - Click on the IAC Driver DEVICES

  #### IAC Driver Settings
  
  - make sure checkbox for "Device is Online" is ticked

  using your DAWs external instrument capabilities you 
  can set the MIDI output to the IAC driver bus, and 
  likewise set the Organ's input ID to the IAC bus (usually shows up as 0).

For Windows

  MIDI utilities such as LoopMIDI exist for windows, but I have personally not tested them. As long as portMIDI recognizes it as a device you're golden, though your mileage may vary.

### Audio Routing

  IMPORTANT: It is almost definitely a good idea to do troubleshoot this process with your volume down.

  in order to route audio back into your DAW use your favorite internal audio routing utility such as Soundflower, Blackhole or Loopback. Just something to route audio back into your DAW. Crucially you want to make sure you avoid feedback issues in this process, you should be fine as long as ONLY your DAW input is set to your routing utility, and the output to your speakers. If the incoming signal is too hot you can use MIDI CC automation in your daw, either to change the Main volume (CC7) or any of the stop volume CCs which are listed as follows:

    Bourdon 8     : CC 12
    Bourdon 4     : CC 13
    Clarion 4     : CC 14
    Fifteenth 2   : CC 15
    Melodia 8     : CC 16
    Mixture 1/3   : CC 17
    Octave 4      : CC 18
    Principle 8   : CC 19
    Trumpet 8     : CC 20
    Trumpet 16    : CC 21
    Twelfth 2 2/3 : CC 22
    Violone 8     : CC 23

### Notes on Use

  What this method does in principle is use a virtual MIDI device to run St Maximilian's Organ as an external MIDI instrument, the same as if it were a hardware device. You may have to recompile the program a few times to get your input and output settings configured (see beginning of this document), but I hope that this method is fairly straightforward until I can get a proper VST/AU wrapper running with this instrument. If you are a developer and interested in helping me build that VST wrapper feel free to reach out to me at mach6mix@gmail.com
