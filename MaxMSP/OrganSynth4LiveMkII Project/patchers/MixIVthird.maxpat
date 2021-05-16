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
		"rect" : [ 689.0, 224.0, 640.0, 480.0 ],
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
					"id" : "obj-21",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 193.0, 465.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-18",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 74.5, 32.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 30.0, 91.0, 47.0, 22.0 ],
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
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 60.0, 192.93505859375, 29.5, 22.0 ],
					"text" : "* 6."
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
					"text" : "mc.sig~ @chans 24"
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
					"text" : "mc.sig~ @chans 24"
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
						"count" : 24,
						"data" : [ 							{
								"key" : 1,
								"value" : [ 0.042169650342858 ]
							}
, 							{
								"key" : 2,
								"value" : [ 0.058884365535559 ]
							}
, 							{
								"key" : 3,
								"value" : [ 0.062373483548242 ]
							}
, 							{
								"key" : 4,
								"value" : [ 0.011748975549395 ]
							}
, 							{
								"key" : 5,
								"value" : [ 0.002917427014001 ]
							}
, 							{
								"key" : 6,
								"value" : [ 0.004365158322402 ]
							}
, 							{
								"key" : 7,
								"value" : [ 0.000588843655356 ]
							}
, 							{
								"key" : 8,
								"value" : [ 0.004677351412872 ]
							}
, 							{
								"key" : 9,
								"value" : [ 0.001840772001469 ]
							}
, 							{
								"key" : 10,
								"value" : [ 0.000582103217771 ]
							}
, 							{
								"key" : 11,
								"value" : [ 0.000158489319246 ]
							}
, 							{
								"key" : 12,
								"value" : [ 0.00358921934645 ]
							}
, 							{
								"key" : 13,
								"value" : [ 0.000239883291902 ]
							}
, 							{
								"key" : 14,
								"value" : [ 0.000616595001861 ]
							}
, 							{
								"key" : 15,
								"value" : [ 0.001428893958511 ]
							}
, 							{
								"key" : 16,
								"value" : [ 0.000543250331492 ]
							}
, 							{
								"key" : 17,
								"value" : [ 0.000518800038929 ]
							}
, 							{
								"key" : 18,
								"value" : [ 0.000327340694879 ]
							}
, 							{
								"key" : 19,
								"value" : [ 0.000211348903984 ]
							}
, 							{
								"key" : 20,
								"value" : [ 0.000803526122186 ]
							}
, 							{
								"key" : 21,
								"value" : [ 0.000254097270555 ]
							}
, 							{
								"key" : 22,
								"value" : [ 0.000147910838817 ]
							}
, 							{
								"key" : 23,
								"value" : [ 0.00028510182675 ]
							}
, 							{
								"key" : 24,
								"value" : [ 0.00011481536215 ]
							}
 ]
					}
,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 240.0, 145.93505859375, 127.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 2
					}
,
					"text" : "coll ampsx @embed 2"
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
						"count" : 24,
						"data" : [ 							{
								"key" : 1,
								"value" : [ 1 ]
							}
, 							{
								"key" : 2,
								"value" : [ 1.33141907208705 ]
							}
, 							{
								"key" : 3,
								"value" : [ 2 ]
							}
, 							{
								"key" : 4,
								"value" : [ 2.6628381441741 ]
							}
, 							{
								"key" : 5,
								"value" : [ 3 ]
							}
, 							{
								"key" : 6,
								"value" : [ 4 ]
							}
, 							{
								"key" : 7,
								"value" : [ 5 ]
							}
, 							{
								"key" : 8,
								"value" : [ 5.32567628834819 ]
							}
, 							{
								"key" : 9,
								"value" : [ 6 ]
							}
, 							{
								"key" : 10,
								"value" : [ 6.65709536043524 ]
							}
, 							{
								"key" : 11,
								"value" : [ 7 ]
							}
, 							{
								"key" : 12,
								"value" : [ 8 ]
							}
, 							{
								"key" : 13,
								"value" : [ 9 ]
							}
, 							{
								"key" : 14,
								"value" : [ 10 ]
							}
, 							{
								"key" : 15,
								"value" : [ 10.6513525766964 ]
							}
, 							{
								"key" : 16,
								"value" : [ 12 ]
							}
, 							{
								"key" : 17,
								"value" : [ 13.314190720870499 ]
							}
, 							{
								"key" : 18,
								"value" : [ 14 ]
							}
, 							{
								"key" : 19,
								"value" : [ 14.645609792957501 ]
							}
, 							{
								"key" : 20,
								"value" : [ 16.256611757594101 ]
							}
, 							{
								"key" : 21,
								"value" : [ 18 ]
							}
, 							{
								"key" : 22,
								"value" : [ 18.641378268097299 ]
							}
, 							{
								"key" : 23,
								"value" : [ 21.304216412271401 ]
							}
, 							{
								"key" : 24,
								"value" : [ 23.9670545564455 ]
							}
 ]
					}
,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 113.0, 145.93505859375, 125.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}
,
					"text" : "coll freqsx @embed 1"
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
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 0,
					"source" : [ "obj-11", 0 ]
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
					"destination" : [ "obj-21", 0 ],
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
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-18", 0 ]
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
					"midpoints" : [ 122.5, 135.93505859375, 249.5, 135.93505859375 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"midpoints" : [ 285.5, 212.43505859375, 281.5, 212.43505859375 ],
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
