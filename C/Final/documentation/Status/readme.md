# Status Report

#### Your name

Natalie Hogue

#### Project title

St Maximillian's Organ

***

Short answers for the below questions suffice. If you want to alter your plan for your project (and obtain approval for the same), be sure to email your instructor!

<p style="font-size: 16px; color:red;"><b>IMPORTANT:</b> You cannot change your project after the status report due date/time.</p>

#### What have you done for your project so far?

I have implemented the additive model per voice, as well as a MIDI voice allocation system.

#### What have you not done for your project yet?

I have been working this week almost entirely on polyphony. It has proven an interesting challenge per the next section.

I also have to implement some sort of reverb. I have some code pulled from Dr B's audio programming textbook for convolution reverb (as I have an impulse of the chapel that the original organ resides in), I just need to figure out correct implementation. If I become too pressed for time I may just algorithmically generate something to taste.

#### What problems, if any, have you encountered?

Generating Polyphony is proving somewhat difficult with the architecture of this synth. In doing additive synthesis, I'm adding a lot of sine functions together and it's difficult figuring out how to affect the frequency of a sine wave outside of the sine function itself. I may have to rethink my architecture, either implementing the waveform from a buffer of samples, or messing with the sineWave.phase[] variable to get it to generate voices polyphonically within the synthesis engine.

EDIT: In the 2 hours since I wrote this I figured out a single sine polyphonic model, and discovered that my additive sum-of-sines model is too CPU intensive for polyphonic playback. Am going to work on a wavetable implementation unless i can fine a less CPU intensive way to approximate the sum of sines with a single expression
