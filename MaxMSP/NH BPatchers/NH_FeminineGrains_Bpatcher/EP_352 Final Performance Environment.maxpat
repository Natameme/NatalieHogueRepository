{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 11,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 175.0, 224.0, 1080.0, 701.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-5",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "NH_AdditiveFrequencyGenerator.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 804.333388686180115, 520.0, 595.0, 367.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-4",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "PanMixer.maxpat",
					"numinlets" : 9,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 337.333343386650085, 946.66669487953186, 742.666684985160828, 453.333343029022217 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 337.333343386650085, 1409.333375334739685, 107.66666853427887, 107.66666853427887 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 181.666671633720398, 37.000000357627869, 251.999998450279293, 22.0 ],
					"text" : "route 144 176 224"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 181.666671633720398, 5.000000238418579, 91.0, 22.0 ],
					"text" : "route midievent"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 228.333337783813477, 74.333334803581238, 50.0, 22.0 ],
					"text" : "120 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.666671633720398, 74.333334803581238, 50.0, 22.0 ],
					"text" : "66 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 281.000009417533875, 5.000000238418579, 152.666669726371765, 22.0 ],
					"text" : "midievent 176 120 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 216.000006556510925, -32.33333420753479, 64.0, 22.0 ],
					"text" : "r pushmidi"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "RxTempermentRegulator.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 148.333388686180115, 105.666667819023132, 327.0, 401.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "NH_AdditiveFrequencyGenerator.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 148.333388686180115, 520.0, 595.0, 367.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"order" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"order" : 0,
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 268.833337783813477, 502.333347618579865, 346.833343386650085, 502.333347618579865 ],
					"order" : 1,
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-10" : [ "live.dial[35]", "live.dial", 0 ],
			"obj-1::obj-11" : [ "live.dial[32]", "live.dial", 0 ],
			"obj-1::obj-12" : [ "live.dial[33]", "live.dial", 0 ],
			"obj-1::obj-6" : [ "live.dial[34]", "live.dial", 0 ],
			"obj-1::obj-70" : [ "mc.live.gain~[1]", "mc.live.gain~[1]", 0 ],
			"obj-1::obj-9" : [ "multislider", "multislider", 0 ],
			"obj-4::obj-1" : [ "live.gain~", "live.gain~", 0 ],
			"obj-4::obj-2" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-4::obj-23" : [ "live.dial", "Pan", 0 ],
			"obj-4::obj-24" : [ "live.dial[1]", "Pan", 0 ],
			"obj-4::obj-26" : [ "live.dial[2]", "Pan", 0 ],
			"obj-4::obj-28" : [ "live.dial[3]", "Pan", 0 ],
			"obj-4::obj-3" : [ "live.gain~[2]", "live.gain~", 0 ],
			"obj-4::obj-30" : [ "live.dial[4]", "Pan", 0 ],
			"obj-4::obj-32" : [ "live.dial[5]", "Pan", 0 ],
			"obj-4::obj-34" : [ "live.dial[6]", "Pan", 0 ],
			"obj-4::obj-36" : [ "live.dial[7]", "Pan", 0 ],
			"obj-4::obj-4" : [ "live.gain~[3]", "live.gain~", 0 ],
			"obj-4::obj-5" : [ "live.gain~[4]", "live.gain~", 0 ],
			"obj-4::obj-6" : [ "live.gain~[5]", "live.gain~", 0 ],
			"obj-4::obj-7" : [ "live.gain~[6]", "live.gain~", 0 ],
			"obj-4::obj-8" : [ "live.gain~[7]", "live.gain~", 0 ],
			"obj-4::obj-9" : [ "live.gain~[8]", "live.gain~[8]", 0 ],
			"obj-5::obj-10" : [ "live.dial[9]", "live.dial", 0 ],
			"obj-5::obj-11" : [ "live.dial[11]", "live.dial", 0 ],
			"obj-5::obj-12" : [ "live.dial[10]", "live.dial", 0 ],
			"obj-5::obj-6" : [ "live.dial[8]", "live.dial", 0 ],
			"obj-5::obj-70" : [ "mc.live.gain~[2]", "mc.live.gain~[1]", 0 ],
			"obj-5::obj-9" : [ "multislider[1]", "multislider", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-5::obj-10" : 				{
					"parameter_longname" : "live.dial[9]"
				}
,
				"obj-5::obj-11" : 				{
					"parameter_longname" : "live.dial[11]"
				}
,
				"obj-5::obj-12" : 				{
					"parameter_longname" : "live.dial[10]"
				}
,
				"obj-5::obj-6" : 				{
					"parameter_longname" : "live.dial[8]"
				}
,
				"obj-5::obj-70" : 				{
					"parameter_longname" : "mc.live.gain~[2]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "NH_AdditiveFrequencyGenerator.maxpat",
				"bootpath" : "~/Desktop/NH BPatchers/NH_AdditiveFrequencyGenerator_BPatcher/NH_AdditiveFrequencyGenerator/patchers",
				"patcherrelativepath" : "../NH_AdditiveFrequencyGenerator_BPatcher/NH_AdditiveFrequencyGenerator/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "AdditiveEngine.maxpat",
				"bootpath" : "~/Desktop/NH BPatchers/NH_AdditiveFrequencyGenerator_BPatcher/NH_AdditiveFrequencyGenerator/patchers",
				"patcherrelativepath" : "../NH_AdditiveFrequencyGenerator_BPatcher/NH_AdditiveFrequencyGenerator/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "RxTempermentRegulator.maxpat",
				"bootpath" : "~/Desktop/EP_352_Final",
				"patcherrelativepath" : "../../EP_352_Final",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "PanMixer.maxpat",
				"bootpath" : "~/Desktop/EP_352_Final",
				"patcherrelativepath" : "../../EP_352_Final",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pan2.maxpat",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 8/Examples/spatialization/panning/lib",
				"patcherrelativepath" : "../../../Library/Application Support/Cycling '74/Max 8/Examples/spatialization/panning/lib",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
