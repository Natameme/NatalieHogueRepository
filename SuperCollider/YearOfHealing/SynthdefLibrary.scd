//Compilation of All of my Supercollider Synthdefs

( //click outside this parenthesis to add all to server
//PBind Synths

//////////
//FM Synth
//////////

SynthDef(\fmSynth,{
	arg out=0, oFreq=100, fmMult = 1, aAmt=0.3, fmAmt=1, aAtk= 0.4, aDec=4, fmAtk = 0.1, fmDec = 0.2, pan=0.5, mVol = 1.0, gate=1;
	var osc, ampEnv, fmEnv, sig;
	osc = SinOsc.ar(oFreq, SinOsc.ar((oFreq * fmMult), 0, fmAmt), mul: 1);
	ampEnv = EnvGen.kr(Env.new([0,aAmt,0], [aAtk,aDec]), gate, doneAction: 2);
	fmEnv = EnvGen.kr(Env.new([0,1,0], fmAtk, fmDec), gate);
	sig = Out.ar(out, Pan2.ar((osc * ampEnv) * mVol, pan));
}).add;


///////////
//SAW Synth
///////////
SynthDef(\sawSynth,{
	arg out= 1, oFreq=100, fFreq = 1000, fRes = 1, aAmt=1, aAtk= 0.01, aDec= 4, aSus = 0.5, aRel = 3, fAmt = 2, fAtk = 0.01, fDec = 0.5, fSus= 0.5, fRel= 3, pan= 0.5, mVol = 1.0, gate=1;
	var osc, ampEnv, fEnv, sig;
	ampEnv = EnvGen.kr(Env.new([0,aAmt,aSus,0], [aAtk,aDec, aRel]), gate, doneAction: 2);
	fEnv = EnvGen.kr(Env.new([1,fAmt, fSus,1], [fAtk, fDec, fRel]), gate, doneAction: 0);
	osc = RLPF.ar(Saw.ar(oFreq, mul: 1), fFreq * fEnv, fRes, 1.0);
	sig = Out.ar(out, Pan2.ar((osc * ampEnv) * mVol, pan));
}).add;



//////////////
//Square Synth
//////////////

SynthDef(\pulseSynth,{
	arg out= 1, oFreq=100, fFreq = 1000, fRes = 1, aAmt=1, aAtk= 0.01, aDec=0.5, aSus = 0.5, aRel = 3, fAmt= 2, fAtk = 0.01, fDec = 0.5, fSus= 0.5, fRel= 3, pWidth= 0.5, pan= 0.5, mVol = 1.0, gate=1;
	var osc, ampEnv, fEnv, sig;
	ampEnv = EnvGen.kr(Env.new([0,aAmt,aSus,0], [aAtk,aDec,aRel]), gate, doneAction: 2);
	fEnv = EnvGen.kr(Env.new([1,fAmt,fSus,1], [fAtk, fDec, fRel]), gate, doneAction: 0);
	osc = RLPF.ar(Pulse.ar(oFreq, pWidth, mul: 1), fFreq * fEnv, fRes, 1.0);
	sig = Out.ar(out, Pan2.ar((osc * ampEnv) * mVol, pan));
}).add;

/////////////
//Boomwhacker
/////////////
SynthDef(\boomWhacker,{
	arg out= 1, oFreq=100, fFreq = 1000, fRes = 1, aAmt=0.1, aAtk= 0.001, aDec= 1, hAmt=0.001, nAmt= 0.05, iAtk = 0.007, iDec=0.09, pan= 0.5, mVol = 1.0, gate=1;
	var osc, ampEnv, hit, sig;
	ampEnv = EnvGen.kr(Env.new([0,1,0], [aAtk,aDec]), gate, doneAction: 2);
	hit = SinOsc.ar(XLine.kr(5000, 400, iDec), 0, XLine.kr(aAmt, 0, iDec)) + WhiteNoise.ar(XLine.kr(nAmt*2, 0, iDec));
	osc = Klank.ar(`
	[[//FREQUENCIES
			oFreq*1.0, oFreq*1.4, oFreq*1.7, oFreq*2.0, oFreq*3.0,oFreq*3.5,
			oFreq*4.0, oFreq*4.5,oFreq*4.67120181405896, oFreq*5.08390022675737,
			oFreq*5.77777777777778,oFreq*6.49886621315193, oFreq*7.03854875283447,
			oFreq*7.45578231292517,oFreq*7.78231292517007, oFreq*8.53061224489796],
	[//AMPLITUDES
			1, 0.0891, 0.0431, 5.5590, 1.479, 0.1396, 0.5888, 0.0912, 0.0525,
			0.0661,0.0422, 0.0285, 0.0588, 0.0291, 0.0467, 0.0716],
	[//LENGTHS
			0.382, 0.406, 0.403, 0.470, 0.401, 0.382, 0.375, 0.357, 0.332,
			0.325, 0.316, 0.311, 0.302, 0.302, 0.200, 0.121, 0.110]], hit);
	sig = Out.ar(out, Pan2.ar((osc * ampEnv) * mVol, pan));
}).add;

//////////////
//Singing Bowl
//////////////

SynthDef(\singingBowl,{
	arg out = 1, oFreq=569.5, aAmt=1, aAtk= 0.001, aDec= 5.98, hAmt=0.9, nAmt= 1, iAtk = 0.007, iDec=0.022, fFreq = 10000, pan= 0.5, mVol = 1.0, hVol = 0.01, gate=1;
	var osc, ampEnv, hit, bow, filt, sig;
	ampEnv = EnvGen.kr(Env.new([0,aAmt,0], [aAtk,aDec]), gate, doneAction: 2);
	hit = SinOsc.ar(XLine.kr(900, 128, iDec), 0, XLine.kr(hAmt, 0, iDec));
	bow = WhiteNoise.ar(XLine.kr(nAmt*2, 0, iDec));
	osc = Klang.ar(`[[//FREQUENCIES
		oFreq *	1, oFreq * 2, oFreq *	1.99827288428325, oFreq * 2.9, oFreq *	2.90500863557858,
		oFreq *	3.81174438687392, oFreq *	5.18998272884283, oFreq *	5.61312607944732,
		oFreq *	6.19343696027634, oFreq *	8.00690846286701, oFreq *	11.1848013816926],
	[//AMPLITUDES
		1,
		0.0594328234724281	, 0.0794328234724281	, 0.112097519097331	,
		0.412097519097331	, 0.00602559586074357	, 0.173780082874938	,
		0.0030902954325136	, 0.00139636836105594	, 0.0457088189614875,
		0.00568852930843842	],
	[//LENGTHS
		23.98, 8.58, 13.66, 5.022, 5.596, 3.645, 2.411, 2.927, 2.124]]);
	filt = RLPF.ar(osc, fFreq);
	sig = Out.ar(out, Pan2.ar((mVol * ((filt * ampEnv)) + (hit * hVol)), pan));
}).add;

SynthDef(\wind, {
	arg out, amp = 1, gate = 1, atk = 1, dec= 4, lfoAmt= 0.01, lfoR= 0.1, lfoOfst= 0.3, ctf= 500, q = 10, mVol = 1.0;
    var env, sines;
    env = Linen.kr(
		gate, atk, 1, dec, 2);
	sines = RLPF.ar(WhiteNoise.ar(amp), ctf * SinOsc.kr(lfoR, 0, lfoAmt, lfoOfst) , q); // A mix of 8 oscillators
		Out.ar(out,
		(sines * env) * mVol);
}, [0, 0.1, 0]).add;


SynthDef(\harmonica,{
	arg out= 1, oFreq=1050, fFreq = 500, fRes = 1, aAmt=1, aSus = 0.05, aRel = 1.75, aAtk= 0.1, aDec= 1, iDec=0.09, pan= 0.5, mVol = 1.0, gate=1;
	var osc, ampEnv, hit, sig;
	ampEnv = EnvGen.kr(Env.new([0,aAmt, aSus, 0], [aAtk, aDec, aRel]), gate, doneAction: 2);
	hit = RLPF.ar(WhiteNoise.ar(ampEnv), fFreq, 1, 1);
	osc = Klang.ar(`
	[[//Frequency
		oFreq *	0.903809523809524,oFreq *	1,oFreq *	1.0952380952381,oFreq *	2,oFreq *	3,oFreq *	4,oFreq *	5.00095238095238,oFreq *	6.00095238095238,oFreq *	7.00095238095238,oFreq *	8.00095238095238,oFreq *	9.00095238095238,oFreq *	10.0009523809524,oFreq *	11.0009523809524,oFreq *	12.0019047619048,oFreq *	13.0019047619048,oFreq *	14.0019047619048,oFreq *	15.0028571428571,oFreq *	16.0019047619048,oFreq *	17.0019047619048,oFreq *	18.0028571428571,oFreq *	19.0038095238095], [
		//Amplitude
		0.000184077200146896,0.11091748152624,0.000248313310529557,0.00732824533138904,0.0156675107010815,0.00501187233627272,0.0047315125896148,0.00616595001861482,0.00165958690743756,0.0049545019080479,0.0034276778654645,0.00489778819368446,0.00380189396320561,0.0038904514499428,0.00194984459975805,0.000266072505979881,
	0.000630957344480193,0.000398107170553497,0.000162181009735893,0.000237137370566166,0.000186208713666287], [
3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]]);
	sig = Out.ar(out, Pan2.ar(((osc * ampEnv)+(hit*0.05)) * mVol, pan));
}).add;

(
SynthDef(\PianoC3,{
	arg out = 1, oFreq=160, aAmt=1, aAtk= 0.001, aDec= 5.98, hAmt=0.9, nAmt= 1, iAtk = 0.007, iDec=0.022, fFreq = 1000, pan= 0.5, mVol = 1.0, hVol = 0.01, gate=1;
	var osc, ampEnv, hit, bow, filt, sig;
	ampEnv = EnvGen.kr(Env.new([0,aAmt,0], [aAtk,aDec]), gate, doneAction: 2);
	hit = SinOsc.ar(XLine.kr(900, 128, iDec), 0, XLine.kr(hAmt, 0, iDec));
	bow = WhiteNoise.ar(XLine.kr(nAmt*2, 0, iDec));
	osc = Klang.ar(`[[//FREQUENCIES
		oFreq *	1	,
oFreq *	2.0023023791251	, oFreq *	3.00613967766692	, oFreq *	4.00767459708365	, oFreq *	5.01151189562548	, oFreq *	6.01611665387567	, oFreq *	7.02302379125096	, oFreq *	8.02762854950115	, oFreq *	9.04067536454336	,oFreq *	10.0537221795856	,oFreq *	11.0667689946278	,oFreq *	12.07981580967	,oFreq *	13.1005372217959	,oFreq *	14.1289332310054	,oFreq *	15.1419800460476	,oFreq *	16.1857252494244	,oFreq *	17.2141212586339	,oFreq *	18.2578664620107	,oFreq *	19.2939370683039	,oFreq *	20.3376822716807	,oFreq *	21.3891020721412	,oFreq *	22.4405218726017	,oFreq *	23.4919416730622	,oFreq *	24.5587106676899	,oFreq *	25.6254796623177	,oFreq *	26.7075978511128	,oFreq *	27.7820414428243	,oFreq *	28.8564850345357	,oFreq *	30.2916346891788	],
	[//AMPLITUDES
		1	,
1.09647819614318	,0.630957344480193	,0.489778819368446	,0.186208713666286	,0.242661009508241	,0.175994866380147	,0.136458313658892	,0.0331131121482591	,0.0602559586074355	,0.204173794466953	,0.0234422881531992	,0.079432823472428	,0.116144861384034	,0.00767361489361819	,0.0524807460249772	,0.0153108746168203	,0.025409727055493	,0.00803526122185615	,0.0167880401812256	,0.0350751873952567	,0.0173780082874937	,0.00638263486190547	,0.00676082975391981	,0.00954992586021436	,0.00582103217770868	,0.00645654229034657	,0.00741310241300914	,0.00245470891568502	],
	[//LENGTHS
		1	,
1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	,1	]]);
	filt = RLPF.ar(osc, fFreq);
	sig = Out.ar(out, Pan2.ar((mVol * ((filt * ampEnv)) + (hit * hVol)), pan));
}).add;
)
//end of addAll
)

////////////////////////////////////////////////////////////////////////////////////////////////////////
//Drones////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////
//Noise Drone
/////////////
(
SynthDef(\wind, {
	arg out, amp = 0.06, gate = 1,atk = 1, dec= 4, lfoF= 0.01, lfoR= 0.1, lfoOfst= 0.3, ctf= 500, q = 10;
    var env, sines;
    env = Linen.kr(
		gate, atk, 1, dec, 2);
	sines = RLPF.ar(WhiteNoise.ar(amp * SinOsc.kr(lfoR, 0, lfoF, lfoOfst)), ctf , q); // A mix of 8 oscillators
		Out.ar(out,
			(sines) * env);
}, [0, 0.1, 0]).add;
x = Synth(\wind);
)

//MODULATION
//LFO Frequency and Range
x.setn(\amp, 0.6);
x.setn(\lfoF, 0.01, \lfoR, 0.11);
//attack time
x.setn(\atk, 10);
//Gate Off & Decay Time
x.setn(\gate, 0,\dec, 1);

/////////////
//Chord Drone
/////////////
(
SynthDef(\fractionals, {
	arg out, amp = 0.2, freqs = #[100, 100, 100, 100, 100, 100, 100, 100], gate = 1,atk = 10, dec= 4, lfoF= 0.01, lfoR= 1, mVol = 1;
    var env, sines;
    env = Linen.kr(
		gate, atk, 1, dec, 2);
	sines = SinOsc.ar(
		freqs +.t [0,0.5] + SinOsc.ar(
			freqs +.t [0,0.5], mul: SinOsc.kr(
				lfoF, mul: lfoR)),0, amp).cubed.sum; // A mix of 8 oscillators
		Out.ar(out,
		((sines) * env)* mVol);
}, [0, 0.1, 0]).add;
f = Synth(\fractionals);

SynthDef(\wind, {
	arg out, amp = 1, gate = 1, atk = 1, dec= 4, lfoAmt= 0.01, lfoR= 0.1, lfoOfst= 0.3, ctf= 500, q = 10, mVol = 1.0;
    var env, sines;
    env = Linen.kr(
		gate, atk, 1, dec, 2);
	sines = RLPF.ar(WhiteNoise.ar(amp), ctf * SinOsc.kr(lfoR, 0, lfoAmt, lfoOfst) , q); // A mix of 8 oscillators
		Out.ar(out,
		(sines * env) * mVol);
}, [0, 0.1, 0]).add;

)





