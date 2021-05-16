
// kick drum
(
SynthDef.new(\kick, {
	arg freq1=1000, freq2=50, freq3=10, freqDur1=0.01, freqDur2=0.2, freqC1=1,
	freqC2=(-1), atk=0.01, rel=1, c1=1, c2=(-1), amp=0.8, pan=0, out=0;
	var sig, env, freqSweep;
	freqSweep = Env([freq1,freq2,freq3],[freqDur1,freqDur2],[freqC1,freqC2]).ar;
	env = Env([0,1,0], [atk, rel],[c1,c2]).kr(2);
	sig = SinOsc.ar(freqSweep, pi/2)
	sig = sig * env;
	sig = Pan2.ar(sig, pan, amp);
	Out.ar(out, sig);
}).add;
)


{ RLPF.ar(Saw.ar(200, 0.1), SinOsc.ar(XLine.kr(0.7, 300, 20), 0, 3600, 4000), 0.2) }.play;

(
SynthDef.new(\lead, {
	arg oFreq=440, fFreq=880, attk=0.2, rel=5, amp=0.4, pan=0, out=0;
	var sig, envA;
	envA = Env([0,1,0], [attk,rel]).kr(2);
	sig = RLPF.ar(Saw.ar(oFreq, amp), MouseY.kr(0,20000), MouseX.kr(0,0.8));
	sig = sig * envA;
	sig = Pan2.ar(sig, pan, amp);
	Out.ar(out, sig);
}).add;
)

Troop.start;


(
SynthDef.new(\lead, {
	arg oFreq=440, fFreq=880, attk=0.2, rel=5, amp=0.1, pan=0, out=0;
	var sig, envA;
	envA = Env([0,1,0], [attk,rel]).kr(2);
	sig = RLPF.ar(Saw.ar(oFreq, amp), MouseY.kr(0,20000), MouseX.kr(0,0.8));
	sig = sig * envA;
	sig = Pan2.ar(sig, pan, amp);
	Out.ar(out, sig);
}).add;
)

h = Synth(\lead);

(
SynthDef.new(\Theremin, {
	arg oFreq=440, fFreq=880, attk=0.2, rel=2, amp=0.4, pan=0, out=0;
	var sig, envA;
	sig = SinOsc.ar(MouseX.kr(0,2000),0.0, MouseY.kr(0.0, 0.8, 0));
	sig = sig;
	sig = Pan2.ar(sig, pan, amp);
	Out.ar(out, sig);
}).add;
)

(
SynthDef.new(\saws, {
	arg oFreq=100, attk=0.2, rel=6, amp=0.4, pan=0, out=0;
	var sig, envA;
	envA = Env([0,1,0], [attk,rel], 'lin', 1).kr(2);
	sig = RLPF.ar(Saw.ar(oFreq, amp), oFreq*2);
	sig = sig * envA;
	sig = Pan2.ar(sig, pan, amp);
	Out.ar(out, sig);
}).add;
)

w=Synth(\saws);
w.free;

Synth(\saws, [\oFreq, 100]);

Synth(\saws, [\ofreq, 90]);


(
{
    EnvGen.kr(
        Env.new(
            levels: [0, 1, 0.5, 0],
            times: [0.01, 0.01, 0.01],
            releaseNode: 2 // sustains at level 0.5 until gate is closed
        ),
        gate: Trig.kr(Impulse.kr(3), dur: 0.3)
    );
}.plot(duration: 1);
)








t = Synth(\Theremin);
t.free;

/*CHORDS*/
//1M9
(
Synth(\lead, [\oFreq, 90]);
Synth(\lead, [\oFreq, 180]);
Synth(\lead, [\oFreq, 270]);
Synth(\lead, [\oFreq, 337.5]);
Synth(\lead, [\oFreq, 450]);
Synth(\lead, [\oFreq, 540]);
)
H.free;
//2m9
(
Synth(\lead, [\oFreq, 50.625]);
Synth(\lead, [\oFreq, 202.5]);
Synth(\lead, [\oFreq, 303.75]);
Synth(\lead, [\oFreq, 455.625]);
Synth(\lead, [\oFreq, 486]);
Synth(\lead, [\oFreq, 607.5]);
)
//4M9
(
Synth(\lead, [\oFreq, 120]);
Synth(\lead, [\oFreq, 240]);
Synth(\lead, [\oFreq, 300]);
Synth(\lead, [\oFreq, 360]);
Synth(\lead, [\oFreq, 450]);
Synth(\lead, [\oFreq, 540]);
)
//6 1stInv
(
Synth(\lead, [\oFreq, 112]);
Synth(\lead, [\oFreq, 300]);
Synth(\lead, [\oFreq, 360]);
Synth(\lead, [\oFreq, 450]);
Synth(\lead, [\oFreq, 540]);
Synth(\lead, [\oFreq, 600]);
)
//6m9
(
Synth(\lead, [\oFreq, 150]);
Synth(\lead, [\oFreq, 300]);
Synth(\lead, [\oFreq, 360]);
Synth(\lead, [\oFreq, 450]);
Synth(\lead, [\oFreq, 540]);
Synth(\lead, [\oFreq, 675]);
)
//6m9 oct
(
Synth(\lead, [\oFreq, 37.5]);
Synth(\lead, [\oFreq, 150]);
Synth(\lead, [\oFreq, 300]);
Synth(\lead, [\oFreq, 360]);
Synth(\lead, [\oFreq, 450]);
Synth(\lead, [\oFreq, 540]);
Synth(\lead, [\oFreq, 675]);
)

/*MELODIES*/
//1
(
		p : Pbind(
			\degree, Pseq(#[1, -7, 0, 5, -7, 0, 6, 4], 1),
			\dur, Pseq(#[0.2,0.2,0.4,0.4,0.2, 0.4, 0.4, 0.2], 1)
		).play;
)

//2
(
p = Pbind(
    \degree, Pseq(#[1, -6, 0, 5, -6, 0, 6, 4], 1),
    \dur, Pseq(#[0.2,0.2,0.4,0.4,0.2, 0.4, 0.4, 0.2], 1)).loop.asStream;
)

p.stop;
//4
(
p : Pbind(
    \degree, Pseq(#[1, -4, 0, 5, -4, 0, 6, 4], 1),
    \dur, Pseq(#[0.2,0.2,0.4,0.4,0.2, 0.4, 0.4, 0.2], 1)
).play;
)

//4low
(
p : Pbind(
    \degree, Pseq(#[1, -11, 0, 5, -11, 0, 6, 4], 1),
    \dur, Pseq(#[0.2,0.2,0.4,0.4,0.2, 0.4, 0.4, 0.2], 1)
).play;
)
//5>1
(
p : Pbind(
    \degree, Pseq(#[1, -3, 0, 5, -7, 0, 6, 4], 1),
    \dur, Pseq(#[0.2,0.2,0.4,0.4,0.2, 0.4, 0.4, 0.2], 1)
).play;
)
//6
(
p : Pbind(
    \degree, Pseq(#[1, -9, 0, 5, -9, 0, 6, 4], 1),
    \dur, Pseq(#[0.2,0.2,0.4,0.4,0.2, 0.4, 0.4, 0.2], 1)
).play;
)



