# ST MAXIMILLIAN's ORGAN MARK I

  St Maximillian's Organ is an additive re-synthesis model of the organ at St Cecelia's Parish on Belvidere St in Boston MA. Samples of the original organ were taken, and then analyzed into lists of harmonics and velocity. When additively reassembled, this creates an effect of re-synthesizing the spectral characteristics of the organ.

  The namesake of this project is dedicated to the loving memory of my good friend Charlie McKenzie, who passed away earlier in 2021. Their last album was entitled St Maximillian.

# St Maximillian's Organ Design

## Adaptation

  The source file is heavily adapted from the architecture of 01.SineSynth in the EP-353 repository:
  EP-353_Class_Materials/12.MIDI+ModularProgramming/02.SineSynth/01.SineSynth.c

## SineWave struct

  The SineWave struct is modified to represent frequency, phase, and amplitude as arrays, for polyphonic playback

## main()

  The primary modification to the main function, is in the initialization of the synth, initializing each voice in a for() loop at line 76, as well as initializing each amplitude value to 0. This creates a scenario where the user will not hear audio until a key is pressed.

## process() and loadStops()

  The process function and the loadStops function work in conjunction to create the synthesis engine.

  at line 39, each stop is instantiated as a 256 value floating point array. when loadStops() is called at the very beginning of process(), it fills each variable with 256 values approximating a given waveform. This alleviates the computing power needed to keep adding the waves in real time, as was the case in the previous prototype.

  loadStop() runs a loop of 256 (the size of each array). The first step is creating a phasor value incrementing between 0 and 1, and corresponding to the increment of the Loop. It then fills each array with values 0 ~ 1, corresponding to each sum-of-sines which describes an individual Organ Stop.

  back in process() another variable dex is instantiated, to increment through each array for playback, based on the position of sineWave->phase[q] (phase of sineWave per voice). This is much less computationally expensive than the previous model, which added the sum-of-sines per sample within process(). It also maintains a benefit over loading in each wave from a file, as it allows the sum-of-sines to be edited per stop in the loadStops() stop definition section.


### MIDI parsing

  The main difficulty in creating polyphony was actually not in the synthesis, but rather the parsing of MIDI information.

  voice index v (line 248) and an integer array called bag are instantiated for holding notes

  Starting at line 284, for each note-on, note/velocity pairs are stored in Bag, based on Index v after this operation, v is indexed to allow the next voice to accept a note/velocity pair without overwriting the previous voice. The nature of the system currently invokes last note priority, as when the array is full, v increments back to 0 and starts overwriting extant voices.

  Additionally, at line 256, for CCs 7 as well as 12 ~ 23, values 0 ~ 127 are stored in int array val[] and converted to a floating point array between 0 ~ 1 in vol[] specific values of vol[] are then multiplied by each stop variable within process() to allow volume control per-stop, giving the user finer precision than an actual organ model.


### Reverb (or the lack thereof)

  Unfortunately, the only omission from my original plans for the backend of the synth, is reverb. Designing the engine just took too much time, and unfortunately it had to be left out for now. I still plan to implement it as I continue building this project into a full Audio Plugin.
