{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 1006.0, 169.0, 640.0, 480.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-25",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 445.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-24",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 122.0, 49.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 28.0, 92.0, 47.0, 22.0 ],
					"text" : "unpack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 119.5, 436.0, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 5.5, 345.93505859375, 99.0, 22.0 ],
					"text" : "adsr~ 0.1 0 1 0.1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 109.0, 287.93505859375, 40.0, 22.0 ],
					"text" : "mc.*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 232.0, 293.93505859375, 114.0, 22.0 ],
					"text" : "mc.sig~ @chans 21"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 109.0, 243.93505859375, 114.0, 22.0 ],
					"text" : "mc.sig~ @chans 21"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 50.0, 287.93505859375, 22.0, 22.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 159.5, 382.93505859375, 92.0, 22.0 ],
					"text" : "mc.mixdown~ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 159.5, 354.93505859375, 40.0, 22.0 ],
					"text" : "mc.*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "setvalue", "int" ],
					"patching_rect" : [ 113.0, 192.93505859375, 59.0, 22.0 ],
					"text" : "mc.target"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 128.93505859375, 32.0, 22.0 ],
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "setvalue", "int" ],
					"patching_rect" : [ 232.0, 257.93505859375, 59.0, 22.0 ],
					"text" : "mc.target"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 21,
						"data" : [ 							{
								"key" : 1,
								"value" : [ 0.034673685045253 ]
							}
, 							{
								"key" : 2,
								"value" : [ 0.037153522909717 ]
							}
, 							{
								"key" : 3,
								"value" : [ 0.007943282347243 ]
							}
, 							{
								"key" : 4,
								"value" : [ 0.058210321777087 ]
							}
, 							{
								"key" : 5,
								"value" : [ 0.1 ]
							}
, 							{
								"key" : 6,
								"value" : [ 0.029174270140012 ]
							}
, 							{
								"key" : 7,
								"value" : [ 0.025409727055493 ]
							}
, 							{
								"key" : 8,
								"value" : [ 0.019952623149689 ]
							}
, 							{
								"key" : 9,
								"value" : [ 0.014454397707459 ]
							}
, 							{
								"key" : 10,
								"value" : [ 0.014288939585111 ]
							}
, 							{
								"key" : 11,
								"value" : [ 0.010351421666793 ]
							}
, 							{
								"key" : 12,
								"value" : [ 0.006237348354824 ]
							}
, 							{
								"key" : 13,
								"value" : [ 0.023442288153199 ]
							}
, 							{
								"key" : 14,
								"value" : [ 0.012735030810167 ]
							}
, 							{
								"key" : 15,
								"value" : [ 0.011350108156723 ]
							}
, 							{
								"key" : 16,
								"value" : [ 0.003126079367124 ]
							}
, 							{
								"key" : 17,
								"value" : [ 0.001364583136589 ]
							}
, 							{
								"key" : 18,
								"value" : [ 0.002691534803927 ]
							}
, 							{
								"key" : 19,
								"value" : [ 0.002317394649968 ]
							}
, 							{
								"key" : 20,
								"value" : [ 0.001216186000646 ]
							}
, 							{
								"key" : 21,
								"value" : [ 0.00036307805477 ]
							}
 ]
					}
,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 244.0, 145.93505859375, 131.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 2
					}
,
					"text" : "coll ampnin @embed 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 113.0, 108.93505859375, 93.0, 22.0 ],
					"text" : "loadmess dump"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 21,
						"data" : [ 							{
								"key" : 1,
								"value" : [ 1 ]
							}
, 							{
								"key" : 2,
								"value" : [ 2 ]
							}
, 							{
								"key" : 3,
								"value" : [ 3 ]
							}
, 							{
								"key" : 4,
								"value" : [ 4 ]
							}
, 							{
								"key" : 5,
								"value" : [ 5 ]
							}
, 							{
								"key" : 6,
								"value" : [ 6 ]
							}
, 							{
								"key" : 7,
								"value" : [ 7 ]
							}
, 							{
								"key" : 8,
								"value" : [ 8 ]
							}
, 							{
								"key" : 9,
								"value" : [ 9 ]
							}
, 							{
								"key" : 10,
								"value" : [ 10 ]
							}
, 							{
								"key" : 11,
								"value" : [ 11 ]
							}
, 							{
								"key" : 12,
								"value" : [ 12 ]
							}
, 							{
								"key" : 13,
								"value" : [ 13 ]
							}
, 							{
								"key" : 14,
								"value" : [ 14 ]
							}
, 							{
								"key" : 15,
								"value" : [ 15 ]
							}
, 							{
								"key" : 16,
								"value" : [ 16 ]
							}
, 							{
								"key" : 17,
								"value" : [ 17 ]
							}
, 							{
								"key" : 18,
								"value" : [ 18 ]
							}
, 							{
								"key" : 19,
								"value" : [ 19 ]
							}
, 							{
								"key" : 20,
								"value" : [ 20 ]
							}
, 							{
								"key" : 21,
								"value" : [ 21 ]
							}
 ]
					}
,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 113.0, 145.93505859375, 129.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}
,
					"text" : "coll freqnin @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 109.0, 320.93505859375, 62.0, 22.0 ],
					"text" : "mc.cycle~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 1,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 122.5, 135.93505859375, 253.5, 135.93505859375 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"midpoints" : [ 290.833333333333314, 212.43505859375, 281.5, 212.43505859375 ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 241.5, 290.93505859375 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ]
	}

}
