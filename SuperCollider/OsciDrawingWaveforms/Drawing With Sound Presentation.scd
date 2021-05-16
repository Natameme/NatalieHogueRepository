
//Title Card
(
Buffer.read(s, "/Users/gnat/Desktop/OsciDrawingWaveforms/DrawingWithSound.wav", 0, -1, Done.free, 0);

SynthDef(\DraWSound, {
	arg rate = 0.5, attk = 5, decay = 5, out = 0, bufnum = 0;
	var envA, sig;
	envA = Env([0,1,0], [attk, decay]).kr(2);
	sig = PlayBuf.ar(2, 0, rate, 1.0, 0.0, 1.0);
	sig = sig * envA;
	Out.ar(out, sig)
}).add;
//Play
x = Synth(\DraWSound);
)
x.free;

///////////////////////////
//Cube
(
Buffer.read(s, "/Users/gnat/Desktop/OsciDrawingWaveforms/Cube.wav", 0, -1, Done.free, 1);

SynthDef(\cube, {
	arg rate = 0.5, attk = 1, decay = 5, out = 0, bufnum = 0;
	var mous, sig;
	mous = MouseY.kr(0, 1);
	sig = PlayBuf.ar(2, 1, MouseX.kr(0, 1), 1.0, 0.0, 1.0);
	sig = sig * mous;
	Out.ar(out, sig)
}).play;
)
y.free;
//Heart
(
Buffer.read(s, "/Users/gnat/Desktop/OsciDrawingWaveforms/GridHEart.wav", 0, -1, Done.free, 1);

SynthDef(\cube, {
	arg rate = 0.5, attk = 1, decay = 5, out = 0, bufnum = 0;
	var mous, sig;
	mous = MouseY.kr(0, 1);
	sig = PlayBuf.ar(2, 1, MouseX.kr(0, 1), 1.0, 0.0, 1.0);
	sig = sig * mous;
	Out.ar(out, sig)
}).play;
)



///////////////////////////////////
//Circle Phasing
z = {[SinOsc.ar(187, 0, 0.8), SinOsc.ar(187, MouseX.kr(0,3.14), 0.8)]}.play;
z.free;