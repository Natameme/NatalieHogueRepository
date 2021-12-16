# Proposal

## Project Title?

St Maximillian's Organ

## In just a sentence or two, summarize your project. (E.g., "My project is about creating a wavetable synthesizer.")

St Maximillian's Organ is to create a fully additive, stop-for-stop replica of the St Cecelia's Parish Organ Great Division

## In a paragraph or more, detail your project. What will your software do? What features will it have? How will it be executed?

In early 2020 I built a fully additive replica of St Cecelia's Organ Great Division in Max MSP. It features a stop for stop replica, allowing the user the same control that the real organ does, synthesized as a faithful replica recorded from original samples taken at the parish. In addition the model features a convolution reverb impulse of the Parish chapel, to fully round out the sound of the instrument.

![alt text](https://github.com/Natameme/NatalieHogue_EP_353_Classwork/blob/main/Final/Proposal/OrganSynthMax.png "Max Organ Screenshot")

The instrument sounds amazing, but eats processing power like it's a bowl of cheerios. My goal with this rebuild project is to use the low level control of C/C++ to create a more lightweight version of the plugin. Additionally, I want to explore building a GUI and potentially implementation into a VST/AU wrapper for use with a framework such as JUCE or OpenFrameworks.

## If you are planning to combine EP-353's final project with another course's final project, with which other course? And which aspect(s) of your proposed project would relate to EP-353, and which aspect(s) would relate to the other course?

The original OrganSynth was a continuation of the re-synthesis project for EP_322, although at this point the purpose of this project is to bring that architecture into a format that inherits the processing benefits of the C language.

## In the world of software, most everything takes longer to implement than you expect. And so it's not uncommon to accomplish less in a fixed amount of time than you hope.

### In a sentence (or list of features), define a GOOD outcome for your final project. I.e., what WILL you accomplish no matter what?

my Goal is to have a functional Backend with MIDI note Input, as well as CC input for the pulling in and out of various stops.

### In a sentence (or list of features), define a BETTER outcome for your final project. I.e., what do you THINK you can accomplish before the final project's deadline?

My first stretch goal will be to build a GUI with the GTK library so that the user can graphically see the state of the division. With this outcome, I would also like my deliverable to be a standalone application that does not require the user to compile the source code or put anything in the command line.

### In a sentence (or list of features), define a BEST outcome for your final project. I.e., what do you HOPE to accomplish before the final project's deadline?

My ultimate goal is to build the program into a VST/AU wrapper using OpenFrameworks or JUCE, if not accomplished for this class I will be exploring it as a continuation of my practice in C programming. I would like to release this synth as a plugin for use with any of the major DAWs.

## In a paragraph or more, outline your next steps. What new skills will you need to acquire? What topics will you need to research?

### Backend
The key to the backend will be MIDI functionality, as well as building an additive patch from a .csv file. I already have a spreadsheet filled with the harmonic/amplitude data per stop, so if I can create a backend that pulls that data directly, it will save me an incredible amount of tedious work in copying all of that data into the source code. Additionally, once I figure out the architecture for one stop, that model will generalize to every other stop.

Another option I may explore if pure-additive synthesis is too power intensive, is the use of single cycle buffers, so that the processor is not dealing with a great amount of instantiated sine waves. The main goal of this project to begin with is to build an implementation of the synth that is not as processor intensive as the MaxMSP version. This has the potential of being less processing intensive, but more tedious to implement as I have to generate a single cycle waveform for each stop.

The final hurdle for the backend will be implementation of a convolution reverb. In my initial sampling for the re-synthesis project, I recorded an impulse of the chapel that houses the organ. Ultimately, much of the sound of the room is dictated by the reverb signature, so if I can implement a convolution model using the original room impulse, the sound of the organ can be approximated to a very high degree of error.

as for MIDI functionality, I need to figure out what kind of behavior I want the CCs to have on the stops. What I may do is use CCs 12-23 for example, in a boolean state behavior (n<64 off n>64 on) and then CCs 24-35 for Fader-Style response allowing for finer mix control of each stop. 

### Front End

The key to the GUI will be learning the GTK library. I already have a GUI model in the MaxMSP prototype (included in this file for reference) and it would only necessitate the addition of a menu for MIDI I/O. 

### VST Wrapper

This is definitely a stretch goal, but one that I want to achieve nonetheless, even if that ends up being after submission of my final. I want to use a package manager such as JUCE or OpenFrameworks to package the synth for use as an Audio Plugin, both for myself as well as for sharing with others. Otherwise the only difference in functionality between this and the Standalone would be implementation with the VST and AU standards.
