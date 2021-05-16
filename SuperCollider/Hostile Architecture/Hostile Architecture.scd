(
Buffer.read(s, "/Users/gnat/Desktop/Livecoding Final/MetalStick6Loop.wav", 0, -1, Done.free, 0);

SynthDef(\MetalPlay, {
	arg amp= 1.0, rate = 1.0, atk = 5, dec = 2, out = 0, bufnum = 0, gate= 1;
	var envA, sig;
	 envA = Linen.kr(
		gate, atk, 1, dec, 2);
	sig = PlayBuf.ar(2, bufnum, rate, 1.0, 0.0, 1.0);
	sig = sig * envA * amp;
	Out.ar(out, sig)
}).add;
)

//Play
~sample = Synth(\MetalPlay);

~sample.setn(\rate, [0.33], \amp, 0.5);

~sample.set(\gate, 0, \dec, 0.1);
~sample.free;




//SynthDefs
(
SynthDef(\plucks,{
	arg out=0,
	freq=440,
	fmMult = 1,
	aAmt=0.3,
	fmAmt=1,
	aAtk= 0.01,
	aDec=0.5,
	fmAtk = 0.1,
	fmDec = 0.2,
	gate=1;
	var osc, ampEnv, fmEnv, sig;
	osc = SinOsc.ar(freq * SinOsc.ar(freq * fmMult, 0, fmAmt), mul: 1);
	ampEnv = EnvGen.kr(Env.new([0,aAmt,0], [aAtk,aDec]), gate, doneAction: 2);
	fmEnv = EnvGen.kr(Env.new([0,1,0], fmAtk, fmDec), gate);
	sig = Out.ar(out, FreeVerb.ar(Pan2.ar(osc, MouseX.kr(0,1)), 0.5, 1.0 ) * ampEnv );
}).add;
y = Synth(\plucks);
)

//////////////////////////////////////
//INTERVAL RATIOS/////////////////////
//////////////////////////////////////
/*m2*/ 16/15;
/*M2*/ 9/8;
/*m3*/ 6/5;
/*n3*/ 11/9;
/*M3*/ 5/4;
/*P4*/ 4/3;
/*#4*/ 7/5;
/*P5*/ 3/2;
/*m6*/ 8/5;
/*n6*/ 8/11;
/*M6*/ 5/3;
/*m7*/ 9/5;
/*M7*/ 15/8;

//ARPONE
(
r=100;
//SET NOTE FRACTION INTERVALS, CHART ABOVE FOR REFERENCE
x=([
	r*(1),
	r*(3),
	r*(15/4),
	r*(16/4),
	r*(5/2),
	r*(3),
	r*(1/2),
	r*(1),
]);
//reinitializes the Pbind
~arpOne.stop;
//Sequence
~arpOne = Pbind(
	\instrument, \plucks,//SET AN INSTRUMENT OF CHOICE, MUST CONFORM TO ARGUMENT STRUCTURE AS DEFINED IN PINGS
	\aAmt, 0.05,//SYNTH AMPLITUDE
	\freq, Prand(x,inf), //DO NOT TOUCH VARIABLE X, MAY CHOOSE BETWEEN DIFFERENT PATTERN MODES
	\aDec, 0.7, //SET AMPLITUDE DECAY VARIABLE
	\aAtk, 0.01, //SET AMPLITUDE ATTACK VARIABLE
	\fmDec, 0.05, //SET FM OSCILLATOR DECAY
	\fmAmt, 1, //SET FM OSCILLATOR AMOUNT
	\dur,  Prand([0.3, 0.1, 0.2], inf,) //SET PBIND DURATION
	).play;
)

(
//Stop Sequence
~arpOne.stop;
)

//ARPTWO
(
r=100;
//SET NODE INTERVALS, Chart Above for Reference
x=([
	r*(1),
	r*(3),
	r*(15/4),
	r*(16/4),
	r*(5/2),
	r*(3),
	r*(1/2),
	r*(1),
]);
//reinitializes the Pbind
~arpTwo.stop;
//Sequence
~arpTwo = Pbind(
	\instrument, \plucks,//SET AN INSTRUMENT OF CHOICE, MUST CONFORM TO ARGUMENT STRUCTURE AS DEFINED IN PINGS
	\fmMult, Prand([1, 2, 3 ,4 ], inf),
	\aAmt, 0.05,//SYNTH AMPLITUDE
	\freq, Pseq(x,inf), //DO NOT TOUCH VARIABLE X, MAY CHOOSE BETWEEN DIFFERENT PATTERN MODES
	\aDec, 0.7, //SET AMPLITUDE DECAY VARIABLE
	\aAtk, 1, //SET AMPLITUDE ATTACK VARIABLE
	\fmDec, 0.5, //SET FM OSCILLATOR DECAY
	\fmAmt, 1, //SET FM OSCILLATOR AMOUNT
	\dur,  Prand([0.3], inf,) //SET PBIND DURATION
	).play;
)

(
//Stop Sequence
~arpTwo.stop;
)

(
r=100;
x=([
	r*(1),
	r*(3),
	r*(15/4),
	r*(16/4),
	r*(5/2),
	r*(3),
	r*(1/2),
	r*(1),
]);
//reinitializes the Pbind
~arpTre.stop;
//Sequence
~arpTre = Pbind(
	\instrument, \plucks,//SET AN INSTRUMENT OF CHOICE, MUST CONFORM TO ARGUMENT STRUCTURE AS DEFINED IN PINGS
	\aAmt, 0.05,//SYNTH AMPLITUDE
	\freq, Pseq(x,inf), //DO NOT TOUCH VARIABLE X, MAY CHOOSE BETWEEN DIFFERENT PATTERN MODES
	\aDec, 0.7, //SET AMPLITUDE DECAY VARIABLE
	\aAtk, 1, //SET AMPLITUDE ATTACK VARIABLE
	\fmDec, 0.5, //SET FM OSCILLATOR DECAY
	\fmAmt, 1, //SET FM OSCILLATOR AMOUNT
	\dur,  Prand([0.3], inf,) //SET PBIND DURATION
	).play;
)

(
//Stop Sequence
~arpTre.stop;
)

//////////////////////////////////////
//Chords SynthDef/////////////////////
//////////////////////////////////////
(
SynthDef(\fractionals, {
	arg out, amp = 0.2, freqs = #[100, 100, 100, 100, 100, 100, 100, 100], gate = 1,atk = 10, dec= 4, lfoF= 0.02, lfoR= 100;
    var env, sines;
    env = Linen.kr(
		gate, atk, 1, dec, 2);
	sines = SinOsc.ar(
		freqs +.t [0,0.5] + SinOsc.ar(
			freqs +.t [0,0.5], mul: SinOsc.kr(
				lfoF, mul: lfoR)),0, amp).cubed.sum; // A mix of 8 oscillators
		Out.ar(out,
			(sines) * env);
}, [0, 0.1, 0]).add;
x = Synth(\fractionals);
)
//////////////////////////////////////
//MODULATION//////////////////////////
//////////////////////////////////////
//LFO Frequency and Range
x.setn(\amp, 0.39);
x.setn(\lfoF, 1000, \lfoR, 523);
//attack time
x.setn(\atk, 10);
//Gate Off & Decay Time
x.setn(\gate, 0,\dec, 1);
//////////////////////////////////////
//CHORDS//////////////////////////////
//Change the chord quality by editing ratios within the array   //r = root frequency
//////////////////////////////////////
(
x.setn(\freqs, [50]);
)
(
r=100;
x.setn(\freqs, [
	r*(1),
	r*(3),
	r*(15/4),
	r*(16/4),
	r*(5/2),
	r*(3),
	r*(1/2),
	r*(1),
]);
)