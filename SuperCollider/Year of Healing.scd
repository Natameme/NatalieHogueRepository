//////////////////////////////////////
//SynthDefs///////////////////////////
//////////////////////////////////////

//INSTRUCTIONS FOR PERFORMANCE
//1. open ableton session
//2. set output to blackhole audio
//3. Boot Server
(
s.options.numOutputBusChannels = 16;
s.options.numInputBusChannels = 2;
s.boot;
s.meter;
)

//4. ADD ALL SYNTHS FROM SYNTHDEFLIBRARY

//////////////////////////////////////
//MODULATION//////////////////////////
//////////////////////////////////////
//LFO Frequency and Range
x.setn(\lfoAmt, 0.1, \lfoR, 0.05);
//attack time
x.setn(\atk, 10);
//Gate Off & Decay Time
x.setn(\gate, 0,\dec, 1);
x.setn(\mVol, 1, \ctf, 1000, \q, 0.9, \out, 0);

//////////////////////////////////////
//Twinklies///////////////////////////
//////////////////////////////////////
~theme.stop;
~varone.stop;
~vartwo.stop;
~bells.stop;
~bellsprime.stop;


//5. trigger all instruments. The aspect of performance is the creative mixing and improvisation over the textural material

(
//CONSTANTS
r = 160;//Pitch 1

//TODO port fibonacci to r

//Wind
x = Synth(\wind);
x.setn(\mVol, 1, \ctf, 1000, \q, 1, \out, 0, \lfoR, 0.01, \lfoF, 1000, \lfoOfst, );


//)

//(
//Random Wind Chimes
r=160;
~offset = 1.003;
~bells.stop;
~bells= Pbind(
	\instrument, \fmSynth,
	\fmAmt, Pwhite(0, 0.16, inf),
	\fmMult, Prand.new([4.618], inf),
	\fmAtk, 0.1,
	\aAtk, 0.01,
	\aDec, 2,
	\dur, Pwhite(0.1, 2,inf),
	\oFreq, Prand([
		r*(3),
		r*(9/2),
		r*(15/4),
		r*(27/8),
		r*(15/8),
		r*(3)*~offset,
		r*(9/2)*~offset,
		r*(15/4)*~offset,
		r*(27/8)*~offset,
		r*(15/8)*~offset], inf),
	\aAmt, 0.4,
	\out, 2;).play;

//)

//(
//Singing Bowl Melody TODO: Change synth? (dulcimer?) hammered acoustic to match textures :: implement markov
~varone.stop;
~varone= Pbind(
	\instrument, \singingBowl,
	\aAtk, Pwhite.new(0.01, 0.1, inf),
	\aDec, Pwhite.new(3, 5, inf),
	\dur, Pwhite(0.33, 0.99, inf),
	\fFreq, 700,
	\hVol, 0.01,
	\oFreq, Pwrand([Pseq([
		r*(2),
		r*(10/3),
		r*(9/2),
		r*(6),
		r*(16/3),
		r*(5)], 1),
	Pseq([
		r*(2),
		r*(8/2),
		r*(9/2),
		r*(8/2),
		r*(10/2),
		r*(8/2),
		r*(9/2)], 1),
	Pseq([
		r*(9/4),
		r*(9/4)*(6/5),
		r*(10/3),
		r*(15/4),
		r*(15/4)*(4/3),], 1),

	], [0.4, 0.3, 0.3], inf),
	\mVol, 0.1,
	\out, 4;
).play;

//)
x;
f = {|x| (x * 1).sin * 3 + (x * 0.3).sin};
//(
//Bass with sequences nested in a Weighted Prob
r=160;
~theme.stop;
~theme= Pbind(
	\instrument, \fmSynth,
	\fmAmt, Ptime().collect(f),
	\fmMult, 0.5,
	\fmAtk, Pwhite(0, 0.1 ,inf),
	\aAtk, Pwhite(0, 0.1, inf),
	\aDec, Pseq([Pwhite(6, 6.2,1),
		         Pwhite(6, 6.2, 1),
		         Pwhite(12, 12.4,1)], inf),
	\dur, Pseq([Pwhite(6, 6.2,1),
		         Pwhite(6, 6.2, 1),
		         Pwhite(12, 12.4,1)], inf),
	\oFreq, Pwrand([
		Pseq([r*(4/3),r*(5/6), r*(9/16)],  1),
		Pseq([r*(1),  r*(5/6), r*(9/16)],  1),
		Pseq([r*(5/6), r*(1), r*(9/16)],   1),
		Pseq([r*(4/3), r*(1), r*(9/16)],   1),
		Pseq([r*(5/6), r*(4/3), r*(9/16)], 1)
	], [(1/3), (1/4), (1/5), (1/6)],       inf),//probabilities
	\aAmt, 0.3,
	\out, 6;
).play;
//)


//(
//saw drones
~vartwo.stop;
~vartwo= Pbind(
	\instrument, \harmonica,
	//\fFreq, Pfuncn({SinOsc.kr(1, 0, 1, 1000)}),
	\aAtk, Pwhite.new(1, 10, inf),
	\aDec, Pwhite.new(1, 10, inf),
	\dur, 0.7,
	\oFreq, Pseq([
		r*(3/2),
		r*(4/3),
		r*(5/4),
		//chorus
		r*(3/2)*~offset,
		r*(4/3)*~offset,
		r*(5/4)*~offset,
		//octave
		r*(3),
		r*(8/3),
		r*(5/2),
		//chorus octave
		r*(3)*~offset,
		r*(8/3)*~offset,
		r*(5/2)*~offset
	], inf),
	\mVol, 0.1,
	\out, 8;
).play;
//)

//Fibonacci Countermelodies
//(
//
~volume = 0.09;

~fibone.stop;
~fibone= Pbind(
	\instrument, \fmSynth,
	\fmAmt, 0.8,
	\fmMult, 1,
	\fmAtk, 0.0001,
	\aAtk,  0.0001,
	\aDec,  Pwhite(1.44, 2.33,inf),
	\dur, 0.610,
	\oFreq, Pseq([
		r*(3/2),
		r*(10/6),
		r*(5/4)
	], inf),
	\aAmt, ~volume,
	\out, 10;
).play;
~fiboneprime.stop;
~fiboneprime= Pbind(
	\instrument, \PianoC3,
	\fmAmt, 0.9,
	\fmMult, 2,
	\fmAtk, 0.0001,
	\aAtk,  0.0001,
	\aDec,  Pwhite(1.44, 2.33,inf),
	\dur, 0.610,
	\oFreq, Pseq([
		r*(3/2),
		r*(10/6),
		r*(5/4)
	], inf),
	\aAmt, ~volume,
	\out, 10;
).play;

~ftwo.stop;
~ftwo= Pbind(
	\instrument, \PianoC3,
	\fmAmt, Pwhite(1, 2, inf),
	\fmMult, 0.5,
	\fmAtk, 0.01,
	\aAtk, 0.01,
	\aDec, Pwhite(1, 1.618,inf),
	\dur, 0.34,
	\oFreq, Pseq([
	r*(4/3),
	r*(5/4),
	r*(3/2),
	r*(9/8),
	r*(9/8)*(3/2)], inf),
	\aAmt, ~volume,
	\out, 12;
).play;
//)
)



//TODO create a soundscape through synthesis
