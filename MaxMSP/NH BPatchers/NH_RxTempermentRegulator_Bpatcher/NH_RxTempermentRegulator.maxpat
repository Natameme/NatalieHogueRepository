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
		"rect" : [ 623.0, 79.0, 761.0, 646.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
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
					"comment" : "",
					"id" : "obj-73",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 575.543856859207153, 454.166655838489532, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 575.543856859207153, 415.833323419094086, 34.0, 22.0 ],
					"text" : "pack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 573.333319664001465, 33.333332538604736, 47.0, 22.0 ],
					"text" : "unpack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 730.0, 48.5, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Medium",
					"id" : "obj-69",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 708.0, 221.0, 80.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 110.80026650428772, 218.065422207117081, 80.0, 21.0 ],
					"text" : "Octave Ratio"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 661.543856859207153, 211.0, 29.5, 22.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.905882352941176, 0.905882352941176, 0.905882352941176, 1.0 ],
					"format" : 6,
					"htricolor" : [ 0.607843137254902, 0.925490196078431, 0.909803921568627, 1.0 ],
					"id" : "obj-65",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 661.543856859207153, 246.809706926345825, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 110.80026650428772, 240.313727766275406, 50.0, 22.0 ],
					"textcolor" : [ 0.149019607843137, 0.149019607843137, 0.149019607843137, 1.0 ],
					"tricolor" : [ 0.741176470588235, 0.737254901960784, 0.737254901960784, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Medium",
					"fontsize" : 8.0,
					"id" : "obj-63",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 636.0, 285.0, 115.0, 83.0 ],
					"presentation" : 1,
					"presentation_linecount" : 7,
					"presentation_rect" : [ 150.80026650428772, 281.924199134111404, 133.0, 73.0 ],
					"text" : "Side Affects may include change in harmonies, microtonality, sudden loss of consonance, nausea and vomiting, please contact your musician right away if you experience loss of pitch perception",
					"textcolor" : [ 0.642269670963287, 0.642370581626892, 0.642232835292816, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Medium",
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 721.0, 269.0, 155.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 150.80026650428772, 170.316919535398483, 111.0, 21.0 ],
					"text" : "Center Frequency"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.905882352941176, 0.905882352941176, 0.905882352941176, 1.0 ],
					"format" : 6,
					"htricolor" : [ 0.607843137254902, 0.925490196078431, 0.909803921568627, 1.0 ],
					"id" : "obj-43",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 691.646382570266724, 304.143035888671875, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 150.80026650428772, 192.316919535398483, 46.920530796051025, 22.0 ],
					"textcolor" : [ 0.149019607843137, 0.149019607843137, 0.149019607843137, 1.0 ],
					"tricolor" : [ 0.741176470588235, 0.737254901960784, 0.737254901960784, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Medium",
					"id" : "obj-41",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 504.466906547546387, 355.937904596328735, 58.0, 35.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.393977165222168, 336.360375225543976, 90.0, 21.0 ],
					"text" : "Frequency Out"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.905882352941176, 0.905882352941176, 0.905882352941176, 1.0 ],
					"format" : 6,
					"htricolor" : [ 0.607843137254902, 0.925490196078431, 0.909803921568627, 1.0 ],
					"id" : "obj-34",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 575.543856859207153, 368.937904596328735, 139.230763912200928, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.393977165222168, 359.360375225543976, 88.0, 22.0 ],
					"textcolor" : [ 0.149019607843137, 0.149019607843137, 0.149019607843137, 1.0 ],
					"tricolor" : [ 0.741176470588235, 0.737254901960784, 0.737254901960784, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Medium",
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 737.093679010868073, 138.578946590423584, 150.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 110.80026650428772, 170.316919535398483, 34.0, 21.0 ],
					"text" : "EDO"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.905882352941176, 0.905882352941176, 0.905882352941176, 1.0 ],
					"htricolor" : [ 0.607843137254902, 0.925490196078431, 0.909803921568627, 1.0 ],
					"id" : "obj-25",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 683.80026650428772, 138.578946590423584, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 110.80026650428772, 192.316919535398483, 35.0, 22.0 ],
					"textcolor" : [ 0.149019607843137, 0.149019607843137, 0.149019607843137, 1.0 ],
					"tricolor" : [ 0.741176470588235, 0.737254901960784, 0.737254901960784, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.905882352941176, 0.905882352941176, 0.905882352941176, 1.0 ],
					"format" : 5,
					"htricolor" : [ 0.607843137254902, 0.925490196078431, 0.909803921568627, 1.0 ],
					"id" : "obj-22",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"maximum" : 127,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 574.877192974090576, 164.327449262142181, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.133571624755859, 218.065422207117081, 59.0, 22.0 ],
					"textcolor" : [ 0.149019607843137, 0.149019607843137, 0.149019607843137, 1.0 ],
					"tricolor" : [ 0.741176470588235, 0.737254901960784, 0.737254901960784, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Medium",
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 626.877192974090576, 138.578946590423584, 47.0, 35.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.133571624755859, 170.316919535398483, 62.0, 21.0 ],
					"text" : "Midi Note"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.905882352941176, 0.905882352941176, 0.905882352941176, 1.0 ],
					"htricolor" : [ 0.607843137254902, 0.925490196078431, 0.909803921568627, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "number",
					"maximum" : 127,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 574.877192974090576, 138.578946590423584, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.133571624755859, 192.316919535398483, 59.0, 22.0 ],
					"textcolor" : [ 0.149019607843137, 0.149019607843137, 0.149019607843137, 1.0 ],
					"tricolor" : [ 0.741176470588235, 0.737254901960784, 0.737254901960784, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue Medium",
					"fontsize" : 24.0,
					"id" : "obj-59",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 201.393977165222168, 355.210177004337311, 273.0, 35.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 53.393977165222168, 110.065422207117081, 30.0, 35.0 ],
					"text" : "x"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Helvetica Neue Medium",
					"fontsize" : 24.0,
					"id" : "obj-9",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 85.0, 42.0, 273.0, 64.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 36.393977165222168, 103.210177004337311, 196.0, 64.0 ],
					"text" : "R  : Temperment\nRegulator"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.905882352941176, 0.905882352941176, 0.905882352941176, 1.0 ],
					"bordercolor" : [ 0.870588235294118, 0.870588235294118, 0.870588235294118, 1.0 ],
					"id" : "obj-56",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 174.455431938171387, 343.000599324703217, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.393977165222168, 99.770469188690186, 248.603880703449249, 281.58990603685379 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Medium",
					"id" : "obj-52",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 609.364335536956787, -80.499997019767761, 123.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.893977165222168, 8.616922378540039, 123.0, 21.0 ],
					"text" : "Midi pitch/velocity in",
					"textcolor" : [ 0.392156862745098, 0.749019607843137, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-50",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 574.877192974090576, -80.499997019767761, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 522.216906547546387, 109.271252632141113, 29.5, 22.0 ],
					"text" : "69"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 683.80026650428772, 109.271252632141113, 29.5, 22.0 ],
					"text" : "12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 691.646382570266724, 273.886627435684204, 32.0, 22.0 ],
					"text" : "440."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 575.543856859207153, 322.091752767562866, 40.0, 22.0 ],
					"text" : "* 440."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 575.082289695739746, 192.04047679901123, 29.5, 22.0 ],
					"text" : "- 69"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 575.543856859207153, 260.040474414825439, 29.5, 22.0 ],
					"text" : "/ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 575.543856859207153, 230.809706926345825, 40.0, 22.0 ],
					"text" : "pak i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 575.543856859207153, 286.43708348274231, 105.0, 22.0 ],
					"text" : "expr pow($f2\\, $f1)"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.905882352941176, 0.905882352941176, 0.905882352941176, 1.0 ],
					"border" : 3,
					"bordercolor" : [ 0.870588235294118, 0.870588235294118, 0.870588235294118, 1.0 ],
					"id" : "obj-54",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 245.614032745361328, 175.438594818115234, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.236116349697113, 4.450255811214447, 317.473682403564453, 75.36842155456543 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 180.292322869228542,
					"grad1" : [ 0.964705882352941, 0.894117647058824, 0.764705882352941, 1.0 ],
					"grad2" : [ 0.9273282289505, 0.668833374977112, 0.167593851685524, 1.0 ],
					"id" : "obj-53",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 275.438593864440918, 172.807015895843506, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 23.91083025932312, 68.5614013671875, 276.124254584312439, 325.280699610710144 ],
					"proportion" : 0.5,
					"pt1" : [ 0.994949494949495, 0.48989898989899 ],
					"pt2" : [ 0.005050505050505, 0.494949494949495 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"midpoints" : [ 693.30026650428772, 222.068578094244003, 606.043856859207153, 222.068578094244003 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"midpoints" : [ 701.146382570266724, 336.143035888671875, 651.840733766555786, 336.143035888671875, 651.840733766555786, 311.091752767562866, 606.043856859207153, 311.091752767562866 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 0,
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"order" : 1,
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"order" : 3,
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"order" : 2,
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 1 ],
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
