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
		"rect" : [ 34.0, 79.0, 1044.0, 895.0 ],
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
		"toolbars_unpinned_last_save" : 2,
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
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 364.0, 184.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 364.0, 213.333324670791626, 29.5, 22.0 ],
					"text" : "-12"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-81",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "PanMixer.maxpat",
					"numinlets" : 11,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 84.0, 129.0, 1016.0, 841.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"bgcolor" : [ 0.827450980392157, 0.831372549019608, 0.831372549019608, 0.0 ],
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-195",
									"linecount" : 10,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.666666865348816, 551.000002026557922, 79.0, 163.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 9.0, 6.166652500629425, 568.0, 22.0 ],
									"text" : "Inlets: MIDI Control / Ch1 / Ch2 / Ch3 / Ch4 / Ch5 / Ch6 / Ch7 / Ch8 / Insert A / Insert B",
									"textcolor" : [ 0.823529411764706, 0.827450980392157, 0.827450980392157, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.827450980392157, 0.831372549019608, 0.831372549019608, 0.0 ],
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-194",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 668.333341121673584, 521.333348512649536, 78.0, 85.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.5, 367.166668236255646, 313.833333373069763, 22.0 ],
									"text" : "Outlets: Stereo L / Stereo R / Send A / Send B ",
									"textcolor" : [ 0.823529411764706, 0.827450980392157, 0.827450980392157, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-193",
									"index" : 11,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1184.75, 750.666669487953186, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-192",
									"index" : 10,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1123.75, 750.666669487953186, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-191",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1184.75, 711.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-190",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1123.75, 711.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-184",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1880.25, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1869.75, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-186",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1834.25, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1823.75, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-188",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1880.25, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 603.783330917358398, 310.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[24]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "B",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[21]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-189",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1834.25, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 570.700000047683716, 290.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[34]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "A",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[22]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-178",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1784.5, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-179",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1774.0, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-180",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1738.5, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-181",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1728.0, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-182",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1784.5, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 525.633331179618835, 310.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[32]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "B",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[19]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-183",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1738.5, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 492.300000071525574, 290.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[33]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "A",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[20]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-172",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1673.75, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-173",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1663.25, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-174",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1627.75, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-175",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1617.25, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-176",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1673.75, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 445.433331668376923, 310.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[30]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "B",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[17]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-177",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1627.75, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 411.500000059604645, 290.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[31]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "A",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[18]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-166",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1570.75, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-167",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1560.25, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-168",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1524.75, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-169",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1514.25, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-170",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1570.75, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 366.433332026004791, 310.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[29]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "B",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[14]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-171",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1524.75, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 333.100000083446503, 290.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[22]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "A",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[16]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-160",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1469.75, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-161",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1459.25, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-162",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1423.75, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1413.25, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-164",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1469.75, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 287.833332359790802, 310.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[21]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "B",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[12]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-165",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1423.75, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 253.50000011920929, 290.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[28]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "A",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[13]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-154",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1368.75, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-155",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1358.25, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-156",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1322.75, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-157",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1312.25, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-158",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1368.75, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 208.433332681655884, 310.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[26]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "B",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[10]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-159",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1322.75, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 174.23333340883255, 290.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[27]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "A",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[11]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-148",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1268.75, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-149",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1258.25, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-150",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1222.75, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-151",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1212.25, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-152",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1268.75, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 130.033333003520966, 310.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[20]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "B",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[8]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-153",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1222.75, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 96.50000011920929, 290.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[41]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "A",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[9]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-128",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1163.75, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-129",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1153.25, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-127",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1117.75, 499.0, 44.0, 49.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-126",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1107.25, 562.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-123",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1163.75, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 51.5, 310.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[23]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "B",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[23]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1117.75, 443.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.0, 290.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[15]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "A",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[15]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-96",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1093.75, 798.666670799255371, 76.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 648.5, 31.500000655651093, 76.0, 22.0 ],
									"text" : "Return A",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-97",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 2,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1095.25, 827.666670799255371, 72.0, 316.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 650.0, 64.500000655651093, 72.0, 144.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~[10]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "live.gain~[8]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"showname" : 0,
									"varname" : "live.gain~[10]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-85",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1172.25, 798.666670799255371, 76.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 726.5, 31.500000655651093, 76.0, 22.0 ],
									"text" : "Return B ",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-94",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 2,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1172.25, 828.666670799255371, 72.0, 316.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 728.0, 64.500000655651093, 72.0, 144.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~[9]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "live.gain~[8]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"showname" : 0,
									"varname" : "live.gain~[9]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 814.0, 91.0, 53.0, 49.0 ],
									"text" : "scale 0 127 -70 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 701.0, 91.0, 53.0, 49.0 ],
									"text" : "scale 0 127 -70 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 619.0, 91.0, 53.0, 49.0 ],
									"text" : "scale 0 127 -70 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 537.0, 91.0, 53.0, 49.0 ],
									"text" : "scale 0 127 -70 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 458.0, 91.0, 53.0, 49.0 ],
									"text" : "scale 0 127 -70 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 381.0, 91.0, 53.0, 49.0 ],
									"text" : "scale 0 127 -70 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 297.0, 91.0, 53.0, 49.0 ],
									"text" : "scale 0 127 -70 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 217.0, 91.0, 53.0, 49.0 ],
									"text" : "scale 0 127 -70 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -6.0, -7.0, 74.0, 20.0 ],
									"text" : "control input"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 9,
									"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ -64.166666666666629, 581.0, 660.333333333333258, 22.0 ],
									"text" : "route 120 121 122 123 124 125 126 127"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 497.0, 622.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 417.0, 622.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 336.0, 622.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 254.5, 622.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 177.0, 622.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 94.0, 622.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 17.0, 622.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ -64.0, 622.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-91",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, -17.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 10,
									"numoutlets" : 10,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 139.0, 22.0, 740.285714285714221, 22.0 ],
									"text" : "route 56 57 58 59 60 61 62 63 7"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 813.0, 61.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 700.0, 61.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 620.0, 61.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 539.0, 61.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 457.5, 61.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 380.0, 61.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 297.0, 61.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 220.0, 61.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 139.0, 61.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 139.0, 91.0, 53.0, 49.0 ],
									"text" : "scale 0 127 -70 0"
								}

							}
, 							{
								"box" : 								{
									"channels" : 1,
									"fontface" : 1,
									"id" : "obj-8",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 699.0, 220.0, 74.0, 318.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 568.0, 64.500000655651093, 68.0, 146.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~[7]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"showname" : 0,
									"varname" : "live.gain~[7]"
								}

							}
, 							{
								"box" : 								{
									"channels" : 1,
									"fontface" : 1,
									"id" : "obj-7",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 619.0, 220.0, 74.0, 318.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 488.0, 64.500000655651093, 69.0, 146.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~[6]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"showname" : 0,
									"varname" : "live.gain~[6]"
								}

							}
, 							{
								"box" : 								{
									"channels" : 1,
									"fontface" : 1,
									"id" : "obj-6",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 539.0, 220.0, 74.0, 318.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 408.0, 64.500000655651093, 70.0, 146.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~[5]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"showname" : 0,
									"varname" : "live.gain~[5]"
								}

							}
, 							{
								"box" : 								{
									"channels" : 1,
									"fontface" : 1,
									"id" : "obj-5",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 459.0, 220.0, 74.0, 318.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 328.0, 64.500000655651093, 71.0, 146.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~[4]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"showname" : 0,
									"varname" : "live.gain~[4]"
								}

							}
, 							{
								"box" : 								{
									"channels" : 1,
									"fontface" : 1,
									"id" : "obj-4",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 379.0, 220.0, 74.0, 318.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 248.0, 64.500000655651093, 72.0, 146.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~[3]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"showname" : 0,
									"varname" : "live.gain~[3]"
								}

							}
, 							{
								"box" : 								{
									"channels" : 1,
									"fontface" : 1,
									"id" : "obj-3",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 299.0, 220.0, 74.0, 318.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 168.0, 64.500000655651093, 73.0, 146.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~[2]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"showname" : 0,
									"varname" : "live.gain~[2]"
								}

							}
, 							{
								"box" : 								{
									"channels" : 1,
									"fontface" : 1,
									"id" : "obj-2",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 217.0, 216.0, 74.0, 318.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 89.0, 63.500000655651093, 73.0, 146.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~[1]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"showname" : 0,
									"varname" : "live.gain~[1]"
								}

							}
, 							{
								"box" : 								{
									"channels" : 1,
									"fontface" : 1,
									"id" : "obj-1",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 139.0, 216.0, 74.0, 318.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 9.0, 63.500000655651093, 70.0, 146.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"showname" : 0,
									"varname" : "live.gain~"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-58",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1663.249995946884155, 1139.333365678787231, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 562.0, 59.500000655651093, 74.0, 150.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-57",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1686.583324193954468, 1122.333365678787231, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 483.0, 59.500000655651093, 74.0, 150.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-56",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1673.916693091392517, 1132.000004529953003, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 404.0, 59.500000655651093, 74.0, 150.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-55",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1684.583349585533142, 1134.666671276092529, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 325.0, 59.500000655651093, 74.0, 150.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-54",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1672.25002133846283, 1134.666671276092529, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 246.0, 59.500000655651093, 74.0, 150.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-53",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1666.916693091392517, 1139.333365678787231, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 167.0, 59.500000655651093, 74.0, 150.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-52",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1682.583349585533142, 1122.333365678787231, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 59.500000655651093, 74.0, 150.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-47",
									"index" : 9,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 700.0, 146.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-46",
									"index" : 8,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 620.0, 146.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-45",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 539.0, 146.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-44",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 457.5, 146.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-43",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 380.0, 146.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-42",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 300.0, 146.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-41",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 220.0, 146.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-40",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 139.0, 146.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-39",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 859.0, 577.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-38",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 827.0, 577.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 705.5, 695.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 585.0, 225.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 64 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[25]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "Pan",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[7]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 695.0, 765.66666704416275, 50.5, 22.0 ],
									"text" : "pan2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 625.5, 695.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 506.0, 225.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 64 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[38]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "Pan",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[6]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 615.0, 765.66666704416275, 50.5, 22.0 ],
									"text" : "pan2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 545.5, 695.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 427.0, 225.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 64 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[44]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "Pan",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[5]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 535.0, 765.66666704416275, 50.5, 22.0 ],
									"text" : "pan2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 464.0, 695.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 348.0, 225.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 64 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[43]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "Pan",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[4]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 453.5, 765.66666704416275, 50.5, 22.0 ],
									"text" : "pan2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 384.5, 695.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 269.0, 225.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 64 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[39]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "Pan",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 374.0, 765.66666704416275, 50.5, 22.0 ],
									"text" : "pan2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 303.5, 695.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 190.0, 225.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 64 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[42]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "Pan",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 293.0, 765.66666704416275, 50.5, 22.0 ],
									"text" : "pan2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 225.5, 695.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 111.0, 225.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 64 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial[40]",
											"parameter_modmode" : 2,
											"parameter_shortname" : "Pan",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 215.0, 765.66666704416275, 50.5, 22.0 ],
									"text" : "pan2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 156.0, 695.0, 27.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 30.0, 225.500000655651093, 27.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 64 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.dial",
											"parameter_modmode" : 2,
											"parameter_shortname" : "Pan",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "live.dial"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 135.0, 765.66666704416275, 50.5, 22.0 ],
									"text" : "pan2"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 813.0, 192.0, 76.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 811.5, 31.500000655651093, 76.0, 22.0 ],
									"text" : "Master",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-18",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 700.0, 192.0, 75.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 562.0, 32.500000655651093, 75.0, 22.0 ],
									"text" : "Channel 8",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-17",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 620.0, 192.0, 75.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 483.0, 32.500000655651093, 75.0, 22.0 ],
									"text" : "Channel 7",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-16",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 540.0, 192.0, 75.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 404.0, 32.500000655651093, 75.0, 22.0 ],
									"text" : "Channel 6",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 460.0, 192.0, 75.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 325.0, 32.500000655651093, 75.0, 22.0 ],
									"text" : "Channel 5",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 380.0, 192.0, 75.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 246.0, 32.500000655651093, 75.0, 22.0 ],
									"text" : "Channel 4",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 300.0, 192.0, 75.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 167.0, 32.500000655651093, 75.0, 22.0 ],
									"text" : "Channel 3",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 220.0, 192.0, 75.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 87.0, 32.500000655651093, 75.0, 22.0 ],
									"text" : "Channel 2",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 192.0, 75.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 9.0, 32.500000655651093, 75.0, 22.0 ],
									"text" : "Channel 1",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-9",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 2,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 827.0, 229.0, 72.0, 316.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 813.0, 64.500000655651093, 72.0, 144.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~[8]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "live.gain~[8]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"showname" : 0,
									"varname" : "live.gain~[8]"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-10",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1656.583349585533142, 1139.333365678787231, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 9.0, 59.500000655651093, 74.0, 150.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-59",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1654.25002133846283, 1123.666671276092529, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 561.5, 212.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-60",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1677.333349585533142, 1140.666673064231873, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 482.5, 212.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-61",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1666.916693091392517, 1137.000005006790161, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 403.5, 212.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-62",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1677.333349585533142, 1129.666698813438416, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 324.5, 212.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-63",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1684.583349585533142, 1137.000005006790161, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 245.5, 212.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-64",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1672.25002133846283, 1137.000005006790161, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 166.5, 212.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-65",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1666.916693091392517, 1141.666699409484863, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 87.5, 212.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-66",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1684.916693091392517, 1150.333338737487793, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.5, 212.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-67",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1658.583349585533142, 1129.666698813438416, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 813.0, 59.500000655651093, 73.0, 151.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-71",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1686.583324193954468, 1127.000033020973206, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 9.0, 32.500000655651093, 628.5, 22.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-99",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1674.750021576881409, 1130.000060439109802, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 726.5, 58.500000655651093, 74.0, 150.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-98",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1663.249995946884155, 1122.333365678787231, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 650.0, 58.500000655651093, 74.0, 150.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-108",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1654.916677832603455, 1152.333337664604187, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 561.5, 288.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-109",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1672.666693329811096, 1132.333364844322205, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 482.5, 288.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-110",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1683.333349823951721, 1135.000031590461731, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 403.5, 288.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-111",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1671.000021576881409, 1135.000031590461731, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 324.5, 288.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-112",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1667.916677832603455, 1140.666672348976135, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 245.5, 288.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-113",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1665.250036597251892, 1145.333366751670837, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 166.5, 288.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-114",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1680.583349585533142, 1154.000006079673767, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 87.5, 288.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.494117647058824, 0.541176470588235, 0.556862745098039, 1.0 ],
									"id" : "obj-115",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1668.25002133846283, 1154.000006079673767, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.5, 288.500000655651093, 74.0, 74.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-125",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1666.166650176048279, 1138.333394408226013, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 811.5, 32.500000655651093, 74.0, 22.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-124",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1674.333349823951721, 1122.333364248275757, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 648.5, 32.500000655651093, 154.0, 22.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1690.916693091392517, 1154.666698813438416, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 0.0, 897.0, 398.000001311302185 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"midpoints" : [ 148.5, 651.333333522081375, 144.5, 651.333333522081375 ],
									"order" : 2,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"source" : [ "obj-123", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 1 ],
									"source" : [ "obj-127", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 1 ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-191", 0 ],
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 1 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-191", 0 ],
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 1 ],
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-151", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"source" : [ "obj-152", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 1 ],
									"source" : [ "obj-154", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-191", 0 ],
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-157", 1 ],
									"source" : [ "obj-156", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-157", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 0 ],
									"source" : [ "obj-158", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-156", 0 ],
									"source" : [ "obj-159", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-161", 1 ],
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-191", 0 ],
									"source" : [ "obj-161", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-163", 1 ],
									"source" : [ "obj-162", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-160", 0 ],
									"source" : [ "obj-164", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-162", 0 ],
									"source" : [ "obj-165", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-167", 1 ],
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-191", 0 ],
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-169", 1 ],
									"source" : [ "obj-168", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-166", 0 ],
									"source" : [ "obj-170", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-168", 0 ],
									"source" : [ "obj-171", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-173", 1 ],
									"source" : [ "obj-172", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-191", 0 ],
									"source" : [ "obj-173", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-175", 1 ],
									"source" : [ "obj-174", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-175", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-172", 0 ],
									"source" : [ "obj-176", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-174", 0 ],
									"source" : [ "obj-177", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-179", 1 ],
									"source" : [ "obj-178", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-191", 0 ],
									"source" : [ "obj-179", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-181", 1 ],
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-178", 0 ],
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-180", 0 ],
									"source" : [ "obj-183", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 1 ],
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-191", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 1 ],
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-186", 0 ],
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 1 ],
									"order" : 0,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"order" : 1,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 1 ],
									"order" : 0,
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"order" : 1,
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"midpoints" : [ 226.5, 651.333333522081375, 224.5, 651.333333522081375 ],
									"order" : 2,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-20", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-20", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-20", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-20", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-20", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-20", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"midpoints" : [ 176.0, 797.66666704416275, 525.75, 797.66666704416275, 525.75, 209.0, 889.5, 209.0 ],
									"source" : [ "obj-21", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 144.5, 797.66666704416275, 483.5, 797.66666704416275, 483.5, 209.0, 836.5, 209.0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 2 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 2 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"midpoints" : [ 256.0, 797.66666704416275, 565.75, 797.66666704416275, 565.75, 209.0, 889.5, 209.0 ],
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 224.5, 797.66666704416275, 523.5, 797.66666704416275, 523.5, 209.0, 836.5, 209.0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 2 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"midpoints" : [ 334.0, 797.66666704416275, 604.75, 797.66666704416275, 604.75, 209.0, 889.5, 209.0 ],
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 302.5, 797.66666704416275, 562.5, 797.66666704416275, 562.5, 209.0, 836.5, 209.0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 2 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"midpoints" : [ 415.0, 797.66666704416275, 645.25, 797.66666704416275, 645.25, 209.0, 889.5, 209.0 ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 383.5, 797.66666704416275, 603.0, 797.66666704416275, 603.0, 209.0, 836.5, 209.0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 0 ],
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-157", 0 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"midpoints" : [ 308.5, 651.333333522081375, 302.5, 651.333333522081375 ],
									"order" : 2,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 2 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"midpoints" : [ 494.5, 797.66666704416275, 685.0, 797.66666704416275, 685.0, 209.0, 889.5, 209.0 ],
									"source" : [ "obj-31", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 463.0, 797.66666704416275, 642.75, 797.66666704416275, 642.75, 209.0, 836.5, 209.0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 2 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"midpoints" : [ 576.0, 797.66666704416275, 725.75, 797.66666704416275, 725.75, 209.0, 889.5, 209.0 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 544.5, 797.66666704416275, 683.5, 797.66666704416275, 683.5, 209.0, 836.5, 209.0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 2 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"midpoints" : [ 656.0, 797.66666704416275, 765.75, 797.66666704416275, 765.75, 209.0, 889.5, 209.0 ],
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 624.5, 797.66666704416275, 723.5, 797.66666704416275, 723.5, 209.0, 836.5, 209.0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 2 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"midpoints" : [ 736.0, 797.66666704416275, 805.75, 797.66666704416275, 805.75, 209.0, 889.5, 209.0 ],
									"source" : [ "obj-37", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 704.5, 797.66666704416275, 763.5, 797.66666704416275, 763.5, 209.0, 836.5, 209.0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-161", 0 ],
									"order" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-163", 0 ],
									"order" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 388.5, 651.333333522081375, 383.5, 651.333333522081375 ],
									"order" : 2,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-167", 0 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-169", 0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"midpoints" : [ 468.5, 651.333333522081375, 463.0, 651.333333522081375 ],
									"order" : 2,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-173", 0 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-175", 0 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"midpoints" : [ 548.5, 651.333333522081375, 544.5, 651.333333522081375 ],
									"order" : 2,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-179", 0 ],
									"order" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-181", 0 ],
									"order" : 1,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"midpoints" : [ 628.5, 651.333333522081375, 624.5, 651.333333522081375 ],
									"order" : 2,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"order" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"order" : 1,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"midpoints" : [ 708.5, 651.333333522081375, 704.5, 651.333333522081375 ],
									"order" : 2,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-87", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-87", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-87", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-87", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-87", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-87", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-87", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-87", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"midpoints" : [ 79.5, 296.5, -54.666666666666629, 296.5 ],
									"order" : 1,
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"order" : 0,
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-94", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-97", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-97", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 219.666666150093079, 1260.000037550926208, 902.66668975353241, 373.333340644836426 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 1020.999999046325684, 427.333330154418945, 300.0, 100.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, "C74_VST:/Battery 4", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "Battery 4.vstinfo",
							"plugindisplayname" : "Battery 4",
							"pluginsavedname" : "C74_VST:/Battery 4",
							"pluginsaveduniqueid" : 1312973108,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"sliderorder" : [  ],
							"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
							"blob" : "52802.CMlaKA....fQPMDZ....A3jPgQC...P.....AbDZuMGcfPkbgklafrTZzA...................3rAF3L.......P.....nMWZtE..........KzbFAWRSNERouhD7P5ZLkaI.........DMURNYG...P.....HA.........QSkjSpA...D.....F.........PzTI4T.....A....D....P.....A....D....................PChUVgA....3.bP.......A....D....................v.....v..L..C......................D....P..........PzTI4Tc....zzL.......P.....nMWZtE..........9YDugTMqI4lkI49iC1rp1SPy........DMURNUG...P.....TyL........QSkjSyA...D.....F.........PzTI4T.....A....D....P......LJy........A....f1bo4V..........vyUafH7VNzwGBk4Qiu+TcEF.........PzTI4T.....A....D....P.....A..........MKkjSC....7Dy........A....f1bo4V..........rWvrH263AT5rBRIeOtHx95e.........PyRI4z.....A....jF.........DMURNUF...P.....z..........QSkjSpA...D.....F.........PzTI4T.....A....D....P.....B....D......I....D.....B....z.fK.DC.t.fM.3B.x.vM....A....P..........DMURNwF...fbB........D.....ZyklaA.........vOHLVWwtaSmW3UDZmQgreNBI.........QSkjSrA...D.....F.........PzTI4T.....A....D....P.....B....D..........O....bD.nAva.LG.zA.H.PE.xAPX.jF.tA.H.rD.oA.c.HA...fS.DF.zAPZ.XG.kA.H.jD.tAvb.PG.xAPc.zF.kAfa.PG.yAfD....NAPX.PG.oAfc.TF.f.PR.3F.yA.c.HG.0APa.TF.tA.c.LG...........v++++++++++C....................P.....A....H....vA....BAPX.PG.zAPY.HG.4AvB....HAPX.vF.iAPd.7F.tA.H.LE.qAPd.L....PD....KAva.3F.zAPX.rF.zAPR.3F.yA.c.HG.0APa.TF.tA.c.X.....W.nC.KAPZ.PG.yAPD....bAfN.rD.oA.c.LG.bAfN.TE.xAfX.DF.tA.H.rD.oA.c......vA....G....vE..AvX.7F.rAva.HG.A.....C.Q....vE..A.Y.TF.1APZ.LF.kA.c.jG.vAPY.XF.rAPX.bF.yAP.....w.vB....bA.P.LG.uAPc.3F.jA.c.jG.vAPY.D....vM.b.....W..D.zAPY.zF.vAva.D.....L.X.....W..D.1APY.HG.rAfA....w.fK.bC.t.PL.PC.F....vE..Afc.TF.xAPa.X....PL.3B.2.fK.DC.z.vA....bA.P.XG.oAvb.jF.hAP.....v.P..........H.....QSkjS4A...fF.........A....f1bo4V..........HjIhhFschD2etJIHOMtVCGN.........PzTI4Td....A....fA.........DMURNE....P.....A....D....P..........D..........A....PzTI4Dc....bcL.......P.....nMWZtE..........XARtG3RjMYifqKp2lDP4Kyxw........DMURNQG...P.....SbL........QSkjSyA...D.....F.........PzTI4T.....A....D....P.....AnjbJ.f1FC..injbJ..P..P.fTv.nMWZtAzA.A.DVRO5IancBYUoadtbdhmpGfAXUT...PzTI4DPi.9AC.D..sA.sARBAXebf2vTPXQjpIRhwJzKwho31dexl4owfdBv2.zTfewY.MB.9A5MGL..gLlB.Dvbff.P.DP.p.lAA.3O.MfD.Sc..z....fS.TF.2A.H.fB.jARBRXF.gAPc.vF.zAPJ.TtXJ.vQ.HAHiD..P.x.B...+CB..4EH.HfA.nAPF..XfMA...H..4AP..jCfe2GC3C.0i.PGJ...B.f..zs.H.HKDTB.P.HG.PAfL..F.x..b.HC.TJ.j.HGDDk.r.HG..CfLPPZ.fCfb..O.x..0O.Q.xAAo..S.xA.PAHC.PEfL..V.x..bAHCDjj.jAHGDjD.rAHG..GfL..c.x..3AHC.vGfL.Af....DBHC.fHfL..i.x..PBHC.PIfL..l.x..bBHC..JfL..o.x.A4I.q.xA.vBHC.PKfL..t.x..7BHC..LfL..w.x..HCHC.vLfL..z.x..TCHC.fMfL..2.x..fCHC.PNfL..5.x..rCHC..OfL..8.x..3CHCDx5E..P....AAx..HDHC.vPfL..DAx..TDHC.fQfL..GAx..fDHC.PRfL..JAx..rDHC..SfL..MAx..3DHC.vSfL..PAx..DEHC.fTfL..SAx..PEHC.PUfL..VAx..bEHC..VfL..YAx..nEHC.vVfL..bAx..zEHC.fWfL..eAx.B.F..HhUB...hAx..LFHC..YfL..kAx..XFHC.vYfL..nAx..jFHC.fZfL..qAx..vFHCLjI.3FHG.vafL..vAx..DGHC.fbfL..yAx..PGHC.PcfL..1Ax..bGHC..dfL..4Ax..nGHC.vdfL..7Ax..zGHC.fefL..+Ax.BJI3B...vEl9.LEHHA.HgfE.uDBV.H.Hj.P.ijgPZDP.PIVHfO..fCiDfSfZ.LCHpA.Mf2kZ.TCHpAfMf2kZ.bCHpA.NfOkZCIZfqBPNfnF.wLhCgKUqDs.frAPLfD.PtINUb.9.tIjG.Di3UAB3C3lPh.PLhWEIfOfaBYB.wHdUn.9.tIjJ.Hi3eoB.x.R1.4l3doB.xHlJ.Hi3eoB.xHlJ.Hi3eoB.xHlJ.Hi3eoB.xHlJ.Li3eoB.yHlJ.LCH1Q9SDOvM..gToPuI6AD.BjB.B.TC.DEZ7BLE.C..Bfl5fB.RoL..UGkBnHHRXeVs.IC.AfjOIoQRbqN.O.jR.AAHh.B.CDfM.rIH4.DEADvpmMNP..P..8.XT.tB..1Ff...A.XIGgGPCD..A.7TfO..IUKH.LD3fQBP.DP.HBhAI4I.GgBP.7FJXbTy.PEJj.PXnvD.tcR1.rDHG..cfLRA..TfnXVPf.G..Bl3...HGLP.+AvefbV.vC.3..PRilFt.A.PmAfPfbD.zAR..TFHQAPdg.K3A..3AXOf..zCBzITJjheAnY.fHw.R.P.kjldnPSPHYjufA.Hb.Xf.AC...B.JMC.XnVTA.fjoQQRXb.MyLuO9nv08.BQIcHnDojSfA.3HPjR.AfQp4EH4YvYlYxO9nvEfdNA.7ippphJD.x6D..FEExOfHEHM.rTJkJX..NBRAzk.LDfWh.D.fOJb7Cw0iJP3.lUfPjRiA5kJIOX.LP.GDHkf8AvbCj9.HDH+.B.D.A.45QwfBTHA.RPJkKnAEp1f7....DGf..vAsjb.vwZPJ1hD.LPA..ngXL.kLxNfzRfbsjh.C.HZAB..2yR.CvDAxG.PAxVfvw.5.PTA.RHg8I.mBBBfJzRQCF.CD.a.GHPkBN.BAfffr..VnVSoX7....f+BxQ.BPB.13O8+.fCA.PbtxP..H3Cr.Hi.BIBADP.nPIIIgOkjjj9faaaCxAHHwOtssM+faaaABpA.3O.Ox....HBCBXfL..LBx..XIHCjvlBC.fcJL..6ov.wLHvuDtf1ZPT.L.fLMH..zH.cfPh.PEr8HHvaf3YFEPjBWuf3bB.9ydT3hOc8nv9.BRK0MnHEfD..d...dAHwjk..wfPrT8A.3OA0KPLI.RgqCPwAz.f.fPUAD.BTD.QBBB.D.fXJzCMoE.BsBn.LGHCAPLgHC3Azk.nE..gTH.hARAf3GHNBhm.633ATR.50EXkAN.WKTii+OIk...CUB..DdEVBfLgmhk..P3BbL...B.g+OSVBvLgX13lzB...t.v...f.P3+ihk.Dv3ZzB.zDhYg+ObVJ0zl6vVSIP3AXoQ+AfNH1h4AnM3T7CRDB9L+LkdfOyOSYK3y7yTxCNF+P0Bg9CUVRk7mGvlTgE30DDUVBdMAkDyfWSPKsI30DTUPAdMAINGKFNEKJtFMVfA.zC+..vJLTPG6C..6oB3k.vGJHTXzQWYxkGHz.RKfLEauQGHw.BJGI2a0AGHSQWXxQ2Gf7Dbzk1atMWJJDTczg1axoCHNEFcoYWYfjjayQmb001Ak4FcyovUxkFHDofafHVd5.hRuMWYlADIfTEAkIGHn3FnI7QKyMlboAGc.cWYh4BYkkhBM8FYoYVZkQlNfzTXxMFZfrfLr.hLvDiLJXUYxMGHvk.Hw3RNt.SLfnfJfeB.BzmBJ.hOejlaoQmBILUQT80PO4DQIQURO4DJN8zWSk0TeM0PRkDTNP0WGI0SUA0WSQUPRQEHo.dEpbfTLM0WTIURGAzIIzVYyMWXmUFJhHBHznfBIPVYiwVXxUFHiExHNPGHjLUPVUDQeEyWWkDUHAZXLPTVNETSIMzTfnSOf.C3H.CHDRfSD8kSRAxLfER.zDC3QHB.x.pH.HC3IHB.AAd.DAPBfbV.zLC3PHBPDAjhAPCMf2fHB.0SSAN.KBPMfGgH.YDPnAfMAQ.3HXBACk0PLUDHUCjH.DCXhD7IFTWZeM2coQWHv2.IxUlckImXe8lauYlYlA9Dg.HLenfBIjlYnbVYz8UYtcVZtU1WvElbnPRQNcTRNUzWPEjTB70TEEBASTjQFUzPT8kPYAUPSMEKfzRLr.BLfHP.o.BHHR.Hg4FYf.tJ.AzPfATHwCPBfWfs.AdHTOPYrMWYfyvFgzL.kABc.jFHeCT.gKPAMvVXhUFafPBcxk1YmUlbf5f.nDCK.QF.yAB4EPWY3QGHn.dAeH.KhPEftHdA6ExTCHVczQmH0y.IC8lajEyWyQWXzU2bfSfafO.H.HC3W.BAeI1azgF3SPh.KUVdfOgGILTYrw1WmIWYk4F3MLHPdLfbkQlBfSPGgBwHHE.YoQjb.HCnQDdBS.9AhD.Kh.j8fQS.fHS3HnAIhBPcgGvY.0.AJjPXjQFXIPvWoQWYsEt.kATGKvhHN8FckAxStIBKvDB7fugJBXlYhD1s.rG3UvBHkR.cx8FarExuCvhLozG3AzO.kHbA.8WHXcvaxU1VwHCNcItAxXfcgwVck8UYfjN.fD3PG3jbn.CKwHyMfwm3IrUXmEnUga.Q.fB3BrAHWNPYrwlNAdCPA.vdkCPLA.RLfPJ3KjE.iELo.DC3M7UHRA9Ah.hY.SS.fDCfrAt.wBD9fSfU.AQ3IvG3BPEPfb.KhDDa2EVdyEdCoBNBrHvStAhH3FnpgePpfu.Kf.a3B7J3ZLi.R8Vciv9.R8lXoIBO.LC3aDiACk2XrUFHRQBlD7VahvBMfHS3DXQ3CDOAr81ces1H2cxmgG.8jKPJfCvGCvhHL8FXnC9DMM.ZocFZfSgSfG.HCvhHHkF3X7z.iQmbrANDZBHGfzN.CANESBTv.pB3RHNff.13.LDHyANEPA1v.BC3NDE3BDBXlCNFRI.buMGYnAZT..SHJFhYgKfgfG.HBvhHPAJK.Qp3Bvd3CTcJoUxaA3lb.8T.wvx4.fC3GTE3AXRHEI1LA3jbCZD3NbU.CMTIgAjkfj+IDPLI.EgoYAd.gHBt.oh.fLzP.JEPAPt.D.fLje.ACoG.fLd.w.fLfAw3R3AffLtGrBLKiyAqfK.KiCBq.Oy3gvJvwDHdiSBq.Hi3NbmPpODy.HiXHSTkhTT3PvrXkBlKf6fSfG.HhUL3.7D3PD0XT.9CMAHGf793d3J3ObDPjC7RjH43XrEXECHLfOw4.FBXnCNFRMN.MBXTiKgqf.03i3JHOM9FtBRUBVyHthjlgCAjiCPiff03V7JHSAfTC+J3ELE.kXN.EuhvnOfQDSB.kDjjBgD3N3QXABtDe.jOg4G3S7C3S.R3.7H3N.D4AbN3M7K.xcRJk0B3R3AHiA9CeDRYf6PNgGPNK0Q5A.X3HjC3N3Q3.jC3N7Q3.jC3N7AX+DVNf6.HfTsg3AtCeDN.4.9CeDZNfOgGfLF3O7QH4.tC4HjKLBGHFDd.3Dt.5.nlBzVX3AJHlCP4p.d3.7E3APh.uwFYfmAJELVcxM2axA9Dm.vXfSAG.L1od.nrfKPj.n.3BHI.gIBafmAZ.ZB3IjD3FfDP+C9EZCDb.cB3HTI3FrDPGAdCmTvdI4TRTAxYwV1eA0I.w3To.HyKuWXXfSfDfPgPZBzD.HC3IXB3.HAHlHFmfojKTCFMfGPDuH.faAd.R.fMf7FHU.FDfYD3DTCXQ.dA0.lDfViHHJH6fCvafCPDfYBHKAX.Dz1a1U1Wir6RmxBcnPf6.3e.rHSZDAtBgHDxOABHgrj0fqPHuO..fTxRJCtAkbhXgTJXEkRWmvK3F7Q.CU1yBD.Ky.NDe7x.fzAHCBNB93LDs0a.r.iaIBtAgArHI0HHCBRQgLA3FLRHY3RKy3TqmBdCIAt.k.FS.5F3Hvjvm.PLfBB3FrFYAKzQ.+A3HDhXK.bGfaPO.wE3S7AXcANAf.NBBIN.h.tChQXXKoF3M.L4.LAfe.BXfifXgCPJvxI3NfTv0oJNgawS.HCnfDtAQ.V7A8Dve.NBgDlC.2A3FzS3.7D3N7AXcANA.ANBBEN.OAtCBEN.OAtCeDN.OA3Gf.F3HHV.iU1HkHtDiC1GA3lbgBB3ADG4.XA3ALHQ7RhEF+T.jDF3BrPYWU.ZkwFbkIG3BTQ.oQF3Bvf.jUmb1bM.uIu.vJPIgwVHDAPYFuXjOBd.dAvXWUPPeBt.Tb.YkYVX0wFceA9.bHPagsFMpZE0.L2MhDSdfG.GiDKIB.PXmbG3.3gKaPC0fSfH.KW.krVYlBvbfePhAJfQMDvarAt.Qm.buwVdvg1atk1XxG.+BPWZsQio.CE3CDhIkOCr2TO3I.6oYBRHmC.b2c.3FbMnl.zgl0K3RLxPBBHIgD.3NbDHiTjon7D3LLxQn.hHfOgQfJB3WTjHkCNFFAzHfewQfWA9iCvB.Kc3Lfe3GLDH5C9DmD9.RBtEpDNAq.9DSABJfGP5f6.JglU3AvG3UbB3b7TPhANGPADJfyQTgC.jgnw.Jj.IgQDHnDGA2gVZrU1HhY.H7.BINUUSYRJ.SAxH.j.9UzkltjMyCvBIgwR9Svt.rzRLXEiU.APBwQG9NLK3FTkKRAdFWAdIRILUgfcneQvVjDVWo.FZ5O.e.EK3vjUnPBtBYAfLf6RVhWvXfgE.f.3r5Gf5fyhrfhE.xLXhfq.V.HC3xfkPbFdBkATr6ZE3vHKPYAfLfKvrgGvB.kE.x.N.YocaCjPZtMlHkGhz.EgXzCBE.nP4.vu.jHlBiuwDuKvEfKv0CoD.eseAHsBe.Tz9BnXWUAvW8bVBTUjTIEzWM8DQEADr..Cn9SvbkwVYigCIf2PWfLKAIjvXgMGHjBtAGUvSN80REkEPd.PBuAURc.dAVB9HUBhRC7USI4D3CfIHWkFFfm.VfSx6fkU.AgE3EjU.oYFHvCNCcA.OP5A3FPWXF.tDPF9BADlFAAOWvEdDDkC3FPkTOwDSEIEPk.PBOwc3EXD3jzN3AzD3E.OXfplXfOCW.LT3OLJ36jU3FLp3LPmmKWnJDH0SBkjSANyHP1VVfSC2+YR.CwjWpVB9i4A.qnBwgI7fj.BCiKPIAHyWn8CQ0N9KCBPLiGwffKPWhwW3L3v3KLH3BfCHVNtKCBLlf.+3.TB3Efk3jT43BLH3Aj03ELH3Cz03BLH3BXQXF.tDPJl3CcK3BLSHwBPBgA73nLH3BPTHFANIsOdACBd.vCFnikB3yv03.LH3BfUXiB9NYM3ffCPVhy.cChx3QLH3yv83ELHXGNtBCF+.sMtHDxfTEwTQAMUQeQkTIczQkW.Hmu.nvGfNQpnPFLt.9WN.GIfTEYjp5HPRDgkHwQ3Jl7E7.nG3OrhPQGNChMd.WC2NBQ8akIVPf0.v1C9A7ARLhw.Xj.VrfGfCfCwLf+vfhG.xfgkXfAHUhTH3Q3DfzBt.s7htf5.3PHHn1Bt.z.1s.9.3PTC3LfqfDItAeFe..AHvlmPLgqPRuLHM9sDqgkD3A3.3M.oXoF+A6Cd.zH.K1vBU6BNBg3N.NJPLrTCHgnxEfSw0p.b.O0DHi.dBdtZSfSSmH8pf.O9..L4NgQf3AP83.bd3GjCf+LNA..tCqL9H.HGUhojPaCtCPE1EhkCXj.VrfGfCg2fsfLi3LbzHDN9B..HUi..3Q3z3B..fsLN...9Dy.1ohAOfz.t.O.dI3NtE..XWiC..fGAWhKPX.Ni3.rL3NLy3U...xLB..TSPwO9AhLN...fLi...0L9J..pmiB.3zz43D.f4CflXKA9.PDtCTF.HIf4a9PFJ2LdAbL5TCEJVsBDHpDlYnADsfevD3OP9.uR7DnSKnG0N03PPWQO.TByT.4R.v.hHZaNCYC9BDsO.1AlRApd7.XK3.HEHQE3Yf2fFgCfxqSfF.zBHjCdHHBZyp4A4AzVPyPCffgXHV4NCLBTtBj.IhAz9iIGQC.t.2.BggKvH.HVXi.Tl.jf8JrBPC8jk.j.f2BfXfo0a4BBCA.BOf.1XdBtAgAVIf2vXfOvQBMFXKAxW.sfZbBtAuKzCfux6fKvMfzE3MrH307N3BDF3B8d3BbZ3J7M4HHMX4ElLjC.xfOPP.3CwrJd.lJpzG0r3AzIvAK9AtCJDfa.KBQA3L7VPoEN.HCN.H.lmhGPvgKvMf6R3fOPPfSQ3fK.JfmQ3fO.KfWP3fKPFfqP3REL3GLd3BnE3QLNZAGHvybA4G3DfODtA4ATKgSyUf6wbfKP7fKvb.lNHqN+ACGV3Zqf9BjBP7amafKvDAo0W2CxD.oPQIQ1.fPkKvSJ8fePT.gjkJ.hM.Ll1kCzOaMEH..BOlTFH8.TCgCPHfG.qfMAXmYn1DoFfy.BffcAf+UNA8Cl0iefD.wH.9.X0C+B9CLOXe.jhfNGPnAJRGY43AbH3CbDfnA9Be7UPf..+CzBPcAzJD7VanDCKfqPMBMBHwTl+fvMH..52k75.fDCLv72+PHGf2.NB3FxS.oEuWBXRfqBeAdmgrD9.4AB.f6.dgDC3CjGPp76+P.L.I.tDx.zpgSgAhCPBfC.Bhufuqq.piC.vqW.0AEw5OPRLbCjsAsr.o41WfnI.mIzThC.q.vx4InH3ErE.rbtBJAdAg.PJ.4WHOVzR.AZ5BbBHg+4+Q7N3J3gXDDN...9C9tdAiCNAEC.L.t6ZSBzcm8H3EnIn7B9Dh.dT8dNBUDzC.Er4JPJ3EXqHvOJ3iSfBfNQ4CvG3EbiXHDtBpMT8gWShftbYmBN.FKBSY1V3NzGXFCzHfaPw.IA3UQrPVMnOiyfQlCvQgWfOBcr3Ob33fXD3NrknIpTjf6PHhO.h.Ix3RXD3C3w3DYDPXMtEFAtCh.dT8JpdB7TUNgu.TMdAFAtCSJ1exQh3F.HXSHRff6vMhgvnFAjHgGThft73NXDPqEtB8AlwCMC3FTLPR.dUDO9.F8eC+CPttWPTi.D7A3xjUBdAfPtFBCfBfKfPPhC3PHT3N7BHB8+B+O.tJ.mbkM2bkQ1WoQlBB5iQup4kf6.R..xI86tAIG9..CR6nPn3.rDRrD9ETFkfmFA3HjC3.fD.eINCEDvJwPidAAYR5Jl+fGvukGwefGxuA5pvTAtCQANC+BZN.+K3PnC3F7K5E7hIjpV.fUQPBLFcfTQXkAj5wqfaAdPQSA3KfXv3M7CXEAPBQl+e+mQaAw5YU.3DBHWYjATDEsTndBJFfC.K.oAnS.LKrcWvQBpMfyPp.sSXwBtIoBJZfKvofSfifJG.I.nvfSfFfNAn.AtAoBfahMDPFDvat82+dDf.t8Fcr7m.oclagvi.eUlc+8+A6QPQVUjSTkiLg3G6K.4AtUWaeUFak0FHqHvbnTxe+OvlBL0WA82+bDU.EQjYKH.YoM2e+ifEffo.uUGbfivHLgFHaoNC3G.IoEViD.Gagk2W.sI.n.ZiD3zSTUDKftvAVUDSOMTRTkkmIbT4.PGf594+bvd.oQFHXvRUMY93BjePjCJPAjDQfjA0vL.co0VY.twm+GPlFTETTkTSEoPn0JmptDTfS.TgDoAP0ExFqCPR.9SX1.jHfvQXyKjtDV13NfgHjO9AkZy1n7FHUCPBfMz5SdqPFQTjfgJ3Bv9PBKhSoefXfeC6f6fU.vB6APJ3NDhXSFxqA4HPhPlWs38XbMbRfmfGCoK3ALNvrC7AiWPFjHMTq7NAq9e.+GwVvvBHtAzSER1+.7eDF.d.X39BD.hT.Zyqs.TXimAehkmvbOBoW2v3GjJP8EzjCYBHXRNBeBdCu.Bj.DiU7BnYia.+.IUPkuNAZIlxAj.IfGvWfMDPyErRkwzhxJNAGMLMfufYAzUJfU35LHq.N8jSCIH.IP9AGBPKiYa.Ij.4arY.Ij.IGATpjSRhf..4KvH3K.bXV.NC9RX.fwTPKSdGA.9BhM9.ZDdEKAFi.s6+H7uAwMzKCsL3L7UfCBB.fyvwgCfgf.f4FDQvIBB.g2Aif.P3t7HH.DNIRBB.fyPygKPkf.P3YfY3TfS.rTB9.LJ3TbRvXBB.gGQPgGhP.jP3wLT3gPDHqjR6.Bv3ADNH.D9CVEeAlCD.gSPW8.M.aAx.gWAJgDU+Hjr3LHK.rDXdxUQ3HqW3gXGqK+dAXAD.lC.sqG.0gSgIFFAv3EDtxGP3fSANlbBnh4tAZy7RfSQOfGv5i+LFgFJ.A88+BPEP.fdA8.XCvKPAhy.7gq.nsg9NbFdEhEFnPcV3F7IPR.NFzIN.JFdtdRzvGhgXkCjCpQO4e77PSbN.CSBxjw74T3HIjRN.LCNEnP9.LCNEnX7Q.d7HitjBLl43TX14+++++++++GA3od45Fjy5JXy4T.Y5BTIRerd.y.NE0jljq8Q5FLIXSjBkfSQOISI5++++9SPaEasg.1.I9vNEKPt.xBB.jWPsfSANjiQsfSQODWKH.LOtB3zNE1m6anjooAe.AD3ogiPskWA8VMbjeFlrgg+S6CNE0DlrOgt4FbFPRHxIfSwNACKfnax1t+++++OBqQdE5Pd.rBB.j8JIpJuFmR1qqQ.4F.KXSPRrlCtXz2PklifRf.PXdUVzgLV3U.RXdUz9gaPW.IQ3iy04O7K3DbAPLXGH+JM.I.H.e9O.57Wx+2P1+Sv+.vSXbdb5.PxeU4Iu.QknVGNALBxH2MGX3Hn8fevG..x+J7uDYBrMnr0Xp.NBy706HwJfUCRwfl.HH.nZBM.3LfJ.lch9f0w+G7ODg8++I8ODAINAnDBr+ix+BjF.6EFqoGvoES5+E7e.ISjA+ev+D3JoXAvS+Cv+KDpPDBVSjPUg3BdDLI9ByA5DjTE3Nbifl+2+CvLPg7+.+O.ye++.KCNBbDDDBB7fEBzAfQJ3AHuwf.NOxCdDLAp2iSfYfNAHxCtC2.t.xCTHfCg7fO.Gfmf7.zGny+uB+SvFfm.8+8OAUDjHgWvRjT3+Q7eBpF3c+uv+IrJXI8eB+SfXfmfcDNN.I7uA+if0jAHnT78+HbM.J.RDA+NnZ7eA+mfAfRAvuTDffDym+m..ffvu+Kwlf4M3GHKXbAD+fihrf1F3C.K3ETIv2APBfaf3fIGnT.JQfifrftKnG.vd.Fp3AD7PM.va+yw+GX2.N8jSEMzo+Ov+yvPfnKbP.vxm+OCif1J3Rbx.xvhLoXBE.NY.8ov+C7uBZUfbkwVYgMmIrGVRe9eBcP.TAI0VvPzQ+9eBeNPBkgWZur.f9.fBfkxu+mvQCjDQfLx+C7eC3BzqfW.K.Px+D7+Ad.BNADFHma.QkiyE+Gv+w.eQVAPK.QaHkBxE.q2+.7+LP.zGfn6+C7uBBE.Hs7eA+KiTA.xJljO.p.zP+a0+GD8fDEVc+Gx+G.JZW8e.+e.o+2v+M3TPDJRofGfI.YunrShzhrN.uEnJfu.d.n.H5DL5Bm0+i7OB282+ePC3mXM3FrZH5APBfK.giFEfTUtBW.9BFKVuAg.7J78vBBNC274R+yv+ETvPPBhg.jf7OD9+c7+Aj7uI+WP2hCvt.wLPN+eB+2PQfuvwf0B3LT7+B7+AhHDe+Cv+.P++B7eCn74+.jsP+DNEpD.Kk7O.+evGfSwI+u7+.bc3FXIH.DNIYBB.geAmf.P3Y7oQIXTShuf.gOvmfSwIA+IH.T+Z6FdBJEdHKAxJkfNf.PN.m.D.g+PW++eC+ifwgOSfgGReri.g.qC5ADv5ILl3Lfca9XHzf.vPkvd.GKNEouRFfJ1IG7O.+qS.fChcfC.6ia8IglJ9AHMH..PIvQBzBAXCsKvBg+wofUjKzEtFmBmrgWfo.IA3XPW30U5+B7+CzPdNFSjzHB7Xq.jCKAH4f38PZbN.f+++C8OBUWdBvb9++++++++e8mJs2Gv3Hcx5Kn06Tr55BnER7rd.WANE0rNFWANE8jbrHlNHzUe.srNEMGopf.P6Lvd7.zJH.3dDVGeGyBB.wWisf..5++++zDB4EfH4THA4XfH3TzCwHBB.jGQLjGhLjmyLjGBMfrx7hffoq79+nBd3HXajQDOBTddEsoe.MLFVwQUTQBNE0LFVQ4W7MDI3TryvVc9veGu.le9+wfc3BLT3gPDHqPtHnqC62+eCwGNK5wFTf..8AXHH.rNC6QJpravhf.v+.r9sFVCyjWgNjG.qf..YuRhpe9OAxdNEJS1q+mv+GvBnS.hcfSQOfGv5nyFBgyRmfr53hfQnghNAADlWkQdHiEdEfDlWlGgCgCNWCofgVOFG.4vcfBDBfCvE.w.XU.PZe9+NB.PB.Bvm+OPT++++O9uBqQlB+qv+Cr1+I7OBL7O.+ivfwKPsEKM3Izx+b7uBYBXejLXgmCdDMUZypafjkUeIgCtC2T51+8OBSAjH+Ov+If5+.7OAwCdBd7+D+S.kxmvqf2S9EaD3IzDnkCtC4CtC2.9.4CjHfKQ9fOfGf2Q9AoD.u8yRfmvpg6v7loGZSIFal0THyCtDHA3Hfav7FQX3exN3OHePsEdC6.32f2f7f6PMgmT4iWfJ.zy++y2+Lz0m+2.FCgS3iw42+Kju.jv+F7eCW74+CrHfT78+MbA.J.hIfZJvZ7eA+2.YfavKI8.Hw78+IvNv5.l2+Ky+MnO3FHKncB9.vBdAUB7c.j.fMCdAb.JEfRD3HHKX6Bzw.l.HOCfBgJ5+.7+B0AfOfXCQyGTtmyvWfCfJKI1e+qPvEjvcgkFcn7eA+Cfb.4C3AnxHRVdA0ATXDjPBjU1X+uv+LvB3ADFfl.zR+qv+LLE3AXR.fvCfyBB.fWwI+9uDTCPBfGv+.j.3ZzUnQ.B.+uv+LX.3Hrz4Arl4nDG.O8OA+Kw+f..X5axbnO0YfXMPxBDqmSvafj8fDCD.fifHi4CHhHlT.n.HI.9.J.ls.QEf2ZtCGDBVm6PdgawAfGwSnOScfRNPbEtEG.9.hD9HGDjXm2PQg6vAmGfi.jPfSgFSh7.3RnDfiLBG+Ov+H3C5bLXn..TogaA.fOfHgOB.AgS39..3QnDfsGdC..tC0PJZgB.PjDtE..9.hDNF.LdA6TBM+Kw+TrOnBZ9AOYnCBN..q8O.+m1B+2v+Qzk4ADEHLIvPkwl4BLBnFApEFWxX8NNArCdA0.JHfZAv0XzN.A.4CD.4.7BXxC9ADC5QjwA3oPLn2AdABatA8Ct.ABPBfCCwjCPzfCfyfqPqh3EH7AvaGUfQTAxamnD.I.d.7.bQfdv+C7OEPWxE.P2m+i2k.nv+A7OEADGYAfBI+iv+TrWPrX.ICMzWNUUShjC.k7uA+Kzwe++F1Q9B1CxF.oYPu.JgfzTjdCnkfIW.JjPXpN9.PCRLfMg3CLNHSHIKmjHH+V50.Uy3J3LHeUeCzYy5.rzm+qSj.Y8+.7eB2+OE+GA1nWvM+Ov+PHC3OzGP9Eh+.YJPhLNAIGN.RCNBdHFmgC.J1yvLf368EnJ3DT7+G7uB8BtA3BRt+iv+yvH3FHB.r74+R35e+iyT.ka3KnE3PwcstAvSnCPfgPLXfidT9UlAiqvV+Sv+8XORknFjgqvrhTYHyRLcguhzfV+YmADSAEsg+bdRjANYtKTxCF63Lj6PaK9BdEx.h+f9iCRtf6vVh1cQ3CtCgH9.bCjHiKQtfOfGiCTt.QU3JPAH4NN.4BtCh.51ikK3NHB3QwsnCO9D4BtCSZTTlL7IoZhypOfKfMgLyBtC2HdKJCDSgGjzfV+3NjKPqEtBJCF7Ks.3F7NPR.9etO9.4RjijWf0jPOYGAVE.UdXQARECoKXTj9A0UDI.cT4afFXEAPBoaPN.ADnSj5fCEWw1AtAr.jFfNAvrjVF.UsSm.pMfyPp.sC3qjJnnAt.mpNAV.pb.j.3mjphG.jAO7laJjfBu4FH0k1W0AGYgQWR078+cnaZEghvvL3+D7eI4IHUA7Fa+ev+jbqJs.nF+Sv+j3L.J.LLfSPE.wRXTj9B1B9B.pRIe9uXn96+sEVH0+6+cnaASUDSEMDU+Cv+EoUfnm9BJCXc+Ox+lQ0+G7uZtoNEo76+afu4WTFHaVzbFwR5.j.XYB9HXZRr.70+H7uZw86+koD3IjE3jLOXZ84+koz+BvPXv8OB+ygb.g6+B7uYuCt.OOzr.A.3MLCHRF9BDHhJf.fPVNzSf.v4O.q5ErZ.IjfJfB9.7AzWgORSfGfS+Cv+owCX9EXploO3BnM3nz0+.7uYzGt.OE3EfuiVgefpgyvLlJ04EfDHEdN.N.tAeKvYkQ2+d7ObnI.HjD1+M7+a9CRWpf1jk.NEcYxA+9uHUH.TAI0+G7eavCHt+iv+pgM.f.N...PItavMfyfz.zEHuHxbfWP0fWwc+Cv+rgs3AHAHDAF.gOQXmC.sf3+w6A9.8CdBFBNA8Slz+Gv+xsQfbAxT.70m+u30+Gv+BzIfbEBXfSPWfiv3f2AWA.0S+8+hoBbWCA3xfEPBITt.IcDkno2fDDtHNULR+8eZT.TU.9UID6zxBRB3BzEXhHdCI6RpjDJPBAhlEiD3BnS3JDV3TfNHLUbRfC.mfjE4.nN3CnU3H3E3Yj0fcBt.YUdAHA9.cUt.HAt.VDnBfKQjgu.AA5QPGWtJHAt.7A.HffG3lT+3EfC3BfOXmRF7fO.XfeRWkCvRfOPVgwJ3HnU3kzJPYE9ArN9DnWdDJA9.dCNBCNdFPBFVi3N.xLd.PFBOij93HTB3Izk3T7X4FnTX.AvJk2gR.HS0NVjRfivzfWQckS.RfQmXcF9DaQB7PNKH3WLQfKffhq.MgmgUfLU3BT0e++TF.2UHaANAdANBfCdGcUTQ.HS3AP6P8QX4.8N+L7FHJCNBqEdAL8uD+2V8.80XcSVTkGfQlOPa4qQeKAXfjsd.eB3CtTC3BrDgHBXFAAC3BnAPDCHFfagPgf.3OTK.xHd.gA9T0B9.lEhdfCQsfKvIfWPsrufqgCvd++++k7+apQNG++e.+uUA+9uVEEayiC.e1WvSkz7XfQrchGPl++++k7+aCHtIY9eH+2U1xTm3.j4+C7uBeWVhfO.DFuf3Ez8+W7uabJOA0bhQRcK.w7uD+6FWzqPMlvmIUHODW9eB+OXk.4x9BL9HxANAEBHgya.O1E3QoLUPsS.TfKvFfCvEmLC3KXAP3ANDmBNACFdAIftArXt.metB103Zo8J.j72+nk4ZCK0WfKvMf.ZHJAlE.L2+B8uaXBt.gAFff2vXGB4m+i1rB8EcxBRj.sP5ovA3Q7d4..G3P8N3BDF3f8NiQvXb+8OePBVdhIRJhy3afKvk..x+J7+NcH5lpuvJhmvsf2.KBoL3L7VHGGd.HG9CQKt.mHtBAC9FgC9.AANEgCt.nD7niG.yCBKnPDhCfO.KfWP3fKPFfqP33Ik5LX13DTM4JjUP2thxj6fWj3RdcAt.f.nrhHMH1S.Lo.xaxALG5SfP.9A3LXiXt.ZFfivLkfDJNFdA2BhmHEL4IvO3AzIve.9BbBzFfivY.sIPX.DUfG.MfpIPX.NBw.Rl.gw+S7OaCJd.sstBvGDZjGP7+Gv+fINXFCDdfKvD.w1+98+a3vjoC07dVEx.gzIXSHzifKvDGJJHgCzKjav.mW.j.oN5LvRgGIfBIjPXp7++++++++++g7+.M7uA+GQetqPlmWPdfDCNuJfbkMWOlJYF8mQAfWPP.zkRmAd.D8HwfCAQHIxd3CtBDkTCncD5.rEJZolZfUAP5fVWfTARv.FE+++Q+OPxgMX5B7ZPyEtBtFhf+6v+QzH.O8O.+uvFAI5+C7uPLGx1LFESR+8+AN.3F.h3.Xy+.7efB76+DfoPZ.9LVlyr+9uFlBtAwAdBRB9Ag.t.SF.Lr72+VJCvTB9Ao.t.KATJffB3GDB3KrjLKC0W.e.3Fj9PJDtR.9O.+WXggafCfC.n+Cv+ERX3M.H3nXY3Y.H3.HI3RLYPVEPBJDdF.BXJffB3arT3E.HPN.vae9+atFPco8u.+uowzOPUfj06KLDshDVv+8e.+8+C+afTfOvRNmV4E7PSUANAxAxx.koPo3tBIUhf.0A3Kbq3.PYQy.9L0Bl0sqPxuPOHq9eC+OmujWPC.jvygSR.hC.Pf3iKAAt.lB.H+8+fl.d.sCNK3Id.tAxbOoK3WHmPUA5bffPHjEzSg6Pag2vQ0O0l.NL7EbYH0TuN1F9.GFhggygwhkv7+em0.X14D7P3bT73ALgTJJ9ARA3CiWfIwcon7Ex6fSfYh3GfxHd.UB3CfafPiSfRfWPsnC.WjLf3PrG3dTK3BrD3GTK3BnA3TTK3BbB3ET67Jfa4KfD4D..PpGxX0OoPA5Z3A3aPFViuqAGfaPOBuWuDg.D7.VC3GDE.xbhKf.v+C7efeGzgEYY8SfCHwnWJDQN.I78+NHz++Gw+BNbaLPjAsExHbV+++++LSVlrlO.wqWPl+2x+Ub83FjI.IzrUjP9RRA9.dP16J2GPGjoQ4yfSlCfrfWvnEAW933D3Nr0u+egw+SftfaPe.4GnXCDQjKPjff8+D7uFIB9.d.NA2CND99e.+qPAfPhYzoO.T.PI+9+atCDUuqfLfja.r81+G7OC3.dA4B51+Wv+L..3EHB3Qws+H.Fvfud.pAtCYmBOhZ64D.KnSHhxf6vMh2hx.wT3AIMn0mV4fC.7HogZvAzZgqfxfAeSUCtAuCjDf+m6iOPt0GPG0SmX.nvXuPdAvgBJoAOXUDjagoMHULDwfQQ8+eTXBcQ7Tb5Rtv9BdI+GcsFhFQ0mwEzziIDK82NDjEeDmB9.9nRUwGvo.HS7WbJ3CjCH3.eCYM18BoF.I3pYiOfufDK3HHmHDCPBisU7++++++++++++++++++++++2o+Gv+I3BL1F+LmBPI+Cv+EvVjfVe.thUCwJajA.d.yAS+RAz+P7u.YFG+3egvw3H3ALR7.Xp8FbN.JLi+fCvc+aw+ITM3..K3ELze+qfFf5JPFH+B1Cd.hARbg2jSfCP3gifS.HCHjCDlgelS1aQAfC.rgqhS.7l9AvTPPA9.OLESg.G3BDR.frRMmW.Hs8FYfHSvf94+sDLM9D.cx82+ILKPt.ziVYAvPA7CfG.TfCPDf2AT1OfT.SE3CLA3AfE3DTA3Yv0+A7+vA.jUfGPC.BE3B7.3YnD.C8O.+qCE.oD3Az.fJAt.O.tGJIfbkQF3.fDHK.t.FATCfm.QgWPh.fx+E7+zhCRRAjlYfavDiTMQRB9.X74+TSJvXHPByU1+P7+JK9+B+S8o..y+B7O0pVmcfaxO.DCf+.hA.9y15CdKFARi.ZD3m7CH3.PKfLHHB.3OCCOnNBtMMBdK9.LiftHPFTNBbDN.dGXwg+uwx+e.+u.rAn...B..R.xAe+u12KvLfL2e+qMlB.RL+CB..r.HY.vDfLv4AL6ouE.Hv.DM7Cf8fCPE.xRWL7u.+ePs.aw2+Cv2EIKJjAtACAN.U.dACAN.V.HbfMz+.7eAmK.HvTA3AzY+CDIntfdAmOBi.DAXt.zmfKvP.3.HT7+.+qg6EHCMF.vksABEC.F.nw1+x7O2CEvLf76+bOzGx.BJVUFauMVZzk2KI4Fb0QGHQUWXtQWZ5U1KLUlamQWBn8BSgQ2Xn8hTk86+M74+f7O2d0fSoM1ZoARSgIWZtk1Xr7uJ+ycaFDDbxkFafPy+K7O2sAfL+Wy+byF.j8+B+ysB.Hy+O7O2JnhWfa.LLXUQL8zWMkjSeMEHIjvNL9eB+uce.FR.AgEvg.fMf2vPDLTURYUQ.MBHDAvMfifHDvTPTMDR.0AH..BHAfiBl7VQY82+.0CDeQVdt8EbgI2WtEVakgRMrHRPFGPSo82+TGL3NPB.1.JIBDFdhTxMf6.I.bCfjPvP0ImckAjIfiPkHXTPDUzWTkTSEcDqAHCLf.v.Jjvds.9..X.HigVXtcVY+Cv+eRB.f.NAcDPK8A9.TAPIinw.1U1Wv72+GuBPQY.Jt3hKJj.HFw.3HL.3H.gIw.HA.g.3CL.3Dv.nX.tmXAfLfLMnC.Zrf1.3.b..y.xBfQ.PH.z..PCHP.z.fQ..0.BC.O..1.xBfQ.PH.vMfv.PC..NfC.VfjP.fjCfC.PLn.A.wDFJfP..w.Rb.DCHXAPLfPE.w.zR.DCH+.PLfrC.w.RL.DCHw.fLfzR.fHCHo.fLfTB.x.RI.HCHk.fLf.BfwBfLfXB.y.hH.LCHGAvLfzA.y.hOA.xLfPA.z.BE.PCHT..Mf3B.z.hKA.RMf.A.0.xP.TCHg.PMffE.1.xBA.hMfv..2.BF.bCH5.vMfTC.3.RLffkHJF.H3.BM.jCHNTPN2vRLvHCHC.hG.DCHlBPLfDo.wHyMhXs3A7pnZAPLhStVgrA3HL.3..QPbA5.g7THNAbChgSHsA1.fQPHfBN.CDhi.RPH7AN.CDBd.RPH0Bz.hATHzBHVhCPQf7nvIIlRhCPRfrjPMInSBkDHoHbShCfShC.RADCK.dE.y.hu.LCHaBvLf3C.y.Rd.PCH4D.Hz.BEBGkXPAhRA.RMfTB.0.Bo.XCHg.fMfnM.1.RLA.xMfvf3CTE.3.h1.hE.4.RFAjSMh.kHGA.Lfb.PJCPLfvJ.w.xlhgk3HbE.xHtvWEDL.O.3.f.vP.zAhC.JgnF3.LfXnDhVfCv.gHWfMATBfMPHeAN.CHN.5DThgjIXCHjN.MPXuIhOBgCXDHN.4.Rbi.NfWQDifM.HWIdAAAhNgjp3.TD4APIHoHTQ.HiHrPd.SBxTBWDfXQNAbBhz.PCH1D.Hz.Boh8DHtHrSA.hMfjFQkRDo.XCHTAvMA4A.2.R9.bCHLPTpBMU.4.CnvBPNfrT.4fiHRQzpjLKPdKNAVQdBuBvLhO4U.wNvC.N.H.LDfbPfMATBhCPIgvCXC.FAg3.3DL.XLDBOfCv.AcGXD.DB.MfPr.x.fhUHQBN.CDxafMfX1DRkAtEHG.xgfQfX5.heh3iX0.FAhOfNDAHfXYL0hGwPfLnPGIFRj3ngaCBWBcjYfKjPDKIQQBHVByj3.rDPbBPMf.o4.DOHKIzShG.Tf.AYiBRbA.BNfbM.3.RYlcOHKHzS.h0YAPxlDwZ.vjiHYARI.DCHPCPLkfDYvFhgjivr.Pi3WsEHcCnm.k.3HL.3D.AHuB1.fQ.vL.7AhcQHk.N.C.PMiBEHH.dACHzHfQ.PHDjL.Of3.bhPyH7J.gfXqDxRhshwXIDMfM.HAB1..wGPDPlafPmv2PN.2IjL.M.Q5INA2XZwAdPZX.hlB+C4AbXHlK1Offl3ILDHdlzIhgjYZChPhJDfWAPMf3C4.bIHxmDOhCvR.XCHuBfMfXeRDQFnj8IHkHrSjQJ.3.RHlZOQiB1UBJUJOkBVDwJ.w.l9fXtHRAz.h2fU.Ti3xXkHw.NBC.NAPDBjfL.XcBDBfWv.gvCfD.DB.O.HOCHA.g.PCDBOfM.XDDhAfKv.fdUHJ.N.CH7JhMRHHB1.g3FPCH3HfLKXC.Ri.Mffm.RegwBHrAx..dkYiBBbibIfC.zVBACXC.xTivpXu.FAqC.RfHTHtABEfXCXC.hMq8jvstFVfzmv7jjCjG.ffLaRWPDgD9WHCrTaBAD.z.hRhG.OfLKYGF7ABUDwPlFMfjn3.jjQoSN.XZV6f.LYbBRIBwjfMAhk.jCHP.PNhLiI0G1ADRpH.EhPq0ZXSDx..DyHqHRVhTE4HnJ.1HdHSExPfSv.fw.HFBNAC.FCf7N3BL.XaFRCfPAvC.BtfM.XD.DCAYHvCHNBgDzRh0QHwA1.g.AHC.3UhEBHZJTHfM.P7ADAhUBHvIRIfMffg.BYhWQIgtj3AjBHOQbWh4hPxH9.sHjKBlBHEJbKjsVSOJjLlJKfuJN.1.RKlUKHhR3cfnoP5jlBfHkYCKlNfDhX9HhohGfNf3iX5TbrKgWZnDBIBKT.fbCH6CvMfXC.2DhPBaT.ffCHOYN.nChQFwtfKQBilstHsXx6f8JggJhPgrUZQEVOiLE.wDBFh6vT.bi3XLEH0AHA.gf3CHj3BXCHqC5.fg.HICN.CL7Qff.HNCt.C.h4fQ.HvB3.gbDPC.Rrff.PC.BafM.PeADAhEBHnIZIfMufk.xVfsNHSAz.DtDHWAx9BUBXCHNHk.3Ujxk3FjBHJZTlhOPKHFNHrQFXfvF4EPVHKHZK.dEQsIrMl0JHRId.1.BxjAGHNQdA0Ah8BUCY4IlNfnon5.3UF+L.2DxXlMMHIRnhfniPBQjiI8h3.bTKamjLDYYH.JRIhtDYVlxOfcEgeJzSffQHiQjngzYRPI5Tjifo.fi3THEPVBz.hCfR.8OPC.Ri.RPHw.1.fnIXCHN.0.xo.MfHv.llh0hPwHFKfLEHlJBJfPf3Gvhff.xSf.LfC.jRhABHMKN.jbrTff.4AnDHVZDejGfRfHjw7QtFNABcjHEfutlBf.m3WfRHO.xmhC.IfjsPnHVJjCvWfbEIiA3UBGiYlBRKDslfwDhRBUCR3KDMhGPMfDtY2BBHoU..2.RchUiHVIRN.dE.3DhkhOPO.fCHUZHzfPFQIJbPD1HI3IN.EARNADCLvnRRyHhRBWDXWYn6fvQHMl3QfPmg1KxXl2f9.ji3PLEHJJN.JIN.GEBshCfPhMDHdKpNfbIHKHN.1DBBfMvvFIh4D+k3.DiXtHjLhOPKBVBH9LxAhSQIfMu3AjBHw.1.fTC4HnjPfHd.gDREjahSgrf3OjRHSDRuDck3.TBHIJlJjsEHtKZJ.9pPtXlmfTHYmATKjMFHorzM.bCHSAvMfHk3CXi3.DCh+KxnDQmP1rBU.dkX5.xRhefODUnfBQhVjfXHlRxWljMgMJRJhXTH1JBYinNgQBBHhXDXWkjOh8THhJzSDEpHSARHhGwT.Dy8QDFH7HFUAQp3DvDHnJzQfzIHdEhFfrnv+.BEBuCH3Kx1BICXbJNA2HrLhCvLnOvnl6Pcfbk4CDmHl.3Uje.SHMJZjZt.0Q1Rji.SlmPcfjhHg.3UhefIjKATgbf3CHBQTI9Bl.3UjKPXFpYP0PVXhPk3C3hYnJxLhSfKD5FHo7x4DEmPx.1UBdSHzK5NBoSHgJzNjT1RjIdA+.RJgbqvCExwfjhHHIN.CMh5.dk3BvD.wDxsB8THwCRKlDAgntdBj1GKj054Bfg.sklaf6.F+Cv+neE.w72+yKy1UIPIlk12+iyV.hA3AnQB0k1Wq41ahABICokIB.BJsHxh.I.Kw.bOfHx+C7+6lpS2.fBHyKBZfOAIAjlaf2.Ie+e87IfQogG3ADVW.FvW10SI+qv+gOfl9F1AfL4+H7e3hDN.K.NCbD7Cfu.GgCvDfvw9F3E.r0Uj6OAUgHAvH2WufGfx.TBX6.3qgxVvGApFAjFYfdA3HrL3BnCHSBd.3.RagO.f.HkeoHvWXARHgMxRIDSJfrma00VYxE1OXE.HlAx..Bh.mUlb7f.v7AdCCAPVfKvPCPVYt8VHMANCEANAGAb9fCfYoO.s.HGXbBxdg2f.fGfG.fE3W.B.YANAfDNBr.d.IINDa.d.h.JagTE3RbDnvABIhi.DDjjSPUEU+C.thiPFgSfGgOfp+Ae3Bjp.J.BHg6.j.lR3A7H3AH0.kjlavADQ.dtn6.bQfxAn5BdCb.Pbe9u9WAJGgi..fSfWfbG3N.BnhAdDf.pYfOv3APRXgrD3DHuv6.n6e+e.J.xHewxu+OeifWvF+Gv+3OHKb..H.mC.X4Ux.DC3A7..YAzC.PCPO7uB+6SYjLOH1BPBfWP5ArEIe9+FnCPLfGPFfJNvY..M.kA4B3GvW7ii.j.4AbGvU.1QjC.bfCPEAHyM.0B4.rFvW.1Phivm.2AXKAd.c.9BWRt.q.bMfavTiYA3Crw+K7uJQEjT+av+wvX3F3WIpGjzfy.IAfEKlnL3PzA.YARG.HSH3IN.qBPb+8+uGJ5gfCPEIHWYyQ2WiwVZisF3Q3g.hElbfu.G+Ov+ma6.t8FckUxVfG.VfO.G+Ov+DuAv3A9.e.FOBf1arAtC976+CnIXBBd..A.IgGPn.P1+.7e5x.d.dTRbB29m+OP5.nve+KfDBQN.n.ZDAvhH.lgHZCN.VBPI.uTn.KBumOv9fCPG.v1e+SPOf5w3HLK3.XhXE.hWfGQH.hDHh.d.CBht+8u5IJ.HjX0ITB5BlzVHqCN.mBd.ibV.feAICqN3WbR3ALEfABND0AnsfWPIDSD.n.t.294+C3l.ikFc+8u8WAd.g.t.0FhgGAePEBd.e.dAvF.KhLlElCf.fWvJfa.sAvhHmCfFfWvIA1NfyBBcgELPgDhm+Kv+uyK3DzafzAdAd.VqfVjJGEBkfWvGfaftB.CKv.NBh.9AwB9BiPByf3G.y.NB6jhtfyvK.9LnWB9BPAHHf2fFAAHHLSxKj6vZ.SMf9.tCj..VfSQG.jE3NzQ3.v.3N7QfMCNDbAnO.2UHLCvW+qv+rmr.ffRIhEz4AXB3OXxgOV57fegInVA3QXxJsRN.C.tCWtxpfegHgHO3WHBa+.9EjXt.0BdDxF3SpCfPfuAJgigAfGvTgiAVkifN.nv+L7uDg7OB+2EzAfxY+Gw+Nf9e+eyk+Gv+YYg.jDFK+9+5w7OC+m.EAvRKqL8IOCR9.j.YQRBJDjlak8Eb+Ww+Sk7+C7+5w.NDWAdIRId.9fFR.nRLmNvMz.RBfA7+A7eBBBzq.cUHCftAoihxfkA3hTL3MHG3BDW.I4Dfw8TKBjPBk88+qjcQ4FdGmHd.vC9.TCdDg86+4jJ3iH13D3.XkAvJvHz.onRMv.B.gKfO+9uBeFLPfKxviKPR.8E.p.Ss.A.XE+6+JbMnUAN.+RdA.BTMKQi5WTy3F7.3DXi5LXs5KX1PCQp++9OC8Cjdfe.j.H0+F7+3JCpLqsc4EXA3PrBaW.5JjRA3JrRIT..H+uv+ZgA.n7+.+2ExievrfSPmhef+A.xKCoA.0Dj4fbaIQAtOeIL6fWvWk3HneUd.YBtBlWlj..xe+uE.jOBmfu.5hK.pfnnXFG.HsHjzfz9Y6BnYkKh.faPYhKvrjXlnMCBWkC.thAC3.zfgnAtByCXHhd.fLXTRhGwB.NhnjAHC.Aiol.tBgoHdf4H.jsp8f+Pi+8eFWDBqf2vGE2Q5EvqH6fngfe.Fg0LnZPZ8fWPNwvqICjRPfe.F.lym+m+tD2PyEjT4.5I3CLAxQ78+TLhKm.va+Cv+NeD.lgxxCTjUE4z+X7+np2nUe9exhA.I.Fye+2bksGPiAUD3CjQ6CfFfa7+.+OZa.GUSnBTG.HCIxCxDpbJfACzDhKB5fS.wiKAzg.U3ADA36L13JPMHi84+y.W.ffB31D73PjJHh84+x7cMhChBgcL3BbM.9Ht.J.jJ.j.J0WakfMO.nDqB..iSxMx9gZKRETvPIQUVcoB3CvDHdDN.UJPJo7RLEDPJq.d.Q.TehFL3QTF3K7U3.fNPeI7nfGvW.GAHUAlXGi6e+SCkAzRN.MgP7Bd.n.NHz+2+NLNP0IXwf6D8.DC3IQO.3.tLz+2+M.H3XQO.x.dRzOkbg+R5+8OCc.NVzCvLfmD8.XS3xj9e+qfsfiE8.PC3IQO.0.tLz+2+IPE3XQO.0.dRza0kh+h2+8+A0CNVzCfMfmD8.LS3xj9e+afkfiE8.bC3IQO.x.tLz+2+EfC3XQO.3.dRz2BP.jf3u3M.4fNWbBPNfiD8oOCje9u.4ENVoChYnuP+oOijgyR5DfRLxfSKptX3IfH.ontOFBdAkAhbgqvWfsF3y7+3r3M3Cj43IzGXSt7A.MK3..55AXBvxNzYq+fgfWPYf6z+kyxzfOPlkmfbfuz+l+fOfsVvLE1ZAiW3ArFvQ.PBrufjmyBxfOv+mmvYfMIvzA1j.CJ3ALIvQD9G+i9Cy.1Z.yDXqALdfGvZ.GA3L7e5rzK3C7e5IvEXSBLcfMIvfBd.SBbDf+w+p+.JfsFvLA1Z.iG3ArFvQ.NC+uNKxB9.+udBQA1j.SGXSBLnfGvj.GA3e7O6OzAXqALSfsFv3Ad.qAbDfyv+syxofOv+smfQfMIvzA1j.CJ3ALIvQ.9G+69CR.1Z.yDXqALdfGvZ.GA3L7+6rvI3C7+6IrCXSBLcfMIvfBd.SBbDf+w+v+vAfsFvLA1Z.iG3ArFvQ.NC+GOKQB9.+GeBv.1j.SGXSBLnfGvj.GA3e7e7OvOXqALSfsFv3Ad.qAbDfyv+y2xggO..omvjfQIv0AFk.GJ3APIvQD9G.L+CxC1Z.yDXqALdfGvZ.GQ3F.vTaRI7.nvZqqu.JUOAVdO.jPeALheHmANAMUeEjCzjDjlYJjvXe9eIcQfckw1anXsv6bUsLDPJJ.Zr2a.+fS.Z.Zq.fnPB+av+kW2e+S.ZAjFYU8E3A7ClPA9A.AfN1rbDnPBQUIUPTkzSN8UTUEjTTUjT4rg.zjhJ6hC1TCdA5IPJufBnef8vfavGfTIvHBTY+Cv+fyeMYPo2D3zSTUDKzev5CvBHvvB3VLKPYwmvAXWYe+e4mBJ73XK3DPHHoDbaUEY3w7r9CXC.9n4k+9OTJwoa.D0u+i.+fSPeA04m+a1KE3hKtnPBI.tZ984+F4O.krmNh.A3G7I.i.xmgLh3QzSP036.fmPO.0MH7.HIh2gohOkDrK.Yh5f3DXm3DTmnAdMXhbCfJKbKhKBX.jv2+mPIgm.HirEvJBxIMO.XbJvalYV3PfUXTEND0ABUuY7m+6avfCPrfla.JjPXxJtEUp0AgGA8e+eBAItALCBdj+TJ..Bn.zCF.L2+B7eBFBdB.Rd.nJfPAIkQJb.QIMEUA4zPEAzCe9eeS.tAL8u.+mf7fmfSf6P5.zBIhBdBXI.Hs81HJ86+JzE3ErTPwF1cf8K3QHG.9.tEgGvaxQLTk2vb..RH592+JAcnfWdC4ATI.EI.I.9ENFRz.Jx+.7uB3CdAVKBIhZE.I.tGdOXQ+8OkL.XVgCwB.AJ3BvU4EsAPbAXre9u..OdBZRT9fTMnqNXoc8NfTLdGhNdFiNLoiCv9.RY4erB4MfrHbddN+.t.RBdCkANAjAJbkSfKPlV3ALb4jHS3TnSfMV1Lf5EXqU7OCgF.jfzND7EREwDQhC.6fcQ36pE.sLHufpuXjhNHsCRMe+uAoFjIguqCB1vXaJlAfH92vEdIX.bM.i.fG7iv.nPfq74+K7G.m8O.+OP8kWvBBc1e++VK+Ov+v+sHHRlJKpVPwwNLwn9BgQFiCbGZow1HySdFIGfBI.B..rGH.B.H+Cv+D7UAfPWZsUVefgAPbBt.hatCeEvKf.t.iXtEcAPBfM04EDowA.B.+9OAxGzSD+tQvANAu.VlhGfrfqAMr9I.pP2zfnSvTChBBiO3OjG3BjM3NzO.pfNDfG9FXDVqfKPjfwcX1A7+e9OA+HtBX0lvf.fvMEDJsWzKffY3A7gnyBtIkEtBPC9AxS9HnhVIh7i3.vp3.XBfUAFoqXBHh.lBCNVXeMlDg3EvRGFYpeg7oci4DbyfeAXOguonmagjAZR4BgBw5ENAzXJmgzG4hyFHqCB.fMuX.dpkB+2H3JdBEOTWjelbhG5xhTk5VPb3JHEgXTt.ymtHWP9MtEl+.qGnG.jA+9uOYCfb+ix+NG5u++LcjiAdDd6+B7uBLCvHSKye+meUCjfYgQVIm.PcrPbfPIPRDwx+A7eNa+2+UXKPlFPZlghAEcB3CjzIMB7LAoE4A.jP6BxS+Ov+KTwKT7OA+uvMArhLe+uy.BnWgO.CATWZ+Kv+CMVgWB.Vf.1+K7+Fz..I+ax+P9JXBCpTnzFnJ74+8s22++Px+8+CcBbF.n.HW.Xni86+G7+Cz94+PzInr..V.wBPgYJSHaBPk7ht.ZWxU.BEfLMH..5EfO.KOgE3HzBPr.9.IFN.4WKlf.EP3D+GiAhK0mff.QAHmAnYffv+J7eDk.zFhRa3JbZPIENbmBPBgmQm.0a3Enb3B7XP9Dpxgce30q72+Ow.h.Q36DsnP+6+e7mPoEt.tA7ZhHWfgBBBhKxdBXTZ3AToBXVZ3AzTz3M37.KHUsZbiXAPXAzYffI3SDpfy.t.47OA+KAPtU.Ho9uA+GgD+20+QvDP1NBtnj03Dba.MEVX67uB+CBjkexV+mv+fb0V1AR6Gd1+b7OFc.TLsbz.2fyMznyx6e.BfrDPEKtEd.9AguC2fjC38DN2mHN.R.RDfTI3jDd.o4F3ID92+GAafrD3pD9e+Gh+frC37LNXLItA3C1DfrI3hbNnUB.H+8OFRAB7+8eEMFd.S+u.+KA.fbE3pLecYBxNfyy7fwD3FLOXS.xlfKx7.NCHr+6+VjAOcJxvwKfl.4jaM5BlwKfjj7EXZ.5g13FHQPTbjnb3qrA6.zDHUENOe.N.PEtAi.N.W.xofGF1.7E4.EK3.7K.eU9ApCXF.7EQ9JtJbBZO.jW3I8G.4ENCAFvW4EBffqwokivFe9OHrC9OlV.Y0IWXzkl7.fpnDCJYfSRn+Cv+cRxhFf7GCMA5Gfz4EDlHvCnL+2z+a73JYVuHiBdAaZ9AMSCElb9e+uQiAAHJE.NOdYrRfafWnLIPdgdDaFRN+8eFBBTIfey3kKP2fXXY56B..DyTwL7F.13fnTE4iC.fgivy.NR.ekGPXBt.vLN.I.tCv.BUfaPL+8uIkA9Au..HfHYYpCDKfKy8kKP4fHuo.Dz0CJFPcMNBe.9A4xFbgfJ3Nj5r87eA+uwShXy2+CvefW.FgwLnZHaZfW.Hnf3+f7+FIRzVpvC...H..HAHG7OB+2jiAHy+f...M.RF.3.HCf9.EI.Hvv.PQ.ha.dc.fDCXg7e.+WvjBDiL2.VHq7Kng72+LA+oMDVs+9eSsHnBgjMvU..E.kE3ATwqDE.Hw.tAWzJ4B.BMP.zKe9OI6BN.q.t.S.9BmvZrA.BL+8eSYB.YjSf3fZI3.PwiJV.HvX..F2LHoM.X.n7x+Ky+M0I.zLxLMLEauQGHy.BJAIGcoMVchfZId8eX+2zdBzTXxMBF.LCJHifLvDiLJXUYxMGH+QfNfDiK47ON+2TeAnfB+Cv+c3cAi8layQGH+9OIrUvLecURTgz+F7OHXOjO.HC3H.SAO4zSFYzW+9eS8APNfifGLDzPTkjUE8kPUQEUO4DPlTRu.DSJR88+dTEn1YfUAI0Wv7UP.IV.wDC3LzA.w.ZG.HCIr.tB7.fLf5A.y.dCd.vLf5gNyAtB7..Mf1A.0.NCc.PMf1A.1.NCc.fMf1A.2.NCc.vMf1A.3.NCc..Nf1A.4.dCzBPN.5Q.x.C3M3g.v7kPA8R.xDy+C7OQcEt.OAPLf9Q3PDCf9DNDw.nG.PC3MvG.z.pG.TC3M3A.0.pG.XC3M3A.1.pG.bC3M3A.2.pG.fC3M3A.3.pGgCgMfkK.yDhM.n.a37uB++DoFDSLrHBQkA2m+uBUVIH3KLhAxvhHVElboM16.HhIFA9CmbvLrHxTvUVYjA9Di..MfqwH.TC3ZLB.1.tFiXvMrHxQxkFbfOgiHfCKhDDczE1XqA9Dj.PNfmwZFHCLrHhTgQV3XLB.xDxaEHUXtQ1asAtDvAfLAAG.k8eA+2hfgqvk.HSHuc.Q44VXsk1XyA9DMEhbfugIgTG3aXRH3A9FlDxdF.kbkM2b0I2+.7eK4C9BBGxeCPTYiE1+.7uKoA9BiDhe.PjooCtDlaBFfCfRji.YDH0SLwzW+8uTkHvSUQ0+.7uTon1BkLH3A3hKfBt.LL.ZkwFbu..3ADw+C7eL.fe.ECfBfS.PRLFc0EFaeYWYr8EbkI2Xk4FcgcFLsBdCCcwYxE1XkEyWzUmak8UXs8VctQGH6QGZkABPP..HfBg.uYFH.IQAlklbyQGHfAC.f7Ts4HPw.C9.UBFHAHyW.ADvQAtDn.vLfO.JfKwI.PC3EbB3MjhAvIWZsElb4A9Fp.VoDDyW18Fa.SJX1CxCATWafWC9fHDvRAdCkBld.LC3BbB3RXB.z.NAl.dCn.b8fG.df+PJfkGHzOJ1fJOvMDNKlCN.8.dCaBVbfrNniAtDj.R5fC.IfKgIEDyWjUFagEh3.j1+C7+LUKtB+ANGl.vLf2gI.PC3CXB3Mv4+C7+ID.d.g.N.VrXBfOP1+8uehGvasAXVfS.F.DzXFBvWCouTIM7X.CC.gAlGfKvE.PEHgj.H6Y1axAhP0omdiKPkAPhUf+PFgOvK.L1PzC9..B9.bD1u.DC4PDHXd.fLfWgG.LC3U3A.z.NDdH70jWf2.TBIdCPZ0D4m+WioLhe.aEye+WyaDrGQoU1biLLRnTgXrUFHyAWYoMFZkIGcfPVZkAhS00VauLf.jU1b+8uDDKvZzkFHYDPYtEBMAPGcq.m.r.RYvDGfUE.HoQB5.jFXt.PXfbBD14hBI.RL5.RPrQ2WSQmbusVHgS.HxnCHRURXfCvCKLiNfXDag0lBIT2b2AzKgbHHQJvQUkDfIDRhAvVXsDBNrA5XBPxatQi8fGPF.TBXO.NAPCLMEIMPyKPauQFH5AbEfKfRfOPlfqfGfO.pfqfG.dK3Jfw.DIWXmANCXDfT0A9.4Bt.HNfTuwFafyPLBoI3LfAAMUGckQF3LjQZHCvWfCQTBbTYo4R9.nPHkANA874+1DXAjrjauIVLfxv+P7uMNBDI.HC3EPB.6IhJhLz.hUVZjIxFBvTXhAyJD.xbo4FYBNT.g0FHU..YhXDP5.vbfMAHpX.HA41cggFafggnNA.HtrgH6EPZtAxK.LWHTDPYtIBECDVcyABrnDPKEoG.C.xQxUGLLADIfNFHsIPYvEFM3.PYf1mXHELm.DBP2APL+8uVcSvbfrULvHio.j.3CLQ.aAycnfhgKAE3GvA.w.HGqGPRfe.H.HCffDVdfi.G.LC3SvA.z.9Db.PMfOAG.XCfbrlIfevi.bCfar5GfePGe9+VZ.tCsBPN.py5ADAH8DtAGAfLgqvQfNQvGsJJfrSXkAbGAijowBNBeD5QpCPofevOgpD3P7QnMANDeDJTfCwGgNk5.3O3G7WnWo38fe.GgZk5..O3G7QnYAN.7Dd.UQBBe9uPWJRXE7ULffBLrLC9+8+.0zzq.ogItKfY1E1HRBnHAvRMTMA3.vQ.041e+i.wf0CCrPxRN8jPeUkSIQ0WN84+yawvD.PI.Ah.v7UXkyvJfwA.w.9Db.fLfOAG.LC3SvA.z.9Db.PMfOAG.XC3SvA.2.9Db..NfOAG.jC3FvQ3ALR3DnH.xDdFJBfLgGgh.HS3YnH.hE9DJBtDb.fLfOAG.LC3SvA.z.9Db.PMfOAG.XC3SvA.2.9Db..NfOAG.jC3FvgIJAPRB4bI9BxBsT8Ls0B5+8+BsA.Jf3v+A7OPgi9BPq6JyLB.IHFzhGP6flA.0.xR.qQvfANBZLd.F.tBZ.ND0Ld.e.NB0Dd.uBNBZLd.3.tBZ.NDqMd.QANB0Dd.gCNBZLd.pAtBZ.NDqMd.CBNB0Hd.S.NBZLd.bBtBZ.NDqMd.0BNB0Hd.EANBZLd.NCtBZ.9Bq8uB+SPEBwl5A3fn0ot.A.bDIQOvKjz4.uPRZCN.KfBt.uPR.C7BoMKvLfFKoYJvQjXlf1vHGP.Sgk2a0MVB+Wv+9PuIE.d.olydace9CLIHend.4BxG.HyL3CtAe.TwfjA.y.dBY.zzfjA.z.dBY.T3fjA.0.tBY.x6fjA.1.dBY.T+.vxe+OzMfePfgs.HZ.tBbFd.Y.xGfqfnAdBHa.Dofi.VFQ9.wvBHzD9BV.zF.HCPa.tBUoXHqYf.r.RMfuvk.Ehp1CTHfzGP9EvdRMSAgPLIvBxhBD1ZkIUO.LWKIHCPC.BJk7DSsVn4.jB3L.B4JXbPs.NBHAztjCfyfCQHjCftfCQHjCfofCQHjCfjfCQHjCfefCQHjCfZfCQHjCfUfCQHjCfPfCQHjCfKfCQHjCfFfCQH..Cwg.NDgTN.yCNDgTN.eCNDgTN.KCNDgTN.2BNDgTN.iBNDgTN.OBNDgTN.6ANDgTN.mANDgTN.SARH+2v+AgF.n79.TBRI+uv+Awn3OjO3MrBLbFRpppK3PDEPkL9.A.dDKM9.E.dDkL9.I.dDkL9.M.dDkL9.Q.dDkL9.U.dDkL9.Y.dDkL9.c.dDkL9.g.dDkL9.k.dDkL9.o.dDkL9.s.dDkL9.w.dDkL9.0.dDkL9.4.dDkL9.8.dDkL9.AAdDkL9.EAdDkLdAIoR2pi.6+iv+K3y+i7u.bYPXrPxTAYUQ+6.CDvRKwjBHqv0HM8+H+ifmiOf1o8F.p7SCfA.Xv8KS.wE3lb04Jf.PeAVU+avffqRWDoA4..DPW84+BUD.rDDI+pK3tTE4..G3JTE.w.NLUQN.fBtBUAfLfCSUjC.zfqPU.LC3vTU4...3JTE.z.NLUUN.v.tBUAPMfCSUkC.XfqPU.XC3vTU4..I3JTE.2.NLUUN..CtBUA.NfCSUkC.7fqPU.jC3vTk4..B3JTk.v7kPiCyVsKfuiaPr.DC3vTk4..H3JrJ.x.NLUYN.vBtBUAvLfCSU.PS3RD..z.NLUcN.P.tBqBPMfCSUmC.PfqPU.XC3vT04..G3JTE.2.NLUcN.fBtBUA.NfCSUmC.zfqPU.jC3qTUMOedFEexumrVNO7OD+KA0.Axl3.PBnHV.mU1+e7uR9..I+Sv+Jv04Dz8+A7uBeBhVmt6VngzvfGCXmy.5e9+K7..JfOPYHwU.iElNwAReAjPBw8..ywmX.42m+CYv.PxSw72+9Y.3w3H5BjA.ufV4f0FPX82++4J32fUYV.N.XA1y.DCXgAfT8HB3O8LpSF7uf8F39DcoRBt.ZA1z.HCXiI0bg0IXM.TbgqCmopvu+2vJfCPVgqSmlh.3AjEXJ+2+4X7bj.NRJm5efG.bARB35nro8Ad.YAlxWQhHo4ijfijxoRO3A.G3.oL.zL5LLNWHuClx.TCHH.hxzXH3HorpoAd.vANPJe5YfGPVfoL.1.lxUcC3HorpdCd.vANPJeJ2fGPVfoL.2.lx0gN3Hs7pTAd.wANPKipTfGPVfsL.3.1x1GPlfiDzq9L3AXG3.AMpMCd.YAFz.jCXPeoRfiDyrZD3AHG3.wbpDAN.YgD8H5ARl74+ZEGN+ekpWy7e+Cff+9e.7mhk+Gv+DLA.cgBQfavLW6MXy78+.XK3FLCPxAva+qv+WTvcoChTwygw3jg.GI0S+Gw+r56+C7OAUqK0I9aP1BDs+6w+cj.XGEOEhBjy+aw+crv+H7+EveFuf6i5A1q8Lz.P4CRYf.fXxVj6f.P7InrP+B3jfwBHRENHe.Vxta.V..y6AP.f3ApUfgG.wXMg.wI3FgG.w.9A3kFNfhG.x.tT3AfLfe.dnYNn3AvLfKEd.LC3GfGZTBJd.PC3RgG.z.9A3glPfhG.0.tT3APMfe.dmAOn3AfMfKEd.XC3Gf2YdBJd.bC3RgG.2.9A3c1RfhG.3.tT3A.Nfe.dlMOn3APNfKEd.jC3AfWQcQX3jnIPLT9Jp80HluSU.hX4on17BLH4.DOoZVtIpAfLkifZuIPHaTNCpAdT3APLfe.df9bYiCfLfKEd.HC3GfW4EnF3QEO.y.9A3UdApAdT3A.Mfe.dkWfZfGEd.TC3GfW4EnF3QgG.1.9A3UdApAdT3AvMfe.dkWfZfGEd.fC3GfW4EnF3QgG.4.d.3UTWDFNINADCkehZ+Gv+ETEIPtjnfKPD8fBYlB9.RTSRJkwbr94+P.MPRnToxCv5fwP.DImjs.FCQ+FfL.arfwvyyCFCuCPMf0f6EbGXRzd.4B.L0ve.kwVMJDvdj0hx+9eDlnPZyQGHhUlbkkFcy84+QvX.8o.HVBd.gCTp.w6m++CvA2h48XV+OjLPyAztlKBMc9o8LPA3.PK.I7+B+efyKhMPwU+Mi5mEtCvafc075Hoo3C7Uti.hty.u+8OQKcTbAPWYtCP4tyPr.gRPS69BlBfT1nkfsJb4fGPDh6P4AQK3CThv3Wczf8g3WUtHkJD4g7N3Jnn3mY7P5DVhu2ggYVr3xYrqYIrahCjwoZDvWINBcJNCFCPLOQs3aXLXnHNDHKTeBKLPKHdH7FB.hG.uAor3Xw6V+IN.9BFqiNj3mgqZlGzdh2AtAHCKb4m3xgKrYJLXhCDtqZHvWINBOJNC3BfLh+At.gR4O7WQmHrs.sf3tXaHKHd.1J1vnqTVhK.sfop3tQaahHdHzFvLrHtczJa0Byk3.QaqBC7Uh2As.Li3ePKXnHND1JTWBaKPKH9N1FhFhGfsBN757.g3BXKXpJta19FXhGhse9OMqVdJqI5WpqC60RgveINP2Ba..ek3cbK.zH9G2BFJBeK.u8uA+aClBAk3.XqPbIBZf7P6Gn.HrKxJqCPFBECXRbrpfwPwB.FCBiEfL.TVhVV6wbr3CXK3B.E5DHRHT9+F+yfI5egW6VfirLvWyQ2a3Gvyw0o3gTa.0vR4svFHHm2dAYS60H5sQIbW.dU65Hpr9.7Uh2Qs.Ti3eTKXnH9C0BkBhTZPGC1BhWUsgLi3ATaYFB+H8It.0BjsA8LPCINA0BuVXM21hGhs.Xi33YatOJrWhCjszxGvWIdG1BfMh+gsfgh3OXqX1H7sfwf3hgaHBIt.3JjfyagMhK.t.tZo.K9Y4ZGGhGRtAbCKkeGb6BsvgINP4Zau.ek3cjK.2H9G4BFJBmK5HbR8ADlv+Bd.QHNbDGxVhe.whcc8Bru3BPL3B.q3tkLdsIdHIG.NrH9cI6aHBGm3.kbtN.7Uh2Qx.fi3ejLXnHNDIKHGBWLfMH9fAGhYhOPvh.87.fAnrJta8pmrhGRu.ji3306u+CvYBWl3.06tSA7Uh2Qu.ji3ezKXnHN.8VCFsHaAt8FckoPBJ4N.k74+Jsf.PEjT3PrP1B.L+8uN+etATBTJrGBMfSvTAvBI+Kv+XHp.fvCHe9uLJMhKfafX.Px+A7uLlHDj+Cv+JMJH6JBICvVYiQG3xH36JPt.onfBe9ehXtynFTlbtEFckARlkBPK.Af.8ofBe9uAKN.LfrWPfa.Hak8+C7OUO..JfCvp.UMHXevdzUmao41Yf.DJ.jP3zny+B7eDOD.H73hJgvYf6Lhz+Sv+u7G.f.RDAYS3vPJ3Cj1m+2y9ffLHk88+tzMHR+O.+OyIj7RA1.CLfnBHfWvf.ACQZAzAfefmfHS.nfh3wHD3EzoPiV.Lo.RKfTSHVHfJffBHO.DsBfBM4DR0frG.I7eA+Cyf.w2.4.CLp.9M982+CnSHb.ha.AGH3AdA+CfJffA.u.x.+8uDgA3gg6POGHWXtQ1asABJgTTHGEPKf.dAuB.K.ZA.q.tAV.l1VQ9elAxWArmce9OMEHlYfCfZfPwu+Gyd.cOvoAPLfej+.vBHnGtQQAF3fbMPCPvdvwVX4QlofWP2DxAPb.vWDMbHBR3uB3zST8+B+qEr.zhb6QxO472+A7uX2Dbk.j1+K7uX5.9Ds.PLjOf1BDSWs.N.IEd.zAFwfGwa.HC3CDj.xz0JfCPPiKvWfIDPHRJn.HEI8GPXyQdAdBBGfIve+u.pCDCHfrG3EPhfSHvdj8VPBA.ZjrXfE8+.+OS+B0w+E7+SrCfBfHEvyAD.SsHXH.D.EAAfsIfLfrGPY.lXkWgAjv3+D7eM1FfYrAhMAYKPMB.IyHw+I7+M+CTkjiSJ5N73.n5XqBPMibF.xP3IhnKHS.vJf3.HS+4+zvw+B7uMsQhphR02+yU9fjivmAN.RLT+fyPvjSPAAoL3NL1vYBNB+Aho.vB3HPAHrB5RF8D40j7tJFN.dD.H9XBV.0U3br..q.heBDiL2.hogaPIgUFH.DR876A6.Txf6h3dERN3GrI.s.Rl+8uTxUN.XADpkCPAgqDCHEJPiENGLHBFhePFgZf.gI1bgujBgKwBhbVPNHNB5..OWBH3L7LKLDdALANB8DfOfDB6gCwCfrA3CDDHKLH8FhY.uY1+E7+NFBd.BZtCiJ.LvvBRhCjafzBXJUxEj3KPJQNA8.T5heSZ+8OAoMd.Ej1W.o2CIr2bqEFaoUlbkABYk4FHjbmMAzhPf7.AoMFZf.iHRN.HgUmYff.HvRTx.j.5EX.Q.MxAiaiAfW.mhQEHtAjq.fBHkBloAuZHhj9.ZFfLxDxQI0I.n.dAWRNAXFhWIqJ3Tzd.0DCPkCNZuOBVo6v1oWfJAsF.y.R6fqg6g+fKEeXn1Ph0.FQpDA.KfdQ5KzH4.XXHMAh.h8pXkF.YkgTuAPWZe9+WFBhFAqJXX72+7PAP4J9Qk.BuhMRH5CvLCcDHOH1BhUCfaXn8f..HTlvd04FYfnVYzoGcfXiAk.BYgY2atIzyAC.XrBzofqPufHV.x.i3GDE3JbxILEnSjCPVfUUfBDd.qAFE.vB3KfV3AbGXiHD9fnKHBDRaA3VY+8ON+ElbnCfU+8+NqCPLorMP6oN.nTboJdBni78+8jL.rnLJfXE.yYTupGfJflh5MjB3Prh5HbBnFQd.2CzwfCgOpa.IfCfOiK.5.8CHsJvcgk1KV.rWgERXZApGAPBZe9ePWFtDJbnfHacfI.TVfa.mfhDHe.PI.FygzBzYf6PJgav.fKQJfaf6.kBHZqJ+.AfWG.FB.Af5Enu.y.xd.0g5qvnAoI2bzABYxABOBui3.vivXDzMgaPHhPqvKELMCw..yLdAL.zv.QL3LD0fP.hQBWwu+mimfnE.xLd.C.N.Ujp9f4j44X+u+KvzlGf8oC.+fyvpfeP+oWU+fe.mmnF.ofdBwWd.2E9ROjN.+GNGOHRChefCk8m56.P3LzP3S3vH0DVDhi.VJK.3LHsRCDtARANB.od.E.dCBolAfG.QffXId1dA7OvbkM1al713D.GHmLCKAfVY.ywXPLliH.xbn8VcrQFHhARBJvVZmgFcrkGHy8lYyjpQgBJg+Kv+CYs4.bF3Jvq.s.BMiqfUiv13.T5PVA37fKfTga.MfKPFfvV3EPCHGC36pCv8.H1K1At.NCvbfKPsins5V3+HkAPIkGPYADSWf3E3ADO3prCH+.h.fEpIBsrS.jFQ+Gd.wAVnAgf50j6u+evhjGvWqGfUpWQZqqvUqqDVfefmiwZZzrt.XEJamS.bgQeR3n9EpEdA7BfLgw6xpEdEArNCqEtVCLhBq6.apCfB.D1e+WDyAMv5ezV3OLjw7G5RpGf..JFUVAB.gPjxEB3EiavDgZEIOUGChqf2j5l3A7M.rPt.RgPXfPWXjABaucWKsN.cnElafPfJFMDDCUvHq.Zu+Wv+J4wH1CbuDxh3E.xZf4RvpCPwirV6.bIIsAxFfyPwf3FHBLVmf0J.wvt.9.BstOfhFzVZt8RaggWIU33hq.qPTBPKfP2.gw1buAxE.jFPOP.Hq8ib5AhHC.hdkkFXQCPB.+p5ADBPMaRokTZ7wv53GvDHkGh0iIES9ET2h4xXbA3FAE.XS.h7.YO6PPn3.nGXxBTqfqvvrUH.fv9AFBtCsG3tgCftfc0Zr.hsByFXTDd.AClC.Nh3A.IXTXrNgGfs.HS3CXqPFAl2.R6+C7eRlCjxfCghf6fdBfxLp.NAgBPJ.4WHAAh.WhhX6JnOm4CX+A3dLwKPy0dJJr9AYKXms6vBfGAKADCKrC.vlG.u.AL3QHC.x.d.xLt.DAzLfDO6WPefQLNB+GjD.0CfFCfLfXb3WTw4ADOK1iYR.AD6F7dXU.jSfPB.kbd.013FfGAKgCPEfT14.HMPgCdDxDN.UPNAVBzL.Yo6Cnf3C7FHe.hGARAt3Kt.h.ZDA1..IHtCi.X0L6NHmGHCfePpfGvRfHB.k.HMtGfIfKQK.Dy6ADY3Tn.3B.l6XLCARUmYl0Bv.D594wh.z.xd.sg6vDSXuGd.AExVhJkHd2LxljR3FPCIiw9AmPTutCpMAPyW7aP+tOnMfe.mtqkMfefbrzhKqJDCh+QChefCmYi66XC3GnYXM3Nr1LnatyVM.fy4Az33.jsKKEV4AkdSrTr+fC.HtuRMDaS9.7B3D39igzSw.Hm5C3r5Bz7.nElbjo9.Han9DMOXlBnn+Gv+RwMQchHf.6K3E7M3LT+6KrB3BHE3FTO3BjQIJ7NBqDBOocSIsCPco.AH1+NgtDN.vXN.LBTwAKiJgqaopLA.kXd.k+nofnMHB.V2nj66Uo1u+SgOtjKPSBxiuWnZfefmjANHoBDrr7A.oL1QgxV5DbdPs0TKr.zJfquDDGdA.55DAv1be9OAApeJV+tRpE9ACPxOumlZgtD6ATN.g8Vy.vBnWvd.YC3Ehav0gZ06unl.wUWZjv5KpQziinQnvqNABGD7L+MfCBBkiKfVfIHH6LtAVQ34lFxUC+RKzCPMuWg3.0DnIFvLeMBpuCvoj35vnSnAhWPltQ7H+6N.LB9.6TRIfrQ3K3Cv6ZFyuG52hqPui86HU94+FL5IM.R7fH+HQC3F.0OXS.h7.Y+65786y4MHEKFcgg66CDt3GzLbT.vWcEu3AHj3.DD3Avg3AfC3ALgHqKL+fQQQW.NA2AvLvKPV.cGPcHN.7BlLfCCdv+++Agk5Gzo3HXZ7Yzl5ALCL8.IXiT.7GTyXHBjSfPh4BDR7RzFXrDeIsAlLwGRaiO.gCyaTIEOBtAu..SRIwaRaxafcwKvBgqPBfGAKw+vZfGQLwmgZC7Far0Bv.DT9gbabpIPMfrGPaDmZfLw+T7uBszFSK1jznYhWADCLrCfV+Kv+OhyIaBXJAjDQ+8OT0kN.zCtCiD+ALBPK+8OaRCjjnCf0f3ve+Sk7fn0+B7ODHhhk.i1e+uGj2CSK+qv+P.HHbAPMfWCU+Ov+QfUTNBD.B8GPLGvdV03V.DSPOBDDlBSKpydDUeDtGAL.k.H8SsaZ5AzO.CE.x.tAP4h9fmBTgzFvOAvLfavSjX.3z7D.z.tAOA.Mf+xS.PUi9FFPf7J9.7H.gsFOi7aZsyln4WSQ+9+GOkxPovUH.hNDuq9.qAheJepRzkjhHSD.gAFnK1M5BrEfVDtAd6N.zBr6gKf2.9En2.Db.hVJ7CNWuyNBg.3ifaz6hKfe.9E3v8N6PbXf1EtOeOt.d.tcuG.MeI9SOORqfHP.6Qze+mPgiGvunoy5Df2HDUSbkCC0AXUPim.ugb5HE2lH.fyHVFzskg4Pd2t.h.1DfPJPnFN.Itlx.QI3Jn5H0A.MjCAFfgC.ewNF7AxlASOXwbxEgmvDr6.iAxDYc.js.hC6LYOfoM1kfGPZoOfXAEhf6ppCfOfg.OM3CLA3UL8XQ.d.o8+.+e1PfiPZfOfg.mF3CLA3NjFHcIvdPwVHaKFi.4fI9WM8fGvDAR0IgBrFh7IfnG.Hnf5gIqAH7c3n.CAH4A9AiHdByLobfzH3LnF3H3mHyM9MbneAzHNB.Cjh.MPZ7K5hfCP+1avTfKPFgbg8ELE3M.z+l7uA0FN.TrVm+O2KgCfBoCPBoY85FHZnuzhBrCfpnSvH.MSPb4+.XP9.q.zGAhi5MDOXe7u.+aHZfGva.Px+I7uajr3gqSvSBJOYx.1ghGf7fLAPXBXTp.j3Y7NI5JtFd6+AoBVvf+PZfiPeh2k6hGf5fK.9haf5fKPFhfn3PnN3BXh3HnN3BrAPB8eB+m.ngCPehmQ6fGvRtn1iYJNCKBzRfDB.kPXlL0y6RXIXr7dIVBlL.HyncnNAdDD5Act3Cnt4CD.PeDXdhKh5f4l3ZnNP4I35lQKPNHt.qC1D.sofuwh2hyQ6.TS4HDNXCC9CHANBbI9YLCt.WKtALCt.YHTh.E76.TWfSRFVfKfIhi.yfKvF.Ij3PvbT2BTHQw2e+ywGDOy+B7eD1Cd.KIhpBxLPRV9BaAjSfPB.kHNGOCFKEqKHjUdF5BVLkCftqSf+AsNPUJ9.Oi9.mAzGAti3h7LXuINIOmN.ZTd.5BlDfsYf19hWhywy.DSVyDHRHKKXDCT4fuPRfivDheFzfK.1ha.zfKPFB0HPAK9BPCt.lHNBPCt.a.jPhCAz.PS4ZzI3ArjHqJdEPCjSfPB.kD3gkaAnfwR4..JHkIdFQClLkCBnqOPZhsvYZHtHPClahmAzg.ZPeNm2fr.PB74+ijOP.LfP0omdfg.P.HkNf3Ac6JfMfrGPaP0tfHAHB74+xAXXuBTCjQa5C3DPYDfMxzB1fAid072+xIOPTAFB.Ah6231u+6BwxCvJobgytAxAt41VYBDHAfBHzX9JxyRF.IAHyBh..ZY.VQFnVBDBf2ikqW.5t8u.4HiLN4O.2.hA.9HvNBTDfrHHB.lijC.PA7lY+9uBHefbkAWYgQWYj0G0g8SnsAN.pLRM+iv+EDDIh.RXyUDP+AF2.gGHT.l+h4E3GfzvaCNBX.RXActP4HPZlo.HqV9.KF9.2Kjt.4A.n82+YBqnkH.O8.xe+ybEfCvUla.lffxfDZVlj1N3A7c.r.RItHFS.0EPdYNCfBjUiCxyfwx+J7+EUBdDYcuB3ClhgUaXdEzlhaWQfEY3KzqHeD9ArKFHCti3LDB.IHNEh.NCkIzHBSBHI.z.A5A.TM5Xi629fkYvPDW+xCvKgG.JfKvEiYSXj.DxiZDPcG9.h.t.uLxQiTlXsBtClAzG.AznQAxIBjlaiMxA+8+cWCFNiOQX.dm4hvgXtadFb.liisaQ1Zt.X72+xHJ.s.L.hfNHqXFFBbCH6A1FFkA.I78+jZm9CnMHSO31OIDvf7+.+imIDsk5.HJ3.zBYI.ZNIKxHbeXzpafm6GC+.TBfZdz9ADSWlzijeYFOe9eH6EThfGQajafDlrEn.A.Le9+D4BhOfKf7+Wv+pHZIQY9M9+6+yjffcBTaiHMX6Nh0sLCHF.zF.EAHZTYYfGfi+8+kxDPZtEBbgKfOfWvn.wO.6AdD8KvLrzB3F7hHWHXlfWf5e++mPHZzfS.G.M13.Lv.t8Fck82+NVE3BLIPf.9DCBPIgGfv.LSPAFdNTctB7NTqgGAU+Gv+mtK.6EVUA7VcBUe3BXE3pMoLAFTiifZ5Azs.SAWYifpWCN9BIK.NfrG3A.hTRNhofAv3Cz73CvLvfDB8jIiXJQPYyMWYjcz2rPafY5eSr..N9uDK.9dHFC7yDU3+A7eogEBTfvAv..NALfN.yZt.DLtNg+6+zDx3.D9HVKhhictWcNj468.Pgju.OA1DfSvmfS.CfC.qpO.Pg1ZwqANAv.NAL.N.8TtA5JrFAMirUBd.gUN.5NNBLiZko6ftief9fGPKka.uh3HH.PtAn.d.sTtAoBRKffLv..NAL..HjWvmg2Swj2fTgzL.0DVtAMcYgBNAIBNALPNAZAd.WO.HnTiJ.6f3AnmXf.dAGiOArQJGgKwKkqvUfuBZgbFH.jtCj.yA.9gwX.p0fKvwf4iwdDBAfA.POLFnfzA4BzM.G82+9k0AfLza04FckIG4CDdIE.PBlG.9nYq.4.xdfWvKj.OfcQdDuCRQfYWHZQdXmCPNjy14gCvBhW.QiuCC+9uM1PN.RK1pAjCNir..zPnwCy..zft.rd1U..xQW0k0fKvme+eMKreMY96+1HG3ALI3.7OP.HFLC.CHz8VJRANAX.D.BRK8CzX38PB4JDSTMQzLg.B.vDnJ.TSP9.vJ.BA3DjIXxFPMw.zrfzB3DnAP..dWzFhzf.pRSZ1i.oKXBGzYAUNfe.DvfYA3.T5PeG30hGvgXFkOb.N.k.D.0G.hfa.F.Bt4A3WPStnl..hwlZL5v3FhmBLDg.E.0LB6fAFn.P9..eN.yzx3hWvI.A.3KfG.w.NAKAT2wHDXs.J.fyfWkzQ.xbC3d.VMw.7R.A.nhANAS.Llm2BsmCwU0+gO.g24LHK3Pj04HDK3D3LYPrJZlZCHfAnBiO.iFmN3PXl4IfN3IPD3GrG.D88+CrD3DHIf2X9.9JTcv3D6D7tHzORjiUA.4LxDiUvPdLFE.twXQ.RFfWPWB56gb.DVfqfaM1OHF.RX+Cv+xDB3ETTnqbd.hAjR.pU3.fD3Bvw+w7+.i.PBhO.0fKPTtsfXkBB.mIsqU.NBYdF+hpL.IbBv.M.Pz.D.D5..xL9A1StEOze.4Bd.0SNBO.x7.TC7Gfm3F..3AnM3BDE4R3.3BTBKSPtHN.t.3PNEN.t.m.DXjChCcMMPwDO.9A.Jktv5BLL3Ar0HrGoeiyPS.sDHg.PIExTTQ4eFtCt.rrZviuvofkE4l3.XyH3Tj+gCfIC4w3..xPNCN7+.1ETZjakCfSfaj+gCfS.Mh7C4D3.3DvA4N3.3DLRI.AHPCV+H5HBLiOPLj+.Cf...IPNAL.9.p.PJsz.4Gz.QarFj.oAPC.DDnhCPJ76+X42+o7upUBlq+Cy+Ifv+C7uCHB.OoD.P.Pzx+Wv+GgMfmBtLl8uB++.QfTFHAD46.H0+Y7+Nl7uA+uSIh76LtC.ce9eCnCi5AjPBAUa3wbv.VEjTe86+Wg+5.fkVInxD.w0+J8uFeA9AsAPJiJ.P+s1J.d2zXBh5+Ov+XjNWVbDOma.ruS.N.Az+.7+FSctAXORNyey4fe.vi.2+K8+FfDtC.Lns+Gv+Xz7vGCPXe9+CBE3GiGf2.ZQXSMTapLcHTCt.C.vdqCPJBwDHXH9NN0dAVD.H9HbSEp95BzYHMZ5xqKv0.fx+R8+NqB9AaBPKhbd.pHy+E7eBkGDKgCvJgqjCD4FPiENGN.PKg3P3FHxXv7+N+ORcgu.CgiVCjCfZhqAGh3Y3.fIHKDzlfiPMoEN.I.dCNwE9fC.PfyPOoBL.I.tC+jxr.GDP.BBC+Wx+BA8LTajZ.B12+CT1EvVYtcFcnMzBgj9+S7OrHKloCwMPHAzdJEw+.7O.vQd.wntAt.jUBXUQNoNAuLd.CpRCfaPhf0Y5FHNwLpdG8.t.sntA97uT+Kjew0TPeBtD6pdB3LBRnCyPGsi9rfHHiBfBhgHhe8OB+iDR..S5CjA.088+lJZRb8uA+OVmBUv+57uURBlQ+8OA5TBjfwfms.bC5E2+C7uhFBPB+Kv+KYH.v.xx+9ud2.DLgGRS.Px+c7ud2HPBjD1+A7ebNBdMgktBMld.iC9.lAhEB9TPL.PBgQGAyQmbusFX+8eS+qWNiQMftEfUg8OO+a0l+9+Q8Cd.YMVHEMffy.9SQm5GfGvcfCTzlBK3AjEXQ+2+f45+.7eVEB32AIz+57OV1DfLe82+.MM3A.GfY8uN+iEN+9OQz.d.YAlx+8uWD+O.+q0PfSjx+9uL3Cd.vANPJ+6+4LO3AjEXJ+2+bg8+.7+VA.NQJ+6+iLN3A.G3.oL.znntfGPVfo7NvChXeEIQ9ANQJ+6+afD3A.G3.o7u+SAxfGPVfo7e+mU.kCf5fSjx+9eBmCd.vANPJ+6+InJ3AjEXJel5lG.pfSzx+9+.zBd.wANPKi5KfGPVfs7e+WEEmafYfSDz+9O.iBd.1ANPP+qMfGPVfA8e+O0InK.IfSDy7xI3AHG3.w7tQCN.YwDKIO5RQ7u.+u1T+yv+kwO5CLD.cgBQfavL+yv+qcH3FLSx5C...Bv+L7Oq+GvL+CB..XAHg.z.+uv+ecp.fPiCfzw+C7udf76+rN0QW..Le+OcU+hk.DAPl.DE.DC3KPA.x.9BT.vLfu.E.PC3KPA.0.9BT.fMfu.E.bC3KPA.3.9BT.PNfu.E..y2+CGOfWPz+9ObQA9.T.fLfu.E.LC3KPA.z.9BT.PMfu.E.XC3KPA.2.9BT..Nfu.E.jC3BPw.F.vnKERjC.F.kcz+x7eqLCvLvTye+2JyFPCHnTzXn81+g8eqDmPP0cVcyQGHwfCKasA.17e.+2ZwG.iK43RLxnfJfeB.z3dAu4FHo4VZsPB.j86+gZd.i81+B7eqBC.M++v+sJbJJAtAvTq7..BIuvB1.LCIRBtAfL.UI0TQfGvG+qv+r9zAFUTQDITPCsDPj.jPfmvXfIDADUzPAkEHi.jHoX.3GTV.U4D3BTFJaAtAeLvTY4zPfvCnkFfMJPXQ+qv+oliAyHCKhPUZs8+D+mJfHLyLrHhQkUFYh8eE+up.GLCMrHxQxElc+Kv+3KA3K7F.0.xa0zH.hPBofe.s.XEHyOvWMkjS.MO.2.i3H.xdqElatARagEBuAH2YkXD.2AjCGv1akM2XnUlaznF3FPOf+.PP+8evO..Nf7yMg.9AhD1ECHUPNcze+e.6B.UQRAzZNDCMxfSM2.xd0AGHz8FH3.BVfGvM+Ov+kt1e+2Prf2fFe+erQY.H6QGZoMGHfHv.zgVYf.N.U.vae9epf9+A+Gw2.+K3CPFvyHTNfGPH.TR9AnDAaEiL3zEPmAxWATFawrK.zEhuhzcAfzVZiI2ae9OLa.vbfCwv+Cv+e3GPAAhofH.PIUO..CtHoBrRfTX.zEVH8bvbkQFHl8lbf.xECnCHLE1HBSvTkQGco82+SMH3AjL3Crt.gIGcxv.3MrgPjzBkgufH+Gv+ELI3M7wzSDDF.n.3NnGHz96+Pn.3NPl.uwFYfi.PAThT+8+Df96+mle3BfHLbIPcgwVneSxVFTmazwBHlI2Mh82+Cjo.x.iKib+nBE.HmIBvfK.Gyb3e+WP9gj3.yMFagEBQhPH.wTReAHCLgSPwATBUgr.XyAd.0GPIVAd.SDfBInoCE.xQUkDHs.D.fSfOxDvm+eFgE.BIO41SlcivHeE.n.HDCvhHO4VN8BhFirIHMARVe++oPbvZt8lXfPBUoIxYBfRLv72+NDO.r.Y8+9unznSRfXDPf7+.+CphAzzTffD3.Lxm+KJVfVxINQEvfqPYgCfIAfRL.gF3KbFvh.9.qMhx.LDMdBJboJF3.fBg+BfK.gM3H7H3.PBHSBhOfqfj.cM.e82+i1j.ffRKg3J3ObI3AbB3XjI3BnR4GPSPrENAr.ndAvBHf+PmkzD3CbYXXAN.kGZlfLB3CL4u+O5qfCPIgCvl.cB3If1.sUla0UxNGjmaioPBgQFYf8vAekFck0FJjLGHTT.KfHRayIBf2.dCdPvcn8FakARHBQC3MDx.nEFalABH.HSHABdDf..Hij8.vwVYzABJ.LC3Pfh.zTlbf7A.z.9De.t.GAPMfCwIBfCcnAxQ.XC3S7A3BbD.2.NDmDPL1.FR.fC3T.B3BjD.4.NDnLvLx3FYfH4e+2Bwg2.I.EB3BnD.wDdDuEfMz.Vk.DS3Q.GPg.9.KETbiG.G.TRP3KvWz8lH5Pfau01Vw74+mBwHd.xTgXbHfFxfg3CH3CRDf7..w.hB.HCHQfBbA.BMfLA.1.xB.jSHcQrs.jDIBAPK.A.I0RrdAPRXfKvB.HF3BrfHGBN.iHhgA.2WoKvg.BQ4BTMfPjt.lAHDoK.U.BQJEAd.Vw9.1W9AzYzUzfO.uAdBY.fYkNN3MzwXzCxslfG3LzyP8AdCY..Ql05u+qa.fefi.xA.YAdC4LDsfSPF.nv+G7ene.Tk4DVfdapP+9unP.PKfAPHP9uA+GJ0.gJ.r7OC+C51.wDwuBvLfME3FnS4Az1+L7enwAjqfvnPUBtA3HvSt8lIiZxDi3Avm94+gBAXkBDo+iv+fl7e+i3j.1OH0.tAe..JgKvwfuPGgWvxfuPHfwd3B7L3LLRIQAdDAFntgdM3K3CffD51fu.HAAC3.7E.J7eA+mny..ye+2GBFEK.vLhYCHWYgQ1+B7unwLvW1ElbgePHfyfHhGP6f7G3LDR3HjB3LTR3JzB3MbR3CDC3LDRfTDd.0.tDjDd.4.NCjDtA8DPZlENAQDDPg9CH5G9BawhX.jv+.7ebl74+PLiNB3kO.HSQuyaQ+8uqHEvWvExacqY.PEz+H7e+HzSP.D1+D7OARAdI9jxSf..XC4lO.L0+D7+AACNGABt.B4d.iBNMFAVhsPsSHCdMH4l6fmhPe9eZ32F8fqRO.DSXN84+dhM7LHBPPFB4Akp.o41XgjePz5xoe+uArBjB.j1JoAfBhG.I+8uAFCRJhLx+87+mwANDXJhthYaZkKdGAT9.vPiT+aw+eF2.oYFHnfnAF1LPv.7bfOBciG.g.ID.rbR8gPGb+FzWAwE3izD4A3JPMA.H+8eChL9BW7e.+W.2HBDTH.PINVwu+Gb0fKvOsbAnabrtfvNXYBXO.LCP8LPXhMGJ.5..wzRuqbHX1jtAmTEzf..fm..M.YCJ5BB..BA.0.t.P.fXfGvBhQiObAfXhTiRd.D..Pxe+KBv.xC3..B.iABH.DiR5CF..NEemAhNAl.PICdARF.IiAXx.jPXPC3L.DSHHCXBGkHf.vDKh2gQAPxXChS3ELLH.HTL.UbHc.PJf7Hfg.fTwOPiWRS.f3CHYWHc.B.3grG3T3EXVRFkhGfVf.f3.n.P..dHpARnf..3OLEIELj9.BPHXNyw.Xyd3.D.g3H3C7.3C.XPiHdAIELhgrMfJjjpfB.nP.TSf2.MfaPJhE2RJAJ..9iX1sDU.B.3DrK3Dv.YkCvXfREPYHVl.dCXa.fX.tA3EnAPRGR.BLBH1zTI.AP3gPFnfFVYhe.T.cknvB.MhexTfGRffmQXfwo3GXU3BLM3grl3RHUPRIJTfGfBfGPBfGxXoafqDk7HKBVdfg74yre5ITNXd82+Fz1PwijXEBdXtfNLZ.xYpCPIfCQXn6xLmKR8gCfehs+Q8CTDiNwIzy1e2R3+H8OASC.IFkN33vUXGVVCktGHXAfYtVLdeBdL2JdAHApW.8U.TklKjz1MDcK3w.FX6Jt.CAhXBAFQJ.3YhLR34.h3.XD3G3ER2BNNdQ9.SCfBjE8bRcxeow6PVSGDSdbPxOxOCrjSOIzm+eKd0IF3ATxe+CKUfCfI.0RIORZhfegRzNA3AbB3DvT31TpvgA36mSf7jvAPjd3K.Yvu+GQy1.KAi8lazI2e+KqYD7jaOYlYfXxJ3bBNhPzXjMxbGQw+l7+1SEDBn6AxCBbocPhtJoIuAn5l.AaYVRtBB.zFfu.yB8O3osrPM.pxfc7X8.9FFK9+RTozLGdZLCfYEKpnaFVzkW.bCnPBIjf9F.KKzNjOoPCv4VzJGgo.nDSND8MAnjSNojxPQBDOI4kAo41WxElamMRZ.Gi.rHSMHYJ.o.1W.jfl.BNCWEfL0.FV8GPkpjL.VURqcENXqUBofLAHl.TbfCfF.kGowBPBfWfW.bSIbCVGDpB.I.d.HLtI6AvW4sLH.ShOjKVSChuo3SR8gPTH9BB0oKgDaRe3A7EQ5.nugnyMsAxP.QT.nDCPFAhD.YP3BvEngDDX.kQ3uLyIGE9Zs.hcgyvImCPjf6xyGgKH6Hz2mSOaha1+gcGJ8F+AdON.OOtDFGfBu8Oi+m2tgHz+A7O.MRzR+9+DkDPRDARF7v5e+Os9mgGImUM+ATETGoGHf78+.LFPbjdHeEPIE82+SfnMBYymmOfwp7IIObk5.rGHMI.HVU1m+6bG..BYsmyGB8d4.7LHgjtGD.tAuYdAjA5b..i4CTggS.NA1XpcfaDcj7tI8TxPlqBYlJF3OrpgqIblgFUQ7EN.MUXlfuP4fGi4BcA.echHW+RHcUjsfbdHXCPJfXPoOCj7k+Q7ft6.tUWah4C9A7lY+9u.kBvbh.A5FzA3Krb3IEKHUGBrnifafZZc.92+DHMHeJDrfCCfsG.V..xe+KRhj3k8.7p+.XK35zkUyaVhf80+D7+6tCLdhXFXWSVBgufYfCighAyZCKhJ.JO.RU+.NgRYA4F3DTYHILy8jOvdgKi4fuBfAjxKhzLRKNLg.jP3A9wu+G+ahHJ.zDdcm.JhAnBMA1RHi.ziDCY3.ji31gEKIA.Q+uv++qjHMhuAkINLhOd.GmoNhaVtfaV3A1dPfyJ4FeJ4T.T3vv03D36PUJB9.Y.H.FNAmAdPfARzflsPQ+4+KLER+6Rbf3vRxq2qkKiDrCPGhP34CzCvYChYgG.SfwV3QvEPs74+CLQ.lkFH19+A+ufICXVZxM2+F7eO0BPK.AfI6Bz2FAGH.n5D+Cv+fzIXHBBmgfFPUFPI1UiBlaPE.sKHd.DH6.sQ7FBjoC.zprTHt.PBBuA.I.dOn8e.+6gsfevZ.Hye+WgIfGfafWfhf6.3fAL3X7MPFKt.QH7FgTmHxgt.MD.HxD1TAEEHXndK4Rd.IAz5AQEPNQtRmVCuf4EXeUd.f.fPnOYDjdF.IPtEoEdL8QNApE3hnWgpmFvHt..MfXI.J.x.B2A3.v53GfL3X0oHqatYuC77g9I3GD+3vvP3D3HQpExY.YPHcIPZlgB3DXFIARRh34H3H7GXY.xLfCfokTxUN76+snd4Bf1HuAfBfn0HP7t.w7DEt0L.I82+MU22+ySEfPB3CXA.j78+QPAQ4W9DrFN.jDPcx82+diHPu.N.L.fLf7AXcJDS.E.XLBN.p..OlwBHkBdAtYTP.iCPz.h1.f1+F7uPv2NEFABT.IE.g82+PnNPOF.brwBB.gN3.P9e+2hf0.vquF.KfP0C.eIH+fIr+Gv+6oIfKA.K+qv+sDHdYCNBn7uA+OhOfGQT+av+sjW.qPxYNBdDu7uA+ORB.gh.6MFZV4R.eQ2L6BN.oB3QC.BKwjRIDGTemO.5iKyrmWQ5TQO.j.Vvf.mLZExa+8eDYBjofDA.6cNCQuvXu41bkMVczklckAxqo.PYe9eQN9DLf.fPz.B.gCPqCZy4gz7Hx.Dff.v.kgWZzAlThVKH..tMbc9.AedAidrvfKvZfW.Hf+RzfA7nWA1BCJFHJ.h.fCvyjKfAjwFZV..cnCg8nQOwwMhi+8OC8OUQo0JPY.DWgCfMfe.HfrL3CHC3aDGPOAz.fCPufoa4vvE5IjF.I.FTnO0Z.j.XgYd.dhNAsAPBfww3yr1e+ig0bMeHOA32mWQuf3G.o714B.xHfvN.JIZ9gqfrgSPr.nB3skZK7AN.oJDC.A.3..QQ5FNa+.ZhhGPlfrv2+ml5.jP3nYcpTBskgiI2favqgSn3ftoIAEK4gSf5.j.P..XDgKv9gGf9FtB4vH53d.cIKo9XvSdDxPNAf7B..fB3D.A4aES3roPHQPN.BJHCjeljfyl8.pt3Cb+Z4BjEiCP.CAf383ORQQtBIKNAgIdBx0tP6ENBjGN.yCzcfGD4A8S3BnTHBMdAF09.oCBgoOPQf7ePl.9ABEd.WFjifSPLfwzgwqr5fGPKtyvG.j.XDANLt+u.+WPlnPJXsFx0.zym+ePRfv2puAHgf.QiV2ly+Ov+ErJ.x84+27D.J.Fi.ThiG1IafrDPUAzz.xDfJAXJf2jsfWvYuOfNg.YHL5N.mDVnuXy+Y7eL6C9.qCPce+OLW.RRe9uArGxEfjE3gv7+d7+K.94+F3G32vk4DPaPJBBV.X12+WfBfaCt92v0f.VW0+6+CTa30nAX81+CcCDZuLCHECtMj8dCT.hWALUduL.323E6AjMTWO17.LGPWIBifDAb.9u5+qvq...f.7OC+mxYAPy+f...H.RH.XHHC7+.+WQXA.BLfCV..DC3.jF.w.R.A.yC.k3SO84+UjqTiCvv.IwvJApEAHSMfSf.AfiLfSfCfaPGfmlC.jC3ALGIJD.Hy.zf.7GPFOd.vBJxgG.Z.PC3Br.3KEv.x.BL4AlfinL3HvG.y.NSxAd.A.Be.vGP7A.Qw8xu+uwGg7N3eEf.y.RLhYDf+86+anm.fDiMfOp..LCHAHPL1LVPFUzKgNb3KEzHKNfA.fEPfj1.fA.x+7uL+uRpAPCH+9+JolPMffBR00VXtkldwfFBAUGcn8lb5.hS2f.MKWQRtMGcxUWak4FcyovUxkFczUlafHVdf3gDoM1ZoARSgIWZtk1Xr.hRuMWYlAzLGPWYxUlbffhafl.CsL2XxkFbzAzckIlKjARWGzzajklYoUFYe+e9wUfLtQFKfHy+I7e9xAPL+Sy+qzJ.J7O.+GR4UYI.zIycEDjUEQzW07+C+uhq.PC3H.ipRD.HIjjK.LCOFSyb+8uIUCJTGDTSOUkST80T.9A.3.NBe.vTf3A.DArG.jC3H3wYQCvTe9On.F.Mv.xqWA3+K7uJ0K.NrHxm+izFe+uIBB9BjXPNrHxTuUma+Ow+2qg.z.CKe++JtBd.Ll.IvElbg01WoQFdfKvDBblbvAdAQLPIiUmb+9+OI++A+KRP.kA.yATdfu.FFcBXWrxKA2iAj3VY28kcg8u.+6NRFPhYgMFcuIG3BHB.34infCvK.jG3Cv..3cCjfGPF.HCHIiPakM2bgcVYnHRPdHfBf.RPFMvZkk2WZmxAyUGbv8lbzgBR0gvdCUmb1U1bJjveoANC..fBf.0HF74+Y1iDi8Fa00layoiBILBL5.BTuklazMxyIzTXiI2afXUXrUmJ5GvHw.d.X..TAsD.kIh+fC.G.HCvb.fLfaPM.LC3AfA3ITC.z.LG.LC3FTC.0.LF.PC3GTSNbDrEAIIHjGvVz3hYe9O6pL.Jt3hKgjA.f7e.+iT9EzWBxTCKfXx9fP..0.DA.LCfN.jBBXCLr.N.uXzhAzWBfxBPh.FKhjDP6.TA.bC3CvR.o0F3.vB3.rBX0.3JfHG3.f0m+OWZfmfg.MEfsH.MvjhH0.d.Vyha+Gv+pPX.uYVK4DT5EPWY3QGJjvleBvhHO82+2+avG.BLJ4j.fPRX+8uPYB.He9eVtoCR.nvNRAnDrzpJcCd.GAnEAvBHia.b.Yzu+WQQfFx+B7eEF8eA+qROfoxm+mhDsDEns.vLJ8M3HX4X074+IXI.r.j7fgIfT.9AWBVEfX43DHNXp84+UrMfe.tGTBHKfyfjC8J3GDIXS.9APBDEf7XPwOjcAED3B3HXc.tGMB1J.wX3ADh5CfNY8.t.Z.hKir4gZA9Aa78+CHF3MzAOUAdD4Lz4oRG3GTU.o0FQ9HxdEXlYkI2Vz.Bi.z1+E7uIr7OA+Ox8hvE3H3A3CLK3L7A3BjI3K7A3EbM3LDB3B7KHeDxR+Ov+mDvve74+m..3Ejgng9eB+iN+BeB.yH1kfW.Mf.c.kwxm+ittBW8+b7eJtUhSkSf4D0koVAt.IIDUfmPECzVX38UHH.dBXXjS.AI3BDDPR.xJfaPDgXF3HPB.uA9Aj.PYeE..JPBHhJebgGhIxD4+F7OFqHNAkJ.Ig00afCPKifLIQ4kLfPSHJFU4fMjIo9OC+ahQjoK.e82+iT.Ht.NCh.R2hCPtfCwHhWvPfyvQgHg.uMVZC+A3OjTHSLN.K.xHhrzLoC9.lBvVxwLXoCzGgrAgcDtDqDtBs.5LOZ++c7eFR84+VjZpVxkSfLG3i7C.0Dxlkrl.jDFKoCvtfWSQoFN30PjhG.tJC8+.+6Aapyf0fCvT.jlvMJt.NBlBz7m3brdTqNuHVGBXqKQa.YYbyCPB.B.HVdPB6ITPTMCHIUlZnnLHPjPPvI2a3kVagQWYoN..C86+a.cZ20vbfHVXyUFYf7laf7Fajkd.L74+AjV4FLqHuJRahaf+CIKPnAtAq.PL.tx3C3D3NjB.x.ZJiK.mf6PJ.LCfoL9.XATJfTNP.Bz.JdoAfv1ausVcvA1+qGvk.sKQRMnWnP05.DKIS96+k7ZPeBtAHCd.l.PWfbB.krhoJMA3ATgRbH.Hq.xm+Ovzf.vJyAVZAj.H.AIHO.Pd.9.nM..d1MB3RXDnm.PdfKwI.NB.k4O..BdL094+D.CP..psfKAl.CMHaBVzf2fJ.tIHj.tEnCvLfC.JfOQ5gf0m+62.fOf6fiw6f+vlfzze+u6g.B.3WDO.y.d.wCBofKg7fXEvjBRJfaw8.TCv2CxTgKg3fLURg.F.gG.5fPifcEdC6ABMfOfWfWgrfCfWfLEXHdRbfBGvZBd.QbTejLNHZ.NAK.pEfcw3RXCIz..J.0N.s3zf.jxHvL9DiABIAfmLZsC.n.xAf0.Hx.vJfjiSiBB.kM33.nqY5BjgHtA.IPh..7haaR9.C.lEOpuKI94+f37K3LPckARXkC.GrTQ4Djv+A7OBIjDWB.hIfzHZ.dSgcj57f4M3FzeIo.vJpeP7kDA3HLA.y72+NTF.y.Fn.7B3UDJ.o84+k5AfLy1uf6yx.vRI7G.a4Eh2..Bn.tPZyAhHiwVZvAWYjIRYCAhFoPXioKVElEGPz1t.mA.JnDe5DbQQZFxuBq5H4Ax+oPX5B.F3FHR.wDCniT9AgCt.FAfLgHiPc.vLhXjHeB.L7P1SK.hh.A..n76+d.M3FPGHn.t.BArYfWPEfC.V.sz3.HWijGj3iwgPoM3AAr2KgSwfgSPqKgX3.vZAiEFaiUGafEh3ADWn4ILmBPVYxQyK.P1m+qCnDPGZkAxafP..xAx7GMpX6GEG.L2e+qirfjA.frxo..BHjoB2..hYeFNB0Zd.3BPL+8+XMBB.ibEXVWp0j5BXkCxFjEQvEAxL.JC4EDK.wT3vgCvJhOfIfK.b+8+vvBD.fFG3BTEn6ABVfsH3.jAfXAxEfavgDOK3GfHo0CN.IBPBfSfhfK.V+8uuOCF.fe.i.PC3.vHHcAdAMBZWffA3F3n4Avd3FfA.2D3KfK.jfrC3EPE3BrC3EfAv6.RLgQnHkBrr.VF3..g3AvH3Bn.nT.jLM5aL+TdB+MbykKAafTEPCDVRh7EXHEjRoevokEH7Az8HfKFhMl3nfCN..UD+f76HzNZefGPF.wV3..7aY.1sf6gSfCvQfYzHwNboiXw3LrW.8o.PoD0as2wLsS.tNUJXHCD.qYZ6FvD3gbUvIBpSf7P.rPx0PrD3fWRovxVInERYAwVSpB.K.MU6FHF3g.JjkBtBQ0dAuAdHP09GtILCAGhHE2dI5D9.FIRbgDwfJU5z+ah3gbY3BLDHOEjVi.DHVEznBFK3oLU3ATD.I.tARIN.EChWCr2TkQWYoiXgnQYIsCxAiwF5G3I5BrrQdXXWAvBHFFK.l.DM.Tl4BXjQsjd.QEzY.EcZPQRJl4FVEWxzMVBYRfpCkGv4fK.JW4hX3Rxvjws4aPF3F7CHzChODFuwW.dAhHjjfYhvn.NGXBRM.HCnbBbmf2fWlCvCka.nf6.gfbRguBdCMAlcfMMHOU10fCwIlxO3.TM3EXM3RfC.z.70fnXX1ANDhAfLfC.2fzH3UnBnMBBJfag2GuIHQAdEeerSfG.3frE3UPH3BrE3UfBvaARTfQ3nbBB.fVI3..w3.zE3Cn.nTDzolC.TjXG6Fvqv6aRur+PpfTEPC74+LEGHwLN.DMnE+8eSYA.L+8OQiAjIfz1l4BDaD1IXV.lIfwD3EDxIgwl5.BhZvBdAf.vbbcDPBADz.RHPM.z.iwKnsAfOijIfPB9.sCN.KrRqg3BPle5+FAEv6T1S.AU3.XLvk.FwfFCIJHPXhMG3..moVBd.6XhpGhJ3BvIv5.fOAwJ3I3IHRBNA1AFz.OC.7.LzfSPifAC3BvF3AXGPI0tA5Fd.q5Ft.qEPo.z.tmfe.0TYr.hGfHP6KTfHCAtAkA.LDwP6Ir.3IfBYhmdBD.dBnPlWsmPNfm.JiEMK9ZtUQEhBgsx8EvKPWvYYmahJ+2w+XI1vZBR8nKxJfavVn2vMCR04mDN3FnE5BDz4F39XTCtMcgNDKAfB5GfWjrCJ376+I0C3Bbw6.r6.nUFavANAY7JrfdgPsevatofBlUmai4T4NBG.JLlgF8ltWAvVe+O.7WeDzXTq+nTIDU1znMBHNDS5.9.nMTHx.oU8Ib2HDABLfDSYrCdCiPDcfbBglBBKj.G3mjJHBAfL.2JP..Zrf2vamoEXl.B.ftL3MjBHVATl.cBP..NEoCxJ.HCHECFJf..3WD+PiCzIfGP8.A.3RjO3RLJZVA1OfB.3T3OXn9z0.2BP.D9EF.rq.CP3Wn.RO.N.r.B.gegCHYAPm.D.gWfD.A.3W7L3IzlXfFNDTC9.sAD.f1rY3BFDfB.n0BNAWLjWGEAPi.7Bfd..JXNASitASBDiimfdnOQn.n.5NzIZzgd.ad76kDEXiglViGP2.n.nvfVofevJjr1Kq76+ET.3.nBZuB9Ap.NBVAD8Hma.JjfP4BrLHW6wYBjlfCvBnuwrBF.3M7C5S7JPRFzlFMLXPhbcnCPpfCPDgzRXVCpZfSPKHOJ3CvBIrCN.dApYgWwm.MH.Ibh60aPbAuFP.B7WffRXSqlZnafbfOwKgIM5FjG3S7RXWitA.BdCu.T3gtMPJXrR.nv+.7OLfA.Hf3A.z8+.+aPe.fxu+Cxh+8+GlFEEAE0+l8uDWDRoJ0H.i84+evkMhJhje9uDYJPRDwx+C7Ol0JPLcwxm+6AXfpxI.8DRfyvJ.HCvq.tAPyi5+9eKw7u.++3.fCPPfKP9ALSWg8PXSIFmfm.RBC2e+2GKAjlaf+vQ.wcPNBVQ+Wv+RL++C7OeRBt.0CRLjPYniKjbfKvkJANXJZCjjm.l.LR5i3InfkdCXBxf.j.3ML1HCptHC.NEjA7XjaPof+hXpKPAsrf7DbDXJWdA2.9Kkod.M.9Ajwd.hCzV.0Ma+FR1tCvohPSjriiq3LaR7EBA.jvZQCN.jDzdBECX8Lh09.YU+EN.1G9AtDdK0G9Cs.TeA9B3GbV3tjO3OfFP3Cd.zCTWfIQ3EjA3E.RYqA9DfTFKfS.HAgzX5EN.9HtAFDdK8HtCEDd.7.tAkEtK6.tClEdB5XVUfy.9AC..J74+qzNMY+2+qfLMcxdAzBjnlWfkjSfcnbVPAAtAyH.OfTiQ1DPBj.jUj9HPHA9Ambig9wG.0.htB8L3KHC3GLC.s.zVfji.nPyMfr.f+DaNfPGW0CPLfTO3A38YXFjc.AX.xE1m+2Li2TJ3CnIHGZSqgTJ.J.XyHoFXxfxZfTwe+mwtfGPEfDAndEJO.XEpW.PKf.PH.AxbnCPJMdLP5g9A8D9AFcnngHB3FrCHsERvirtZk.PNfz..IDTb.lLAnDCKyjxIq72+lHaHuADtf7CHuAPBl96+.7eKClxp.Ni.ffRKfevX.vh6HDY.uHym+yi6gVI3DnE.f.tAZAjjgBAHn.x.f4J.w.1qAkMH77eA+mvAf3YPWCBpe9+AYGJIgzbdEE.JxLkA.sPHYCPMftPXXKhIfvD3APN3GjH3EPN3EPG.r.tAOH1Pfivfhk.H2IxC+8+GYFTefPGXQ+e.+ymbfMA3fTsHVBxUBfxMx.R3.HCHK.R0f3EHL.BF.YM.xP1ufyg0gnK3rTMHuAdASCB0AIqfzIjrEr2XnU1XqgGvAe4Ps.vYd0M.JHVbfC.niPA.x72+HYM3.DQHIBhD.JUQUIDnfC.G.vyfCAN.O.DKfGfJfj2P1..UoTKPGLnOoLb7AXCPvrdAHM9A5.lafWvLjCPfBwBHZLNA8SPKxTCLr.x.AYI3EbCHWdhU.n.HsBDjjOPtfe.Xg0aPVGhVAsLXNENBYKl+f2vffOPXjzHHhBpa.UE3HT4LKDBVgxhlVFpKf00ReDfN8DDr+8uzqQPK1.CK1.l2rWPHge.Nf1i.kYWYCR4+P7+JoFTQhXwe+uBp+8edlrJa.cWfoC1Pqa.li3Hf4.vafjSQHAZMg8H3OXC.x.N.1.jI.dSPfCt.6td.ttFYA7VckxIfCBNAnrnqL8MXb74+RIIPMClCAvxL+8+CDGZW.YPqW78+eDQ6UnAQc.tFZxtDHAjbgbMPF.ZdATWZ+Sv+FMP.uY1+p8uQC.lchrsPZCB..vRWM9u.xQVO.qK.InXo.DVIn.TwJxIPI.9BOCPX+8OAVChJ+Cv+M3GXu.BFi.6+F7uCoFFV.bz+R7++FGF0+yw+SYNn2Abzf7P.rPh8CXG.ITjCf4aHKBPBfOBzqs.3n8Ln2MhWgDJQtvD0.vBPUut.TAPBfCC0HkO3pMMP1AtBRqd.qCNIQeSUHLWZyQWYtMVYeQnc.P1HMKBZkXB.v.RBh+.dTofPYIvZkk2HHJ.auImHb1.KjrTQY80POwzSR8URN84+w0..o.DJf0RakJx+TJDXWAxBfH.3cvV.oY1e+6.oe9eFdzB6frDArPhSI8kX56vWPEjTe4TUM8kVO4TQSkxI5Qxb.kGHcAVm.47S2AtD9.1sfCPM.HF3ZDy.L8zUeAR7fCvL+8eTJCtEkM.RIcDRfO.Mgc..n.ha1vd.jLFvJENBaEfXr.3wfG.Hg4D.hA7CDkDXJAV8.0vHhBhQ.ZR3FTG4FbGA0AGYgQGP3DdGHF9+vV+HqwK4..x+17OIIYt.imhxkrEP..BWFZK31vk4C.GvcAxVlED.IvuMJVt.1ChVF0fJeBxuf7UQUA9MdUt.BBNAcMjiGYN...H.+yv+jvP.07OH..PAfDB.N.x.+Ov+Gbs.f.CD.EAHetj5+8uEJI.HwTCPC8tAoH.HyTCfovHE.lB.z.XOpj0+.7eE1W.Hy.iS.b.HSE..A.R.D...x..bfTf...F..0GB7.vR.jF.zAfOfnAAA.B....PzBjl.L.HK.NA.X.X.X.....Rfzh.nAPXfDS.yA.Hw.zS.GCHg..AfDB.BARG.LGHA.tAcXvL.XKbG..ff.xAATI.Vk...f.HJ.zK.A.3GrP..A.f..9GW.9.GA9I6.9Iu.9XqA9vaB97KC9+jre3+S0JgO9V.DfYbBF..PBHFDP.G.BAFg8INFP.kXx6fHA.P82+zAOPX.F.lvb..9CPC.lIf...Y.BABfA.S.RAC.fj.fGHE.z....Xj.RKBTB.MAjA.RD.d.hBfA.3HPD.n.xEBvD.h.RAM..D.rGEt5SOJb0OHJKSfjFHbDvqg.Rh.UGH4bRLBTB.6.TB.NE.Z.hBfAv.APvVWChKfG.lAXA.Gc1Q8CBAFfT355CjBWAXf.TPff.vAczOfA.3HTIPaM.H.PA.f..ZMPvOMyLy8.TCD.PyLyjOfbH.CAhBfdX3Q.BP0C.FfD.H.Hfj.7APF.FAf.f.MyLyffMHBAPIfvOHF.Xz.zAHJ.F.fivi.bBHWHfQ.DBHEDxmFPyLy6yv0iBPHO..pppJ.gDHKb.f+D..XTTH+.hT.EAnREvF..J.fifTA0K.CEXuH.A.nYlI+PtdTBDNfnDHsHPI.nIPF.3k.r.HJ.L.gPDHCHr.FTG...vE.7FHED..QEd.NAN...HKfOvAADA..A.3DLA..AtAO.NAu.dDa.f.fDMP..xH.mP.+B.X.DTBf..fiBlBfA.PO.fRfn.PBlT0BLF.qEx3.bTJuBvao7HAzA.U.HWJaJPZ.3FHUPPL.HtSRABe.A.HfAN.FAf.fnP3.7d...kJhHvN.blRKLRMBz..DCxDAD.fgfJHF.x.JAghoA..fPT.ZJfHPBh.P.PQNY0WAgDQSI0WV8DSU0TQfHgHaCvhfTTJ1Cd.c.jZ.APPbAvAfXIHk..jfP...jN.gAfUfrf.+..TfT.HRSv46mpu..RYDb.f6PD.f.fBD.zfDE...5S...P3DXA3bv.HJG.l..xa..XYQ.hPqs.BvkFciglKF.nOfkL.M.RE.kLBDIDQeAURTMDRf7.HFC.ifXL.G.hBfpAvDCPRfHA.GHhafLB3APLPb..LfHg.AAfJfTPHBQvu6knP..jnfQL3OnJPdNvh....f3IPpCjmgqPZ.7.Hgb.SF8zWSkjSEENAnAPifD5P3CLG.8CP...NfT..HrR+f...wADAfBPX8KT..gF3PHY30rO.NBhjgqy9AZCH.Dx9..PH6G....NDvBdDY.hxgKCW.7HHIG9QbA..fG..BvC.MCTCivF.LHF9lHA.AABD.Ih3JH.PRP.Ot8lakERBMUHOSKZB.CCP..fhfHKv..hU.3DHL.hU.7CXF...hG.9fr...HF9fOPUAQKPUMF..4BPb.D..HbyF.NF...NfzFH.HfR.L.PGT.D.z6MFVC3GLfAyGP.738++Azj.M.X..xH.XCHI.zCfOz..C.3.L0.8diA2.ZEfCvDf9.3LAf6++++++++j4uInAx.A.PIfNf6z5e...PJ6Cx.LAN...B.t+++63O.x3tC9KTXM0Mf.39P9GPjCrXSNcyab3DG.Af6k5O.RBhwAABPF+RF.Sr6B5O.SBRnseTntLC7ynO.TBhjMkTPzDtL66td9CPkfjb3Gw0XE.H.tuj+..IHxBL.tCj+.Lr6+++++++++Gp+GcO.lbh9.Mf6++O39+kZ.HgHxCvT8LN.g0S6.TVOo2eI++dT..vki7X65PP+28O.XBhwuWI..jIHg19Qi9tM..flfHY35r+65A..aBRxgeDWi.Kv.79R..fkfHKv.7NP...wu+++++++++eo..vImnOPC79++++B.TfL.L9778yHc.B.rj0Hg.x.f.v6QA..ctxgsqCAueG..3IHF+dk..vmfDZ6GM561...fBhjgqy9uqG..DJHIG9QbMzcfBv6KA..bBhr.Cv6.A..E+9+7..v.HDTA+DPKD.P..H..s.v..9+++++++eKKbx5.jAHD..IfNv6zBv++++H+yA..fhHtCD.teF2++++++++O7+FdCL.Ngq6+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++wbG.L..3.+S6+VgN..72+is3+++5+ClNP.D.f+.dJC7OK+KI5e+uUnC..fIGP..jdBEDP.7eT+WVwAz7.+yy+ik7+28eYECfyfX7+U9eYECvyfDJ.HDBy+K3+RZL.PChj+26+kUL.QCRxgeDWgrJv.7+R+WVw.vLHxBL.+Cz+kUL.M+8+UgI3X.v++Ow+RZLv.HDTA+DPK7++++++++OR+WVwADC..Nf6++++++++++++++++++u1bCfLtvMPC39++++++++++++++++++qM2.LiKbCz.t+++++++++++ww8+C7OCKB9.K7+.+yvkfuwEfuwHfexTf+vKfO1Zf+vff+vEfO4lf+vrf+vEfO7xf+v3f+vEfO+9g+vDf+vEg+OIqD9CCA9CWD9ra4xy.D.HD..JfNf6+++bb+OY+6LWAPD.e9O1tRfT.jF.s8uC+CqV+e1+RhG.gPhQ+qy+YP4+28+FPBfHfX7+U9+FPBvHfDJ.HHB.+K3+a.I.j.hjgqy9+q2+gVE.k.RxgeDWgrJv.7+R+uAj..BHxBL.+Cz+a.I.iCt.TAdE.7++S7+FPF7PBAE3CrP5OfH3ObA3yrC3OLE3ObA3isF3OLH3ObA3StI3OLK3ObA3CuL3OLN3ObA3yue3OLA3ObQ3+SxJg+vPf+vEgO6VmrdRwAPJff.PC39++CN9e++uWAvP+8e2KIfb.Pl6Nv+Af.PL.Pxng8yHc.B.rj0Hg.x.f.v+N8uJQBhWBj8..z9ND79c..f1fX76UB..aCRnKI06BB..bChjE43+49uyXAP2fjb3Gw0Hd.L.uuD..fMHxBL.uCD..LMxb.NF.79+++++++++7A..pbBn.Mv6++++K.P.x.v6mA..quxgsqCAueG..vNHF+dk..P6fDZ6GM5+17+uWAf6fHY35ru+5E..uCRxgeDWlLJv.79R..f5fHKv.7NP...0u+++++++++eo..vJmnOPC79++++B..vLuiF..b6JxztND79c...tfX76UB..4BRnseznuaC..nKHRFtN6+td..vtfjb3GwkIiBL.uuD..XKHxBL.uCD..TM3BPE3U.f++OQ..CfPPE7S.sv+C7+ASBL..cAv..9+++++++eHKbx5++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++Z8uyXI.P...XC7+++O2+kkNP.D.f+.dJC7++++++++++++++++uI+6LVADD..Nf6++++++++++++++++++u1bCfPtvMPC39++++++++++++++++++qM2.LjKbCz.t+++++++++++ww8+C7ujPA9.KD.P..H..f.HG.9FW.9Fi.9ISA9Cu.9XqA9CCB9CW.9jaB9CyB9CW.9vKC9CiC9CW.976G9CS.9CWD9+jrR3OLD3ObQ3ytkKOajO.vBHH.z.t+++yw8+j8uyXQfS....S.x.LLD.rAva.LG.kA.Y.fDHAH.H.bze++abKLG.zA.U.HG.gAPZ.7+C+6rX.D.H+.vAfL.f.b.TE...6.vYC.hCAHA.+ay+eNF.aPBT+qy+eN1+28eneA.GfXbPfbPQNY0WDIDQBDhF.A..IARA.bPH4ERP..IHDTnO.wA.v.xB.Dze+SK4gHzA+tWhBA...96m+CJJfb.X.D.f+DRcfK.C.DPHocvh....A.H.DAjAfL..F.x.QX2arUWakA...9ilB.A..7...7O.++KQF7kUOwTUMUDHQLP.A.PGfDJQ8+uf++aX.3AHRFtN6GnMf.P..MXHXP.f9....Dt.1.tGLDdMbAvGfjb3GwE...d..7+R+G5W.nAHxBL.+Cz+g9E.hCt.TAdE.7++S7eneE7PBAE3CrP5OHI3ObA3yrC3OLE3ObA3isF3OLH3ObA3StI3OLK3ObA3CuL3OLN3ObA3yue3OLA3ObQ3+SxJg+vPf+vEgO6VmrdRwAPKff.PC79++Ct.+Gx+NKF.z7OZ+CKX.L8KFMjjNkCAAgDQSIkSd.D..7FHE.vAuL4Hk5d.6.D..XEHEHvO..EHEf..Q.v46mpu..v64A..TChwAb...Z76MB..UCRnKI06BB..VChjgqy9uqG..bMHIG9QbIRS.Cv6KA..RChr.Cv6.A..RiLGfiA.u+++++++++Od.fzo.3xIfBz.uSK.DPvVW+C.qrO.+CB....H..fEfPP.BAfND...fPfAHEtt9.ovU.FHB.P.kvRLfzN.PA1HAA.X.jhXfvAHC.bPBnA..vyEAPA.f...vADAD7SyLybO.g.A.zLyL4CHEomx.VzRsCF.fiPQ.3AHW..FfD.H.Hfj.7APF.FAf.f.MyLyY4IPO1zjflD.c.RDfA.3HjD.m.xEBXD.g.RA6XhAzLy79Lb8n.BrD...pppJ.gDHKrkICfQQg7CHbBTDfJU.a..n..NBRAPFfjA.C0GDgPhAnYlI+PtdTBDNfnDHsHPI.nIPF.X3.r.HJ.L.gWvIDTG...vEsEZ..DU3A3D3...fr.9.GDPD..D.fSvD..D3F7.3D7B3Qrw+r7eN3IfR..fKqH...7THVKPY.3VO82+e+CvhqTX65HP+28O.LBhwCAwSE6di9CPifD5P36tf9CfifHY35ru654O.OBRxgeDWi3Jv.39R9CfhfHKv.3NP9Cfvt+++++++++en9mTb.7xI5Cz.t+++f6O.TIh6QwAAPAPX.PFLfCvPfLv+A7OC8C.H+Kv+L7O.f.xHIHE.SAPS.fs3i8CH1.B.rD1Ho.x.f.PTnzz4.Bv+.8eCI.hWu6CBCfzA5QDHOs..D.zfDE...5S...v+r7+BMD.l..Bk..3e+O.AfHT..T.HCf.boQ2Xn4hA.5ye+yPZ.z.HQ3Z6E7ETIQ0PHAxC.Dv6+++++mDB.CPTYAMV.sPM4.F..s.v..9+++++++eKKnBqbk..j.BB.Mv6++O3H..Jh3NP.Hv3yymSTCB.tqE2tTg69vc++++++eb4.CfS359++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++eL2A.E..Nv+z9uUnC..+8OUt9e.+SmqBXA..7++h9OcvCD.A.3Ofmx.+yx+zA+2+aE5...XxAD..omPAAD.+6z+kULAAD..MOv+77ubR++c+aE5.3LHFCvAgnxu+WF3e+OgR9uf+Koy.7LHgB.BfD5+B9OcNC.zfHI.I.hjAQS.Agz+v7egI+ud+Smy.DMHIG9QbEBF.Cv+K8OcNC.yfHKv.7OP+Smy.z72+WElfiA.+++D+OXy.CfPPE7S.sv+++++++++H8eYEGPT..3.t+++++++++++++++++++ZyM.R4B2.Mf6++++++++++++++++++u1bCvTtvMPC39++++++++++GG2+Ov+LrH3Crv+C7OCWB9FW.9Fi.9ISA9Cu.9XqA9CCB9CW.9jaB9CyB9CW.9vKC9CiC9CW.976G9CS.9CWD9+jrR3OLD3ObQ3ytkqOC.Lff.PC39++CN2.fjHtC.DfL..C82+Nyz.yA.Z.7+.+GZY+Gv+NK1.YD1T+.hIf....BzA+9OFZ7uS+uAkf3E.iQhR+qy+Yfo.fIzu+S2+glE.jAhw+W4+aPI.kARn.fPHx8uf+uAk.XFHRFtN6+ud+uAk.bFHIG9QbExp.Cv+K8+FTBfXfHKv.7OP+uAk.HO3BPE3U.v++Ow+aPYvCIDTfOvBo+.if+vEfOyNf+vTf+vEfO1Zf+vff+vEfO4lf+vrf+vEfO7xf+v3f+vEfO+9g+vDf+vEg+OIqD9CCA9CWD9racx5JYJ.w.BB.M.XLrD2C.fD.Dv+D7euiBTIfA.JGlhXfL.Xl.B..jAHD..Fe9euiJfj.fGHL.z....Hf...f..HDAPSfbvu+26n.3AHJ.F.fi.Q.fBHWH.S.HBHEvRkJrGEt5SOJb0OHJKSfQDAn7ZH9..vPAP..MU.6..HC84+8dO.Z.hBfA.3HL0++++D+qRb.XjHw.vCfLfARAPZ.PF.k4tC5+OY+G5ch3K.YRBRrqi+B.gCP5Nc5CflfXLQs.PQ+C4+c2E.aBRnKwj6BpO.bBhjgqy9tqm9.zIHIG9QbMhG.Cf6KoO.XBhr.Cf6.oO.yCt.TAdE.39+++++++++3oO.JbRl.HCnC39++Ct9NoA.NHh7DLE.FA.Vt6.9BfK77Gya.A.KQMRFfL.H.D06McMf.7+P++aS.j1JpvtN7Kfkm2OPcC..++1++1D.pAhwAAh6QhO.qARnsezlCDPC.PbHzEP..JBTfX.HC7uB+yN5..AHVDjEDDDRDMkT+Sv+rmN.rAhjgqy9tqG9.zFHIG9QbEhM.Cf6KgO.nAhr.Cf6.gO.zCt.TAdE.39+++++++++3geRwAvLmzI.+Ax.t+++fi+2+6rU.vTOu+eF+6LV.zzKf.fU9iV..T2J5LjlsCfJe++QL+eI+ytWCX3jpOzHX+NbH.fcfX76Uh..2ARnsezpuaCB.fGHRFtN6+tdH.Pdfjb3GwkHMCL.uuDB.PGHxBL.uCDB.TO3BPE3U.v6+OAB.CfPPE7S.sv+C7+AMBL..cAv..9+++++++eHKbx5.jAHD..IfNv6zhv++++H+ytW.fhHtCD.+S1+L7c.ADv++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++y9+Nak.fA..fMv+z9uUnC..+8ubT9e.+Sne++++S7+fk+8+VgN..HRK...X..1AhDDP.7uS+SmyADP.++++++++++++++++48uyVAPXqTMPC39++++++++++++++++++qM2.HlKbCz.t+++++++++++++++++++ZyM.i4B2.Mf6++++++++++++++++++u1bC.YtvMPC39+++eVb+uO++6NBb.f67Oc+CqP+++++++Q++6N.C..H.RB+++++++++S0+glC.kYhV.Mf6++++Yw8+97+ue39cb+++++++G8+ue.L.t++++++++iE2.XlIjAz.t++++mE2+6y+9Nu62w8++++++++++++++C6+9NO.m4B2.Mf6++++Ywc.ARv+77+xTCvA+a2+LbI.BBhw+W4+MCM.CBRnZsv+B9+5RC.gfH4+89eyPCPgfjb3GwkI+AL.+uz+MCM..Bhr.Cv+.8eyPCf8fK.UfWA.++++++++++Oe+2Lz.f1IcBz.t++++mE2.r2JNvtNf69cbC.efXr6UxM.8ARnsGxeB35e+Px+.M...zRYB.3u..F...XSxAt.L7uM+ycq.3GHRFtN6+ud+ycq.7GHIG9QbA..fG..tuD2.bOHxBL.tCD2.fO3BPE3U.f6Oxs.b8n.fMv.8diA2.pv.7CHG.7.fCE.CDPk.X0HKHDQ.C.PKD7S.sv+++++++++H8O2sFPZ..3.t++++mE2.bXJ9lB0+ey+qqn62wM.HBhwtWI2.jHHgtjH8KXt.nHHRFtN66tdbCvhfjb3Gw0HT.L.tuD2.XHHxBL.tCD2.jO3BPE3U.f6OxMH1B1.t++++++++uM2.nlIlCz.t++++mE2.z3JNvtNf69cbCfifXr6UxM.OBRnseze8aSt..IHRFtN66tdbCPjfjb3GwkI+AL.tuD2.vHHxBL.tCD2.nO3BPE3U.f6+++++++++yG2.r1IcBz.t++++mE2.L4JNvtNf69cbC.kfXr6UxM.UBRnsezetaC2.XIHRFtN66tdbCvkfjb3GwkI+AL.tuD2.HIHxBL.tCD2.rO3BPE3U.f6+++++++++yG2.v1IcBz.t++++mE2.71JNvtNf69cbC.bfXr6UxM.wARnsezetaC2.HGHRFtN66tdbCvbfjb3GwkI+AL.tuD2.3FHxBL.tCD2.vO3BPE3U.f6+++++++++yG2.z1IcBz.t++++mE2.D6JNvtNf69cbCfrfXr6UxM.yBRnsezetaC2.PKHRFtN66tdbCPsfjb3GwkI+AL.tuD2..KHxBL.tCD2.zO3BPE3U.f6+++++++++yG2.31IcBz.t++++mE2.T5JNvtNf69cbCfofXr6UxM.mBRnsezetaC2.fJHRFtN66tdbCPpfjb3GwkI+AL.tuD2.PJHxBL.tCD2.3O3BPE3U.f6+++++++++yG2.71IcBz.t++++mE2Az7.ryC3teG2.3LHF6dkbCvyfDZ6G8m61vM.PChjt2K2.DMHIG9QbYxe.Cf6KwM.LChr.Cf6.wM.M69+++++++++kxM.vch9.Mf6++++++++++++++++++u1bCPbtvMPC39++++++++++++++++++qM2.HmKbCz.t+++++++++++++++++++ZyM.y4B2.Mf6++++++++++++++++++u1bC.ctvMPC39+++eVb++++++++++++++++i2+9NO.04B2.Mf6++++Yw8+++++++++++++++Od+667.XmKbCz.t++++mE2++++++++++++++++38uuyCvctvMPC39+++eVb++++++++++++++++i2+9NO.34B2.Mf6++++Yw8+++++++++++++++Od+667.jmKbCz.t++++mE2++++++++++++++++38uuyCfdtvMPC39+++eVb++++++++++++++++i2+9NO.64B2.Mf6++++Yw8+++++++++++++++Od+667.vmKbCz.t++++mE2++++++++++++++++38uuyCPetvMPC39+++eVb++++++++++++++++i2+9NO.94B2.Mf6++++Yw8+++++++++++++++Od+667.7mKbCz.t+++++++++++++++++++ZyMv.39++++++++++++++++++qM2.DfKdC1..b.HH.v+f.fA.HA.ATB.9.RCCD.T.XAHF.DFfA.HlD.f+.z.fYBH..PFfPf.X.vDfTP..H4e+alB.fGHI...fQBHsHPI.zDPF.HQ.3AHJ.F.fi.Q.fBHWH.S.HBHEz..P.vdT3pO8nvU+fnrLARZfvQ.uFBHIBTcfjC.A.zT.rCPI.3T.nAHJ.F.fivT.YK.BAhSf..BP..RgqqOPJbEf7DHGARkff.vAA.Bfn.X..NBAAzVC.B.T..H...b.Q.A+zLyL2CPHP..MyLS9.RQ.LDHJ.5ggGAH.UO.X.R.f.f.RBvG.Y.XD.B.BzLyLCB1fHD.k.B+fX.fQCPGfn.X..NBOBvIfbg.FAPHfTPHeZ.MyLuOCWOJ.g7..nppp.DRfrvA.9S..fQQg7CHRATDfJU.a..n..NBRETu.LTf8h.D.flYl7C45QIP3.hRfzh.k.fl.Y.fWBvBfn.v.DBQfLfvBPPc....W72+sub..DU3A3D3...fr.9.GDPD..D.fOvD.A.3C7.3er..B.Rz.A.Hu.bBA7K.fAPPI.B..NJXJ.F..8fPsAH.fXCX..1AfRBPgDN.MO..PU..h3V.mM.HJLxDBz..DCBBAD.fgXHHF.x..X.HCXfcuwVcsUF.fPT.ZJfHtAh.P.PQNY0WAgDQSI0WV8DSU0TQfHgH49+++++++++++++++i2+LbI.BrBe.Mf6++++++++++++++++++u1bq0k.Mf6++++++++++++++++++u1bC.A8jKPC39+++eVb++++++++++++++++i2+MCM.E3B2.Mf6++++Yw8+++++++++++++++Od+2Lz.XfKbCz.t++++mE2++++++++++++++++38eyPCvAtvMPC39+++eVb++++++++++++++++i2+MCM.H3B2.Mf6++++Yw8+++++++++++++++Od+2Lz.jfKbCz.t++++mE2AzHACZ1+.7+UF.f.ibGP..vafTf.G.PZfTP.A.IHD74+s3MP..fUfTf.+..TfTvC.DA.muep9B...9yA.tCQ..B.JP.PCRT...nOA...+Sv+W0M3bv.AAz..XB.HuI.f..DPF.x..T.HCf.boQ2Xn4hA.5ye+ekr.z.HQ.zpHPjPD8ETIQ0PHAxCCDP..3HHFCvAfn.nZ.Lw.jDHRDvA.72+YsO3APLPb..Lffg.AAfJfTvA.HA.+tWhBA.PhBFwf+fp.44.KB....hm.oNPdBfAf3v+F7OVRAvCfHwALYzSeMURNUz+D7OVQAvifD5TrBLG.8CP...NfTf.H.fLfTP..DGHC.L.+8OVl+2+XIOHn.NDR9eM+iE4..IHRVjXAQye+mk.AkAP.DdI6GnMf.PH6C..gre....3P.K3QjAHJGtLbAPjfjb3GwE...d..H.O.zLPMLfD.D.Chg+.A.P.AABD.Ih3JH.PRP.Ot8lakERB.n.HlHfUEwjnI.LL.A..LBhr.C.HVAfSfv.HVAvOfY...Hd.3CxB..fX3C9.UEDs.U0X..jK.wAP..f9fK.UfWA..fCHsAB.BnD.C.zAE.A.8dig0.9ACXv7AD.Od++e.MIPC.F.fLB.1.RB.8.3CM.v..N.SMPu2XvMfVA3.LAnO.NS.LP.UBfUgXkPDAL..sPvOAzBDQIP..zB.C.3++++++++srfInAPFfP.RV.z.t++++mE2++++++++++++++++38eyPCvBt.NPC39+++eVb++++++++++++++++i2+MCM.L3B2.Mf6++++Yw8+++++++++++++++Od+2Lz.zfKbCz.t++++mE2++++++++++++++++38eyPCfCtvMPC39+++eVb++++++++++++++++i2+glC.O3B2.Mf6++++++++++++++++++u1bC.DtvMPC39++++++++++++++++++qM2.DgKbCz.t+++++++++++++++++++ZyM.R3B2.Mf6++++++++++++++++++u1bCvDtvMPC39++++++++++++++++++qM2.PgKbCz.t++++mE2++++++++++++++++38eyPCPEtvMPC39+++eVb++++++++++++++++i2+MCM.V3B2.Mf6++++Yw8+++++++++++++++Od+2Lz.bgKbCz.t++++mE2++++++++++++++++38eyPC.FtvMPC39+++eVb++++++++++++++++i2+MCM.Y3B2.Mf6++++Yw8+++++++++++++++Od+2Lz.ngKbCz.t++++mE2++++++++++++++++38eyPCvFtvMPC39+++eVb++++++++++++++++i2+MCM.b3B2.Mf6++++Yw8+++++++++++++++Od+2Lz.zgKbCz.t++++mE2++++++++++++++++38eyPCfGtvMPC39+++eVb++++++++++++++++i2+MCM.e3B2.Mf6++++++++++++++++++u1bK.H...XC39++++++++++++++++++qM2ADB..Nf6++++++++++++++++++u1bCfHtvMPC39++++++++++++++++++qM2.LhKbCz.t+++++++++++lwsAz..QO...PfBc.Av.AfI.SABB.7OH..hAP.P.PP.A...f+zLyL6S.AD...AP..9CPc.D....H..DB.L.PH.9E...SfKPH.Qi.A.vefDA.j.x..B.PIH.f+..X..3A.YUCDwJ..HfsIA..PA...vCHC....wABDoa..HD...PN+8uPWI.D..FXq..1fHT.1j.HV.H..Rz.NAvA..B..pq.0..C.w..P.Xf.o.PW.P.fyz7.kE3KLO.k.R..C.HvBpo...HG.TLfCv7BPAQ..dAyG.dXB9ByC.B4Xf.Bh...C.3bLe.B..HcBNSyCTVfuv7.XBHA.L.fWv7.EC3.Le.QdN3FLu.l0VAgqv4Ef7b..f7b.N.PANGyCzXf2z7.kE3KLO.m.R..C.3ELOPw.z.hsc.T9J3FLu.30AAfuv7.bEHyCPEfC.Tfyw7A.B.f+z7jLA3LLO.r.R..C.3ELOPw.N.yCPvgjw3D7r.F5N.fqv7D.9D...9.gCf..NGyOhCg6z4.T.HYE9BmCfKfD.v..dAyCTLfCv7Aj0Lfav7AXAMiuvyEvZF..vZF.N.PANGyG.L..tCyG...UtM2BDhfuv7..CHA.L.fWv7.EC3.Lu.ssk.gWv4B3HINDtBmW.ssD..ssD3..E3bLe.w..3NLu43rpQt.9ByCPLfD.v..dAyCTLfCv7BbmeA.dAyKfx1i.3JLeA37K..37KfC.Tfyw7AHC.f+z7FAD3KLO.x.R..C.3ELOPw.N.yG.wIDtAmK.l5v.3JLuAfSP..fSP..L.fyw7iTy3N8LRn.9ByCvLncIf..dAyCTLfCv7BnDz.DdAmG.ugW9B2F.InARZ.nAnNA..f2w7ww+4K74337b.K..3MLO.u.R..C.3ELO.J.xEfCv7AbPrgav4BnhIPDtBma.fXE..fXE..CP3bbdJRBdCyONNOmT7guv4.fBHA.L.fWv7AUB3.Lu.4WJ.gWv4BX83C.tByW.+RA..+RA3..E3bL+e+++agyz4Az...NO.ebBZ.AvxuAPJfD.v..dAyGTIfCv7AHoxgav4Av1uguv4EfTYA.fTYAN.PANGy+2+waH3KLO..Z9MqFfC..37APRNff.H..77.nBHA.L.fWv7AUB3.Lu.AZbAgWv4BXvohDtBma.PiK..PiK..C.3bLOJFCdCyONNO2Bthsc.JuBHH.B..OO.q.R..C.3ELePk.N.yKf7dK.3ELu.rlSDfqv7Ef2aA.f2aAN.PANGyKPH...3MLe33bNQoLzy.XmoZB77.zBHA.L.fWv7AUB3.Le.WAY3Fbt.JHVHfqv7EfBxB.fBxBN.PANGyC.RIBCH.nd.zBd..vT5fuvE.kI3KbAPS.z.fe..JUE3KbQR4A9BWfTmfuvEGEL3KbgQkC9BWXTBfuvEE0B3KbAQQA9BWLTcfuvEBkI3KbQP8B9BWHzAfuvEEUE3KbAQ4A9BWLTmfuvEEwL3KbQSDB9BW.fEgjJ3KbA.W.tCW..Ff6vEr..3LbDRDA9BeAvFf6vKOAB3K7B.c.tCu.fGf6vE.7A3NbgScA9BeMT9fuvEMkI3KbARsC9BWLzvfuvEQ0C3KbATgA9BWbj.fuvEG0O3KbQ.o..3MbgQEA9BuTTZfuvEOk.3KbAQkB9BW3TQfuvEIkI3KbQSAB9BWvTofuvEE4B3KbwRgA9BW..Mg6vA.TC3NbA.1.tCW.vMf6vE.fC3NbwQ9B9BOBfNf6vK.rC3NbAUr.9BGAPOf6vK.3C3NbA.+.tCWD.P..dCeQPR..Q..PVm.A.HJTV9EWdQ8VTpEUYQAVTaEkUQEUTLE0QQIPT8DENP..9tCIvR.DEHVCf.fD.f2CzzA.f.A0fAUAvb.TF.xARA.HPPtZvY.3F.gA.crvFHfP.S.jF.hAxF.DFHCHPd.HPQpJPP..GHA..affA.iAhE.PGHG.vafDC.fXSs.TGHW..bfz..xARE.HPQsCfSfBB.1AxWB.B.IAhI.LGHZ.fbffB.sARD.3FHK.xbAAH.BAFJ.PGHT.jY..hH5CVe.PFHP.fYfnA.0Aha.PWX0BNC0FjyBLE.nABJ.HGHv..Y.ZJ.HAhC.vFHhBPdf.IfdBvZfr..f.9AQC3N.7FHhAfafjCHNJz.fefi.rDHjCzpB8fPy.NREFjZ.LEHvBPag7C.rAxvfbXPYB.Qf.cPq.hCAkIPFBvXfXL.DbT..yf.f.vQfnO.uAxHBPG.TAxK.DFHqBz6.DCIOCvcfz..1ANnwBfLfeWrAIG.SEBOBdD.DfzSfGfCgC4YfyRsgy2Z.fjHpNjoBPG.Djzn.LjH5Kzw.T1HHB.RfDP3MDm31UcPsAt.2NTh.7zHzRTyfC4rDMN.CQB+.zVIJWDE.PvRYAvPjsB.yQxNgy3YfivrFoG.RIBL.PVHqAdewZDt.7DIt.ziF4G.uIBxkjJRnYvT.XD.XA.AGM.fJ.Nkwhj+.LkHebDjB4..NAlxBTF.DvT7.vDHH.PXgTG.fHRLfOPw..h4DzF.MABP.X03nsY3NDH3T7L.PAtFMC.ThjF.SAxzjq2ZlG.fh0zPA.Pagr24KLO3m0Z3NzWQg.vPhbjRG..YGVD3A3.3MjK5q0J3C064o0D3C0K.yHNs4..MfCPuBLPKqhy....3.b..H.5C.e..A.5C.H.nG...favA.TAnOHfRdp6cSAfjfd..G.5E.7.3Vb.32..SUwDB.cvfF0t.YdzCFQlhaxtTiiFGjGfW..R4DXNSzA.cg.G.tgRR.rFHI.lpL.PChUVgA.........P......D..........oO...PyRI4DA....5D........P.....nMWZtE..........ebfkpwBeBw3octZfDYjZgoP.........zrTRNQ....P.....X..........QSkjSA....D....P.....R.Ip+A.....DAnwX2nN...PBFT.MzElP7pcdgA..........A.............PBFT......................................................................................................................................................XLHXL3BEYQ.PUxBLOYk25uA.........................................................A.........P.....I....f.....M.3B.w.fK.XC.t.fL.bC.A.........."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Battery 4",
									"origin" : "Battery 4.vstinfo",
									"type" : "VST",
									"subtype" : "Instrument",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "Battery 4.vstinfo",
										"plugindisplayname" : "Battery 4",
										"pluginsavedname" : "C74_VST:/Battery 4",
										"pluginsaveduniqueid" : 1312973108,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"sliderorder" : [  ],
										"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
										"blob" : "52802.CMlaKA....fQPMDZ....A3jPgQC...P.....AbDZuMGcfPkbgklafrTZzA...................3rAF3L.......P.....nMWZtE..........KzbFAWRSNERouhD7P5ZLkaI.........DMURNYG...P.....HA.........QSkjSpA...D.....F.........PzTI4T.....A....D....P.....A....D....................PChUVgA....3.bP.......A....D....................v.....v..L..C......................D....P..........PzTI4Tc....zzL.......P.....nMWZtE..........9YDugTMqI4lkI49iC1rp1SPy........DMURNUG...P.....TyL........QSkjSyA...D.....F.........PzTI4T.....A....D....P......LJy........A....f1bo4V..........vyUafH7VNzwGBk4Qiu+TcEF.........PzTI4T.....A....D....P.....A..........MKkjSC....7Dy........A....f1bo4V..........rWvrH263AT5rBRIeOtHx95e.........PyRI4z.....A....jF.........DMURNUF...P.....z..........QSkjSpA...D.....F.........PzTI4T.....A....D....P.....B....D......I....D.....B....z.fK.DC.t.fM.3B.x.vM....A....P..........DMURNwF...fbB........D.....ZyklaA.........vOHLVWwtaSmW3UDZmQgreNBI.........QSkjSrA...D.....F.........PzTI4T.....A....D....P.....B....D..........O....bD.nAva.LG.zA.H.PE.xAPX.jF.tA.H.rD.oA.c.HA...fS.DF.zAPZ.XG.kA.H.jD.tAvb.PG.xAPc.zF.kAfa.PG.yAfD....NAPX.PG.oAfc.TF.f.PR.3F.yA.c.HG.0APa.TF.tA.c.LG...........v++++++++++C....................P.....A....H....vA....BAPX.PG.zAPY.HG.4AvB....HAPX.vF.iAPd.7F.tA.H.LE.qAPd.L....PD....KAva.3F.zAPX.rF.zAPR.3F.yA.c.HG.0APa.TF.tA.c.X.....W.nC.KAPZ.PG.yAPD....bAfN.rD.oA.c.LG.bAfN.TE.xAfX.DF.tA.H.rD.oA.c......vA....G....vE..AvX.7F.rAva.HG.A.....C.Q....vE..A.Y.TF.1APZ.LF.kA.c.jG.vAPY.XF.rAPX.bF.yAP.....w.vB....bA.P.LG.uAPc.3F.jA.c.jG.vAPY.D....vM.b.....W..D.zAPY.zF.vAva.D.....L.X.....W..D.1APY.HG.rAfA....w.fK.bC.t.PL.PC.F....vE..Afc.TF.xAPa.X....PL.3B.2.fK.DC.z.vA....bA.P.XG.oAvb.jF.hAP.....v.P..........H.....QSkjS4A...fF.........A....f1bo4V..........HjIhhFschD2etJIHOMtVCGN.........PzTI4Td....A....fA.........DMURNE....P.....A....D....P..........D..........A....PzTI4Dc....bcL.......P.....nMWZtE..........XARtG3RjMYifqKp2lDP4Kyxw........DMURNQG...P.....SbL........QSkjSyA...D.....F.........PzTI4T.....A....D....P.....AnjbJ.f1FC..injbJ..P..P.fTv.nMWZtAzA.A.DVRO5IancBYUoadtbdhmpGfAXUT...PzTI4DPi.9AC.D..sA.sARBAXebf2vTPXQjpIRhwJzKwho31dexl4owfdBv2.zTfewY.MB.9A5MGL..gLlB.Dvbff.P.DP.p.lAA.3O.MfD.Sc..z....fS.TF.2A.H.fB.jARBRXF.gAPc.vF.zAPJ.TtXJ.vQ.HAHiD..P.x.B...+CB..4EH.HfA.nAPF..XfMA...H..4AP..jCfe2GC3C.0i.PGJ...B.f..zs.H.HKDTB.P.HG.PAfL..F.x..b.HC.TJ.j.HGDDk.r.HG..CfLPPZ.fCfb..O.x..0O.Q.xAAo..S.xA.PAHC.PEfL..V.x..bAHCDjj.jAHGDjD.rAHG..GfL..c.x..3AHC.vGfL.Af....DBHC.fHfL..i.x..PBHC.PIfL..l.x..bBHC..JfL..o.x.A4I.q.xA.vBHC.PKfL..t.x..7BHC..LfL..w.x..HCHC.vLfL..z.x..TCHC.fMfL..2.x..fCHC.PNfL..5.x..rCHC..OfL..8.x..3CHCDx5E..P....AAx..HDHC.vPfL..DAx..TDHC.fQfL..GAx..fDHC.PRfL..JAx..rDHC..SfL..MAx..3DHC.vSfL..PAx..DEHC.fTfL..SAx..PEHC.PUfL..VAx..bEHC..VfL..YAx..nEHC.vVfL..bAx..zEHC.fWfL..eAx.B.F..HhUB...hAx..LFHC..YfL..kAx..XFHC.vYfL..nAx..jFHC.fZfL..qAx..vFHCLjI.3FHG.vafL..vAx..DGHC.fbfL..yAx..PGHC.PcfL..1Ax..bGHC..dfL..4Ax..nGHC.vdfL..7Ax..zGHC.fefL..+Ax.BJI3B...vEl9.LEHHA.HgfE.uDBV.H.Hj.P.ijgPZDP.PIVHfO..fCiDfSfZ.LCHpA.Mf2kZ.TCHpAfMf2kZ.bCHpA.NfOkZCIZfqBPNfnF.wLhCgKUqDs.frAPLfD.PtINUb.9.tIjG.Di3UAB3C3lPh.PLhWEIfOfaBYB.wHdUn.9.tIjJ.Hi3eoB.x.R1.4l3doB.xHlJ.Hi3eoB.xHlJ.Hi3eoB.xHlJ.Hi3eoB.xHlJ.Li3eoB.yHlJ.LCH1Q9SDOvM..gToPuI6AD.BjB.B.TC.DEZ7BLE.C..Bfl5fB.RoL..UGkBnHHRXeVs.IC.AfjOIoQRbqN.O.jR.AAHh.B.CDfM.rIH4.DEADvpmMNP..P..8.XT.tB..1Ff...A.XIGgGPCD..A.7TfO..IUKH.LD3fQBP.DP.HBhAI4I.GgBP.7FJXbTy.PEJj.PXnvD.tcR1.rDHG..cfLRA..TfnXVPf.G..Bl3...HGLP.+AvefbV.vC.3..PRilFt.A.PmAfPfbD.zAR..TFHQAPdg.K3A..3AXOf..zCBzITJjheAnY.fHw.R.P.kjldnPSPHYjufA.Hb.Xf.AC...B.JMC.XnVTA.fjoQQRXb.MyLuO9nv08.BQIcHnDojSfA.3HPjR.AfQp4EH4YvYlYxO9nvEfdNA.7ippphJD.x6D..FEExOfHEHM.rTJkJX..NBRAzk.LDfWh.D.fOJb7Cw0iJP3.lUfPjRiA5kJIOX.LP.GDHkf8AvbCj9.HDH+.B.D.A.45QwfBTHA.RPJkKnAEp1f7....DGf..vAsjb.vwZPJ1hD.LPA..ngXL.kLxNfzRfbsjh.C.HZAB..2yR.CvDAxG.PAxVfvw.5.PTA.RHg8I.mBBBfJzRQCF.CD.a.GHPkBN.BAfffr..VnVSoX7....f+BxQ.BPB.13O8+.fCA.PbtxP..H3Cr.Hi.BIBADP.nPIIIgOkjjj9faaaCxAHHwOtssM+faaaABpA.3O.Ox....HBCBXfL..LBx..XIHCjvlBC.fcJL..6ov.wLHvuDtf1ZPT.L.fLMH..zH.cfPh.PEr8HHvaf3YFEPjBWuf3bB.9ydT3hOc8nv9.BRK0MnHEfD..d...dAHwjk..wfPrT8A.3OA0KPLI.RgqCPwAz.f.fPUAD.BTD.QBBB.D.fXJzCMoE.BsBn.LGHCAPLgHC3Azk.nE..gTH.hARAf3GHNBhm.633ATR.50EXkAN.WKTii+OIk...CUB..DdEVBfLgmhk..P3BbL...B.g+OSVBvLgX13lzB...t.v...f.P3+ihk.Dv3ZzB.zDhYg+ObVJ0zl6vVSIP3AXoQ+AfNH1h4AnM3T7CRDB9L+LkdfOyOSYK3y7yTxCNF+P0Bg9CUVRk7mGvlTgE30DDUVBdMAkDyfWSPKsI30DTUPAdMAINGKFNEKJtFMVfA.zC+..vJLTPG6C..6oB3k.vGJHTXzQWYxkGHz.RKfLEauQGHw.BJGI2a0AGHSQWXxQ2Gf7Dbzk1atMWJJDTczg1axoCHNEFcoYWYfjjayQmb001Ak4FcyovUxkFHDofafHVd5.hRuMWYlADIfTEAkIGHn3FnI7QKyMlboAGc.cWYh4BYkkhBM8FYoYVZkQlNfzTXxMFZfrfLr.hLvDiLJXUYxMGHvk.Hw3RNt.SLfnfJfeB.BzmBJ.hOejlaoQmBILUQT80PO4DQIQURO4DJN8zWSk0TeM0PRkDTNP0WGI0SUA0WSQUPRQEHo.dEpbfTLM0WTIURGAzIIzVYyMWXmUFJhHBHznfBIPVYiwVXxUFHiExHNPGHjLUPVUDQeEyWWkDUHAZXLPTVNETSIMzTfnSOf.C3H.CHDRfSD8kSRAxLfER.zDC3QHB.x.pH.HC3IHB.AAd.DAPBfbV.zLC3PHBPDAjhAPCMf2fHB.0SSAN.KBPMfGgH.YDPnAfMAQ.3HXBACk0PLUDHUCjH.DCXhD7IFTWZeM2coQWHv2.IxUlckImXe8lauYlYlA9Dg.HLenfBIjlYnbVYz8UYtcVZtU1WvElbnPRQNcTRNUzWPEjTB70TEEBASTjQFUzPT8kPYAUPSMEKfzRLr.BLfHP.o.BHHR.Hg4FYf.tJ.AzPfATHwCPBfWfs.AdHTOPYrMWYfyvFgzL.kABc.jFHeCT.gKPAMvVXhUFafPBcxk1YmUlbf5f.nDCK.QF.yAB4EPWY3QGHn.dAeH.KhPEftHdA6ExTCHVczQmH0y.IC8lajEyWyQWXzU2bfSfafO.H.HC3W.BAeI1azgF3SPh.KUVdfOgGILTYrw1WmIWYk4F3MLHPdLfbkQlBfSPGgBwHHE.YoQjb.HCnQDdBS.9AhD.Kh.j8fQS.fHS3HnAIhBPcgGvY.0.AJjPXjQFXIPvWoQWYsEt.kATGKvhHN8FckAxStIBKvDB7fugJBXlYhD1s.rG3UvBHkR.cx8FarExuCvhLozG3AzO.kHbA.8WHXcvaxU1VwHCNcItAxXfcgwVck8UYfjN.fD3PG3jbn.CKwHyMfwm3IrUXmEnUga.Q.fB3BrAHWNPYrwlNAdCPA.vdkCPLA.RLfPJ3KjE.iELo.DC3M7UHRA9Ah.hY.SS.fDCfrAt.wBD9fSfU.AQ3IvG3BPEPfb.KhDDa2EVdyEdCoBNBrHvStAhH3FnpgePpfu.Kf.a3B7J3ZLi.R8Vciv9.R8lXoIBO.LC3aDiACk2XrUFHRQBlD7VahvBMfHS3DXQ3CDOAr81ces1H2cxmgG.8jKPJfCvGCvhHL8FXnC9DMM.ZocFZfSgSfG.HCvhHHkF3X7z.iQmbrANDZBHGfzN.CANESBTv.pB3RHNff.13.LDHyANEPA1v.BC3NDE3BDBXlCNFRI.buMGYnAZT..SHJFhYgKfgfG.HBvhHPAJK.Qp3Bvd3CTcJoUxaA3lb.8T.wvx4.fC3GTE3AXRHEI1LA3jbCZD3NbU.CMTIgAjkfj+IDPLI.EgoYAd.gHBt.oh.fLzP.JEPAPt.D.fLje.ACoG.fLd.w.fLfAw3R3AffLtGrBLKiyAqfK.KiCBq.Oy3gvJvwDHdiSBq.Hi3NbmPpODy.HiXHSTkhTT3PvrXkBlKf6fSfG.HhUL3.7D3PD0XT.9CMAHGf793d3J3ObDPjC7RjH43XrEXECHLfOw4.FBXnCNFRMN.MBXTiKgqf.03i3JHOM9FtBRUBVyHthjlgCAjiCPiff03V7JHSAfTC+J3ELE.kXN.EuhvnOfQDSB.kDjjBgD3N3QXABtDe.jOg4G3S7C3S.R3.7H3N.D4AbN3M7K.xcRJk0B3R3AHiA9CeDRYf6PNgGPNK0Q5A.X3HjC3N3Q3.jC3N7Q3.jC3N7AX+DVNf6.HfTsg3AtCeDN.4.9CeDZNfOgGfLF3O7QH4.tC4HjKLBGHFDd.3Dt.5.nlBzVX3AJHlCP4p.d3.7E3APh.uwFYfmAJELVcxM2axA9Dm.vXfSAG.L1od.nrfKPj.n.3BHI.gIBafmAZ.ZB3IjD3FfDP+C9EZCDb.cB3HTI3FrDPGAdCmTvdI4TRTAxYwV1eA0I.w3To.HyKuWXXfSfDfPgPZBzD.HC3IXB3.HAHlHFmfojKTCFMfGPDuH.faAd.R.fMf7FHU.FDfYD3DTCXQ.dA0.lDfViHHJH6fCvafCPDfYBHKAX.Dz1a1U1Wir6RmxBcnPf6.3e.rHSZDAtBgHDxOABHgrj0fqPHuO..fTxRJCtAkbhXgTJXEkRWmvK3F7Q.CU1yBD.Ky.NDe7x.fzAHCBNB93LDs0a.r.iaIBtAgArHI0HHCBRQgLA3FLRHY3RKy3TqmBdCIAt.k.FS.5F3Hvjvm.PLfBB3FrFYAKzQ.+A3HDhXK.bGfaPO.wE3S7AXcANAf.NBBIN.h.tChQXXKoF3M.L4.LAfe.BXfifXgCPJvxI3NfTv0oJNgawS.HCnfDtAQ.V7A8Dve.NBgDlC.2A3FzS3.7D3N7AXcANA.ANBBEN.OAtCBEN.OAtCeDN.OA3Gf.F3HHV.iU1HkHtDiC1GA3lbgBB3ADG4.XA3ALHQ7RhEF+T.jDF3BrPYWU.ZkwFbkIG3BTQ.oQF3Bvf.jUmb1bM.uIu.vJPIgwVHDAPYFuXjOBd.dAvXWUPPeBt.Tb.YkYVX0wFceA9.bHPagsFMpZE0.L2MhDSdfG.GiDKIB.PXmbG3.3gKaPC0fSfH.KW.krVYlBvbfePhAJfQMDvarAt.Qm.buwVdvg1atk1XxG.+BPWZsQio.CE3CDhIkOCr2TO3I.6oYBRHmC.b2c.3FbMnl.zgl0K3RLxPBBHIgD.3NbDHiTjon7D3LLxQn.hHfOgQfJB3WTjHkCNFFAzHfewQfWA9iCvB.Kc3Lfe3GLDH5C9DmD9.RBtEpDNAq.9DSABJfGP5f6.JglU3AvG3UbB3b7TPhANGPADJfyQTgC.jgnw.Jj.IgQDHnDGA2gVZrU1HhY.H7.BINUUSYRJ.SAxH.j.9UzkltjMyCvBIgwR9Svt.rzRLXEiU.APBwQG9NLK3FTkKRAdFWAdIRILUgfcneQvVjDVWo.FZ5O.e.EK3vjUnPBtBYAfLf6RVhWvXfgE.f.3r5Gf5fyhrfhE.xLXhfq.V.HC3xfkPbFdBkATr6ZE3vHKPYAfLfKvrgGvB.kE.x.N.YocaCjPZtMlHkGhz.EgXzCBE.nP4.vu.jHlBiuwDuKvEfKv0CoD.eseAHsBe.Tz9BnXWUAvW8bVBTUjTIEzWM8DQEADr..Cn9SvbkwVYigCIf2PWfLKAIjvXgMGHjBtAGUvSN80REkEPd.PBuAURc.dAVB9HUBhRC7USI4D3CfIHWkFFfm.VfSx6fkU.AgE3EjU.oYFHvCNCcA.OP5A3FPWXF.tDPF9BADlFAAOWvEdDDkC3FPkTOwDSEIEPk.PBOwc3EXD3jzN3AzD3E.OXfplXfOCW.LT3OLJ36jU3FLp3LPmmKWnJDH0SBkjSANyHP1VVfSC2+YR.CwjWpVB9i4A.qnBwgI7fj.BCiKPIAHyWn8CQ0N9KCBPLiGwffKPWhwW3L3v3KLH3BfCHVNtKCBLlf.+3.TB3Efk3jT43BLH3Aj03ELH3Cz03BLH3BXQXF.tDPJl3CcK3BLSHwBPBgA73nLH3BPTHFANIsOdACBd.vCFnikB3yv03.LH3BfUXiB9NYM3ffCPVhy.cChx3QLH3yv83ELHXGNtBCF+.sMtHDxfTEwTQAMUQeQkTIczQkW.Hmu.nvGfNQpnPFLt.9WN.GIfTEYjp5HPRDgkHwQ3Jl7E7.nG3OrhPQGNChMd.WC2NBQ8akIVPf0.v1C9A7ARLhw.Xj.VrfGfCfCwLf+vfhG.xfgkXfAHUhTH3Q3DfzBt.s7htf5.3PHHn1Bt.z.1s.9.3PTC3LfqfDItAeFe..AHvlmPLgqPRuLHM9sDqgkD3A3.3M.oXoF+A6Cd.zH.K1vBU6BNBg3N.NJPLrTCHgnxEfSw0p.b.O0DHi.dBdtZSfSSmH8pf.O9..L4NgQf3AP83.bd3GjCf+LNA..tCqL9H.HGUhojPaCtCPE1EhkCXj.VrfGfCg2fsfLi3LbzHDN9B..HUi..3Q3z3B..fsLN...9Dy.1ohAOfz.t.O.dI3NtE..XWiC..fGAWhKPX.Ni3.rL3NLy3U...xLB..TSPwO9AhLN...fLi...0L9J..pmiB.3zz43D.f4CflXKA9.PDtCTF.HIf4a9PFJ2LdAbL5TCEJVsBDHpDlYnADsfevD3OP9.uR7DnSKnG0N03PPWQO.TByT.4R.v.hHZaNCYC9BDsO.1AlRApd7.XK3.HEHQE3Yf2fFgCfxqSfF.zBHjCdHHBZyp4A4AzVPyPCffgXHV4NCLBTtBj.IhAz9iIGQC.t.2.BggKvH.HVXi.Tl.jf8JrBPC8jk.j.f2BfXfo0a4BBCA.BOf.1XdBtAgAVIf2vXfOvQBMFXKAxW.sfZbBtAuKzCfux6fKvMfzE3MrH307N3BDF3B8d3BbZ3J7M4HHMX4ElLjC.xfOPP.3CwrJd.lJpzG0r3AzIvAK9AtCJDfa.KBQA3L7VPoEN.HCN.H.lmhGPvgKvMf6R3fOPPfSQ3fK.JfmQ3fO.KfWP3fKPFfqP3REL3GLd3BnE3QLNZAGHvybA4G3DfODtA4ATKgSyUf6wbfKP7fKvb.lNHqN+ACGV3Zqf9BjBP7amafKvDAo0W2CxD.oPQIQ1.fPkKvSJ8fePT.gjkJ.hM.Ll1kCzOaMEH..BOlTFH8.TCgCPHfG.qfMAXmYn1DoFfy.BffcAf+UNA8Cl0iefD.wH.9.X0C+B9CLOXe.jhfNGPnAJRGY43AbH3CbDfnA9Be7UPf..+CzBPcAzJD7VanDCKfqPMBMBHwTl+fvMH..52k75.fDCLv72+PHGf2.NB3FxS.oEuWBXRfqBeAdmgrD9.4AB.f6.dgDC3CjGPp76+P.L.I.tDx.zpgSgAhCPBfC.Bhufuqq.piC.vqW.0AEw5OPRLbCjsAsr.o41WfnI.mIzThC.q.vx4InH3ErE.rbtBJAdAg.PJ.4WHOVzR.AZ5BbBHg+4+Q7N3J3gXDDN...9C9tdAiCNAEC.L.t6ZSBzcm8H3EnIn7B9Dh.dT8dNBUDzC.Er4JPJ3EXqHvOJ3iSfBfNQ4CvG3EbiXHDtBpMT8gWShftbYmBN.FKBSY1V3NzGXFCzHfaPw.IA3UQrPVMnOiyfQlCvQgWfOBcr3Ob33fXD3NrknIpTjf6PHhO.h.Ix3RXD3C3w3DYDPXMtEFAtCh.dT8JpdB7TUNgu.TMdAFAtCSJ1exQh3F.HXSHRff6vMhgvnFAjHgGThft73NXDPqEtB8AlwCMC3FTLPR.dUDO9.F8eC+CPttWPTi.D7A3xjUBdAfPtFBCfBfKfPPhC3PHT3N7BHB8+B+O.tJ.mbkM2bkQ1WoQlBB5iQup4kf6.R..xI86tAIG9..CR6nPn3.rDRrD9ETFkfmFA3HjC3.fD.eINCEDvJwPidAAYR5Jl+fGvukGwefGxuA5pvTAtCQANC+BZN.+K3PnC3F7K5E7hIjpV.fUQPBLFcfTQXkAj5wqfaAdPQSA3KfXv3M7CXEAPBQl+e+mQaAw5YU.3DBHWYjATDEsTndBJFfC.K.oAnS.LKrcWvQBpMfyPp.sSXwBtIoBJZfKvofSfifJG.I.nvfSfFfNAn.AtAoBfahMDPFDvat82+dDf.t8Fcr7m.oclagvi.eUlc+8+A6QPQVUjSTkiLg3G6K.4AtUWaeUFak0FHqHvbnTxe+OvlBL0WA82+bDU.EQjYKH.YoM2e+ifEffo.uUGbfivHLgFHaoNC3G.IoEViD.Gagk2W.sI.n.ZiD3zSTUDKftvAVUDSOMTRTkkmIbT4.PGf594+bvd.oQFHXvRUMY93BjePjCJPAjDQfjA0vL.co0VY.twm+GPlFTETTkTSEoPn0JmptDTfS.TgDoAP0ExFqCPR.9SX1.jHfvQXyKjtDV13NfgHjO9AkZy1n7FHUCPBfMz5SdqPFQTjfgJ3Bv9PBKhSoefXfeC6f6fU.vB6APJ3NDhXSFxqA4HPhPlWs38XbMbRfmfGCoK3ALNvrC7AiWPFjHMTq7NAq9e.+GwVvvBHtAzSER1+.7eDF.d.X39BD.hT.Zyqs.TXimAehkmvbOBoW2v3GjJP8EzjCYBHXRNBeBdCu.Bj.DiU7BnYia.+.IUPkuNAZIlxAj.IfGvWfMDPyErRkwzhxJNAGMLMfufYAzUJfU35LHq.N8jSCIH.IP9AGBPKiYa.Ij.4arY.Ij.IGATpjSRhf..4KvH3K.bXV.NC9RX.fwTPKSdGA.9BhM9.ZDdEKAFi.s6+H7uAwMzKCsL3L7UfCBB.fyvwgCfgf.f4FDQvIBB.g2Aif.P3t7HH.DNIRBB.fyPygKPkf.P3YfY3TfS.rTB9.LJ3TbRvXBB.gGQPgGhP.jP3wLT3gPDHqjR6.Bv3ADNH.D9CVEeAlCD.gSPW8.M.aAx.gWAJgDU+Hjr3LHK.rDXdxUQ3HqW3gXGqK+dAXAD.lC.sqG.0gSgIFFAv3EDtxGP3fSANlbBnh4tAZy7RfSQOfGv5i+LFgFJ.A88+BPEP.fdA8.XCvKPAhy.7gq.nsg9NbFdEhEFnPcV3F7IPR.NFzIN.JFdtdRzvGhgXkCjCpQO4e77PSbN.CSBxjw74T3HIjRN.LCNEnP9.LCNEnX7Q.d7HitjBLl43TX14+++++++++GA3od45Fjy5JXy4T.Y5BTIRerd.y.NE0jljq8Q5FLIXSjBkfSQOISI5++++9SPaEasg.1.I9vNEKPt.xBB.jWPsfSANjiQsfSQODWKH.LOtB3zNE1m6anjooAe.AD3ogiPskWA8VMbjeFlrgg+S6CNE0DlrOgt4FbFPRHxIfSwNACKfnax1t+++++OBqQdE5Pd.rBB.j8JIpJuFmR1qqQ.4F.KXSPRrlCtXz2PklifRf.PXdUVzgLV3U.RXdUz9gaPW.IQ3iy04O7K3DbAPLXGH+JM.I.H.e9O.57Wx+2P1+Sv+.vSXbdb5.PxeU4Iu.QknVGNALBxH2MGX3Hn8fevG..x+J7uDYBrMnr0Xp.NBy706HwJfUCRwfl.HH.nZBM.3LfJ.lch9f0w+G7ODg8++I8ODAINAnDBr+ix+BjF.6EFqoGvoES5+E7e.ISjA+ev+D3JoXAvS+Cv+KDpPDBVSjPUg3BdDLI9ByA5DjTE3Nbifl+2+CvLPg7+.+O.ye++.KCNBbDDDBB7fEBzAfQJ3AHuwf.NOxCdDLAp2iSfYfNAHxCtC2.t.xCTHfCg7fO.Gfmf7.zGny+uB+SvFfm.8+8OAUDjHgWvRjT3+Q7eBpF3c+uv+IrJXI8eB+SfXfmfcDNN.I7uA+if0jAHnT78+HbM.J.RDA+NnZ7eA+mfAfRAvuTDffDym+m..ffvu+Kwlf4M3GHKXbAD+fihrf1F3C.K3ETIv2APBfaf3fIGnT.JQfifrftKnG.vd.Fp3AD7PM.va+yw+GX2.N8jSEMzo+Ov+yvPfnKbP.vxm+OCif1J3Rbx.xvhLoXBE.NY.8ov+C7uBZUfbkwVYgMmIrGVRe9eBcP.TAI0VvPzQ+9eBeNPBkgWZur.f9.fBfkxu+mvQCjDQfLx+C7eC3BzqfW.K.Px+D7+Ad.BNADFHma.QkiyE+Gv+w.eQVAPK.QaHkBxE.q2+.7+LP.zGfn6+C7uBBE.Hs7eA+KiTA.xJljO.p.zP+a0+GD8fDEVc+Gx+G.JZW8e.+e.o+2v+M3TPDJRofGfI.YunrShzhrN.uEnJfu.d.n.H5DL5Bm0+i7OB282+ePC3mXM3FrZH5APBfK.giFEfTUtBW.9BFKVuAg.7J78vBBNC274R+yv+ETvPPBhg.jf7OD9+c7+Aj7uI+WP2hCvt.wLPN+eB+2PQfuvwf0B3LT7+B7+AhHDe+Cv+.P++B7eCn74+.jsP+DNEpD.Kk7O.+evGfSwI+u7+.bc3FXIH.DNIYBB.geAmf.P3Y7oQIXTShuf.gOvmfSwIA+IH.T+Z6FdBJEdHKAxJkfNf.PN.m.D.g+PW++eC+ifwgOSfgGReri.g.qC5ADv5ILl3Lfca9XHzf.vPkvd.GKNEouRFfJ1IG7O.+qS.fChcfC.6ia8IglJ9AHMH..PIvQBzBAXCsKvBg+wofUjKzEtFmBmrgWfo.IA3XPW30U5+B7+CzPdNFSjzHB7Xq.jCKAH4f38PZbN.f+++C8OBUWdBvb9++++++++e8mJs2Gv3Hcx5Kn06Tr55BnER7rd.WANE0rNFWANE8jbrHlNHzUe.srNEMGopf.P6Lvd7.zJH.3dDVGeGyBB.wWisf..5++++zDB4EfH4THA4XfH3TzCwHBB.jGQLjGhLjmyLjGBMfrx7hffoq79+nBd3HXajQDOBTddEsoe.MLFVwQUTQBNE0LFVQ4W7MDI3TryvVc9veGu.le9+wfc3BLT3gPDHqPtHnqC62+eCwGNK5wFTf..8AXHH.rNC6QJpravhf.v+.r9sFVCyjWgNjG.qf..YuRhpe9OAxdNEJS1q+mv+GvBnS.hcfSQOfGv5nyFBgyRmfr53hfQnghNAADlWkQdHiEdEfDlWlGgCgCNWCofgVOFG.4vcfBDBfCvE.w.XU.PZe9+NB.PB.Bvm+OPT++++O9uBqQlB+qv+Cr1+I7OBL7O.+ivfwKPsEKM3Izx+b7uBYBXejLXgmCdDMUZypafjkUeIgCtC2T51+8OBSAjH+Ov+If5+.7OAwCdBd7+D+S.kxmvqf2S9EaD3IzDnkCtC4CtC2.9.4CjHfKQ9fOfGf2Q9AoD.u8yRfmvpg6v7loGZSIFal0THyCtDHA3Hfav7FQX3exN3OHePsEdC6.32f2f7f6PMgmT4iWfJ.zy++y2+Lz0m+2.FCgS3iw42+Kju.jv+F7eCW74+CrHfT78+MbA.J.hIfZJvZ7eA+2.YfavKI8.Hw78+IvNv5.l2+Ky+MnO3FHKncB9.vBdAUB7c.j.fMCdAb.JEfRD3HHKX6Bzw.l.HOCfBgJ5+.7+B0AfOfXCQyGTtmyvWfCfJKI1e+qPvEjvcgkFcn7eA+Cfb.4C3AnxHRVdA0ATXDjPBjU1X+uv+LvB3ADFfl.zR+qv+LLE3AXR.fvCfyBB.fWwI+9uDTCPBfGv+.j.3ZzUnQ.B.+uv+LX.3Hrz4Arl4nDG.O8OA+Kw+f..X5axbnO0YfXMPxBDqmSvafj8fDCD.fifHi4CHhHlT.n.HI.9.J.ls.QEf2ZtCGDBVm6PdgawAfGwSnOScfRNPbEtEG.9.hD9HGDjXm2PQg6vAmGfi.jPfSgFSh7.3RnDfiLBG+Ov+H3C5bLXn..TogaA.fOfHgOB.AgS39..3QnDfsGdC..tC0PJZgB.PjDtE..9.hDNF.LdA6TBM+Kw+TrOnBZ9AOYnCBN..q8O.+m1B+2v+Qzk4ADEHLIvPkwl4BLBnFApEFWxX8NNArCdA0.JHfZAv0XzN.A.4CD.4.7BXxC9ADC5QjwA3oPLn2AdABatA8Ct.ABPBfCCwjCPzfCfyfqPqh3EH7AvaGUfQTAxamnD.I.d.7.bQfdv+C7OEPWxE.P2m+i2k.nv+A7OEADGYAfBI+iv+TrWPrX.ICMzWNUUShjC.k7uA+Kzwe++F1Q9B1CxF.oYPu.JgfzTjdCnkfIW.JjPXpN9.PCRLfMg3CLNHSHIKmjHH+V50.Uy3J3LHeUeCzYy5.rzm+qSj.Y8+.7eB2+OE+GA1nWvM+Ov+PHC3OzGP9Eh+.YJPhLNAIGN.RCNBdHFmgC.J1yvLf368EnJ3DT7+G7uB8BtA3BRt+iv+yvH3FHB.r74+R35e+iyT.ka3KnE3PwcstAvSnCPfgPLXfidT9UlAiqvV+Sv+8XORknFjgqvrhTYHyRLcguhzfV+YmADSAEsg+bdRjANYtKTxCF63Lj6PaK9BdEx.h+f9iCRtf6vVh1cQ3CtCgH9.bCjHiKQtfOfGiCTt.QU3JPAH4NN.4BtCh.51ikK3NHB3QwsnCO9D4BtCSZTTlL7IoZhypOfKfMgLyBtC2HdKJCDSgGjzfV+3NjKPqEtBJCF7Ks.3F7NPR.9etO9.4RjijWf0jPOYGAVE.UdXQARECoKXTj9A0UDI.cT4afFXEAPBoaPN.ADnSj5fCEWw1AtAr.jFfNAvrjVF.UsSm.pMfyPp.sC3qjJnnAt.mpNAV.pb.j.3mjphG.jAO7laJjfBu4FH0k1W0AGYgQWR078+cnaZEghvvL3+D7eI4IHUA7Fa+ev+jbqJs.nF+Sv+j3L.J.LLfSPE.wRXTj9B1B9B.pRIe9uXn96+sEVH0+6+cnaASUDSEMDU+Cv+EoUfnm9BJCXc+Ox+lQ0+G7uZtoNEo76+afu4WTFHaVzbFwR5.j.XYB9HXZRr.70+H7uZw86+koD3IjE3jLOXZ84+koz+BvPXv8OB+ygb.g6+B7uYuCt.OOzr.A.3MLCHRF9BDHhJf.fPVNzSf.v4O.q5ErZ.IjfJfB9.7AzWgORSfGfS+Cv+owCX9EXploO3BnM3nz0+.7uYzGt.OE3EfuiVgefpgyvLlJ04EfDHEdN.N.tAeKvYkQ2+d7ObnI.HjD1+M7+a9CRWpf1jk.NEcYxA+9uHUH.TAI0+G7eavCHt+iv+pgM.f.N...PItavMfyfz.zEHuHxbfWP0fWwc+Cv+rgs3AHAHDAF.gOQXmC.sf3+w6A9.8CdBFBNA8Slz+Gv+xsQfbAxT.70m+u30+Gv+BzIfbEBXfSPWfiv3f2AWA.0S+8+hoBbWCA3xfEPBITt.IcDkno2fDDtHNULR+8eZT.TU.9UID6zxBRB3BzEXhHdCI6RpjDJPBAhlEiD3BnS3JDV3TfNHLUbRfC.mfjE4.nN3CnU3H3E3Yj0fcBt.YUdAHA9.cUt.HAt.VDnBfKQjgu.AA5QPGWtJHAt.7A.HffG3lT+3EfC3BfOXmRF7fO.XfeRWkCvRfOPVgwJ3HnU3kzJPYE9ArN9DnWdDJA9.dCNBCNdFPBFVi3N.xLd.PFBOij93HTB3Izk3T7X4FnTX.AvJk2gR.HS0NVjRfivzfWQckS.RfQmXcF9DaQB7PNKH3WLQfKffhq.MgmgUfLU3BT0e++TF.2UHaANAdANBfCdGcUTQ.HS3AP6P8QX4.8N+L7FHJCNBqEdAL8uD+2V8.80XcSVTkGfQlOPa4qQeKAXfjsd.eB3CtTC3BrDgHBXFAAC3BnAPDCHFfagPgf.3OTK.xHd.gA9T0B9.lEhdfCQsfKvIfWPsrufqgCvd++++k7+apQNG++e.+uUA+9uVEEayiC.e1WvSkz7XfQrchGPl++++k7+aCHtIY9eH+2U1xTm3.j4+C7uBeWVhfO.DFuf3Ez8+W7uabJOA0bhQRcK.w7uD+6FWzqPMlvmIUHODW9eB+OXk.4x9BL9HxANAEBHgya.O1E3QoLUPsS.TfKvFfCvEmLC3KXAP3ANDmBNACFdAIftArXt.metB103Zo8J.j72+nk4ZCK0WfKvMf.ZHJAlE.L2+B8uaXBt.gAFff2vXGB4m+i1rB8EcxBRj.sP5ovA3Q7d4..G3P8N3BDF3f8NiQvXb+8OePBVdhIRJhy3afKvk..x+J7+NcH5lpuvJhmvsf2.KBoL3L7VHGGd.HG9CQKt.mHtBAC9FgC9.AANEgCt.nD7niG.yCBKnPDhCfO.KfWP3fKPFfqP33Ik5LX13DTM4JjUP2thxj6fWj3RdcAt.f.nrhHMH1S.Lo.xaxALG5SfP.9A3LXiXt.ZFfivLkfDJNFdA2BhmHEL4IvO3AzIve.9BbBzFfivY.sIPX.DUfG.MfpIPX.NBw.Rl.gw+S7OaCJd.sstBvGDZjGP7+Gv+fINXFCDdfKvD.w1+98+a3vjoC07dVEx.gzIXSHzifKvDGJJHgCzKjav.mW.j.oN5LvRgGIfBIjPXp7++++++++++g7+.M7uA+GQetqPlmWPdfDCNuJfbkMWOlJYF8mQAfWPP.zkRmAd.D8HwfCAQHIxd3CtBDkTCncD5.rEJZolZfUAP5fVWfTARv.FE+++Q+OPxgMX5B7ZPyEtBtFhf+6v+QzH.O8O.+uvFAI5+C7uPLGx1LFESR+8+AN.3F.h3.Xy+.7efB76+DfoPZ.9LVlyr+9uFlBtAwAdBRB9Ag.t.SF.Lr72+VJCvTB9Ao.t.KATJffB3GDB3KrjLKC0W.e.3Fj9PJDtR.9O.+WXggafCfC.n+Cv+ERX3M.H3nXY3Y.H3.HI3RLYPVEPBJDdF.BXJffB3arT3E.HPN.vae9+atFPco8u.+uowzOPUfj06KLDshDVv+8e.+8+C+afTfOvRNmV4E7PSUANAxAxx.koPo3tBIUhf.0A3Kbq3.PYQy.9L0Bl0sqPxuPOHq9eC+OmujWPC.jvygSR.hC.Pf3iKAAt.lB.H+8+fl.d.sCNK3Id.tAxbOoK3WHmPUA5bffPHjEzSg6Pag2vQ0O0l.NL7EbYH0TuN1F9.GFhggygwhkv7+em0.X14D7P3bT73ALgTJJ9ARA3CiWfIwcon7Ex6fSfYh3GfxHd.UB3CfafPiSfRfWPsnC.WjLf3PrG3dTK3BrD3GTK3BnA3TTK3BbB3ET67Jfa4KfD4D..PpGxX0OoPA5Z3A3aPFViuqAGfaPOBuWuDg.D7.VC3GDE.xbhKf.v+C7efeGzgEYY8SfCHwnWJDQN.I78+NHz++Gw+BNbaLPjAsExHbV+++++LSVlrlO.wqWPl+2x+Ub83FjI.IzrUjP9RRA9.dP16J2GPGjoQ4yfSlCfrfWvnEAW933D3Nr0u+egw+SftfaPe.4GnXCDQjKPjff8+D7uFIB9.d.NA2CND99e.+qPAfPhYzoO.T.PI+9+atCDUuqfLfja.r81+G7OC3.dA4B51+Wv+L..3EHB3Qws+H.Fvfud.pAtCYmBOhZ64D.KnSHhxf6vMh2hx.wT3AIMn0mV4fC.7HogZvAzZgqfxfAeSUCtAuCjDf+m6iOPt0GPG0SmX.nvXuPdAvgBJoAOXUDjagoMHULDwfQQ8+eTXBcQ7Tb5Rtv9BdI+GcsFhFQ0mwEzziIDK82NDjEeDmB9.9nRUwGvo.HS7WbJ3CjCH3.eCYM18BoF.I3pYiOfufDK3HHmHDCPBisU7++++++++++++++++++++++2o+Gv+I3BL1F+LmBPI+Cv+EvVjfVe.thUCwJajA.d.yAS+RAz+P7u.YFG+3egvw3H3ALR7.Xp8FbN.JLi+fCvc+aw+ITM3..K3ELze+qfFf5JPFH+B1Cd.hARbg2jSfCP3gifS.HCHjCDlgelS1aQAfC.rgqhS.7l9AvTPPA9.OLESg.G3BDR.frRMmW.Hs8FYfHSvf94+sDLM9D.cx82+ILKPt.ziVYAvPA7CfG.TfCPDf2AT1OfT.SE3CLA3AfE3DTA3Yv0+A7+vA.jUfGPC.BE3B7.3YnD.C8O.+qCE.oD3Az.fJAt.O.tGJIfbkQF3.fDHK.t.FATCfm.QgWPh.fx+E7+zhCRRAjlYfavDiTMQRB9.X74+TSJvXHPByU1+P7+JK9+B+S8o..y+B7O0pVmcfaxO.DCf+.hA.9y15CdKFARi.ZD3m7CH3.PKfLHHB.3OCCOnNBtMMBdK9.LiftHPFTNBbDN.dGXwg+uwx+e.+u.rAn...B..R.xAe+u12KvLfL2e+qMlB.RL+CB..r.HY.vDfLv4AL6ouE.Hv.DM7Cf8fCPE.xRWL7u.+ePs.aw2+Cv2EIKJjAtACAN.U.dACAN.V.HbfMz+.7eAmK.HvTA3AzY+CDIntfdAmOBi.DAXt.zmfKvP.3.HT7+.+qg6EHCMF.vksABEC.F.nw1+x7O2CEvLf76+bOzGx.BJVUFauMVZzk2KI4Fb0QGHQUWXtQWZ5U1KLUlamQWBn8BSgQ2Xn8hTk86+M74+f7O2d0fSoM1ZoARSgIWZtk1Xr7uJ+ycaFDDbxkFafPy+K7O2sAfL+Wy+byF.j8+B+ysB.Hy+O7O2JnhWfa.LLXUQL8zWMkjSeMEHIjvNL9eB+uce.FR.AgEvg.fMf2vPDLTURYUQ.MBHDAvMfifHDvTPTMDR.0AH..BHAfiBl7VQY82+.0CDeQVdt8EbgI2WtEVakgRMrHRPFGPSo82+TGL3NPB.1.JIBDFdhTxMf6.I.bCfjPvP0ImckAjIfiPkHXTPDUzWTkTSEcDqAHCLf.v.Jjvds.9..X.HigVXtcVY+Cv+eRB.f.NAcDPK8A9.TAPIinw.1U1Wv72+GuBPQY.Jt3hKJj.HFw.3HL.3H.gIw.HA.g.3CL.3Dv.nX.tmXAfLfLMnC.Zrf1.3.b..y.xBfQ.PH.z..PCHP.z.fQ..0.BC.O..1.xBfQ.PH.vMfv.PC..NfC.VfjP.fjCfC.PLn.A.wDFJfP..w.Rb.DCHXAPLfPE.w.zR.DCH+.PLfrC.w.RL.DCHw.fLfzR.fHCHo.fLfTB.x.RI.HCHk.fLf.BfwBfLfXB.y.hH.LCHGAvLfzA.y.hOA.xLfPA.z.BE.PCHT..Mf3B.z.hKA.RMf.A.0.xP.TCHg.PMffE.1.xBA.hMfv..2.BF.bCH5.vMfTC.3.RLffkHJF.H3.BM.jCHNTPN2vRLvHCHC.hG.DCHlBPLfDo.wHyMhXs3A7pnZAPLhStVgrA3HL.3..QPbA5.g7THNAbChgSHsA1.fQPHfBN.CDhi.RPH7AN.CDBd.RPH0Bz.hATHzBHVhCPQf7nvIIlRhCPRfrjPMInSBkDHoHbShCfShC.RADCK.dE.y.hu.LCHaBvLf3C.y.Rd.PCH4D.Hz.BEBGkXPAhRA.RMfTB.0.Bo.XCHg.fMfnM.1.RLA.xMfvf3CTE.3.h1.hE.4.RFAjSMh.kHGA.Lfb.PJCPLfvJ.w.xlhgk3HbE.xHtvWEDL.O.3.f.vP.zAhC.JgnF3.LfXnDhVfCv.gHWfMATBfMPHeAN.CHN.5DThgjIXCHjN.MPXuIhOBgCXDHN.4.Rbi.NfWQDifM.HWIdAAAhNgjp3.TD4APIHoHTQ.HiHrPd.SBxTBWDfXQNAbBhz.PCH1D.Hz.Boh8DHtHrSA.hMfjFQkRDo.XCHTAvMA4A.2.R9.bCHLPTpBMU.4.CnvBPNfrT.4fiHRQzpjLKPdKNAVQdBuBvLhO4U.wNvC.N.H.LDfbPfMATBhCPIgvCXC.FAg3.3DL.XLDBOfCv.AcGXD.DB.MfPr.x.fhUHQBN.CDxafMfX1DRkAtEHG.xgfQfX5.heh3iX0.FAhOfNDAHfXYL0hGwPfLnPGIFRj3ngaCBWBcjYfKjPDKIQQBHVByj3.rDPbBPMf.o4.DOHKIzShG.Tf.AYiBRbA.BNfbM.3.RYlcOHKHzS.h0YAPxlDwZ.vjiHYARI.DCHPCPLkfDYvFhgjivr.Pi3WsEHcCnm.k.3HL.3D.AHuB1.fQ.vL.7AhcQHk.N.C.PMiBEHH.dACHzHfQ.PHDjL.Of3.bhPyH7J.gfXqDxRhshwXIDMfM.HAB1..wGPDPlafPmv2PN.2IjL.M.Q5INA2XZwAdPZX.hlB+C4AbXHlK1Offl3ILDHdlzIhgjYZChPhJDfWAPMf3C4.bIHxmDOhCvR.XCHuBfMfXeRDQFnj8IHkHrSjQJ.3.RHlZOQiB1UBJUJOkBVDwJ.w.l9fXtHRAz.h2fU.Ti3xXkHw.NBC.NAPDBjfL.XcBDBfWv.gvCfD.DB.O.HOCHA.g.PCDBOfM.XDDhAfKv.fdUHJ.N.CH7JhMRHHB1.g3FPCH3HfLKXC.Ri.Mffm.RegwBHrAx..dkYiBBbibIfC.zVBACXC.xTivpXu.FAqC.RfHTHtABEfXCXC.hMq8jvstFVfzmv7jjCjG.ffLaRWPDgD9WHCrTaBAD.z.hRhG.OfLKYGF7ABUDwPlFMfjn3.jjQoSN.XZV6f.LYbBRIBwjfMAhk.jCHP.PNhLiI0G1ADRpH.EhPq0ZXSDx..DyHqHRVhTE4HnJ.1HdHSExPfSv.fw.HFBNAC.FCf7N3BL.XaFRCfPAvC.BtfM.XD.DCAYHvCHNBgDzRh0QHwA1.g.AHC.3UhEBHZJTHfM.P7ADAhUBHvIRIfMffg.BYhWQIgtj3AjBHOQbWh4hPxH9.sHjKBlBHEJbKjsVSOJjLlJKfuJN.1.RKlUKHhR3cfnoP5jlBfHkYCKlNfDhX9HhohGfNf3iX5TbrKgWZnDBIBKT.fbCH6CvMfXC.2DhPBaT.ffCHOYN.nChQFwtfKQBilstHsXx6f8JggJhPgrUZQEVOiLE.wDBFh6vT.bi3XLEH0AHA.gf3CHj3BXCHqC5.fg.HICN.CL7Qff.HNCt.C.h4fQ.HvB3.gbDPC.Rrff.PC.BafM.PeADAhEBHnIZIfMufk.xVfsNHSAz.DtDHWAx9BUBXCHNHk.3Ujxk3FjBHJZTlhOPKHFNHrQFXfvF4EPVHKHZK.dEQsIrMl0JHRId.1.BxjAGHNQdA0Ah8BUCY4IlNfnon5.3UF+L.2DxXlMMHIRnhfniPBQjiI8h3.bTKamjLDYYH.JRIhtDYVlxOfcEgeJzSffQHiQjngzYRPI5Tjifo.fi3THEPVBz.hCfR.8OPC.Ri.RPHw.1.fnIXCHN.0.xo.MfHv.llh0hPwHFKfLEHlJBJfPf3Gvhff.xSf.LfC.jRhABHMKN.jbrTff.4AnDHVZDejGfRfHjw7QtFNABcjHEfutlBf.m3WfRHO.xmhC.IfjsPnHVJjCvWfbEIiA3UBGiYlBRKDslfwDhRBUCR3KDMhGPMfDtY2BBHoU..2.RchUiHVIRN.dE.3DhkhOPO.fCHUZHzfPFQIJbPD1HI3IN.EARNADCLvnRRyHhRBWDXWYn6fvQHMl3QfPmg1KxXl2f9.ji3PLEHJJN.JIN.GEBshCfPhMDHdKpNfbIHKHN.1DBBfMvvFIh4D+k3.DiXtHjLhOPKBVBH9LxAhSQIfMu3AjBHw.1.fTC4HnjPfHd.gDREjahSgrf3OjRHSDRuDck3.TBHIJlJjsEHtKZJ.9pPtXlmfTHYmATKjMFHorzM.bCHSAvMfHk3CXi3.DCh+KxnDQmP1rBU.dkX5.xRhefODUnfBQhVjfXHlRxWljMgMJRJhXTH1JBYinNgQBBHhXDXWkjOh8THhJzSDEpHSARHhGwT.Dy8QDFH7HFUAQp3DvDHnJzQfzIHdEhFfrnv+.BEBuCH3Kx1BICXbJNA2HrLhCvLnOvnl6Pcfbk4CDmHl.3Uje.SHMJZjZt.0Q1Rji.SlmPcfjhHg.3UhefIjKATgbf3CHBQTI9Bl.3UjKPXFpYP0PVXhPk3C3hYnJxLhSfKD5FHo7x4DEmPx.1UBdSHzK5NBoSHgJzNjT1RjIdA+.RJgbqvCExwfjhHHIN.CMh5.dk3BvD.wDxsB8THwCRKlDAgntdBj1GKj054Bfg.sklaf6.F+Cv+neE.w72+yKy1UIPIlk12+iyV.hA3AnQB0k1Wq41ahABICokIB.BJsHxh.I.Kw.bOfHx+C7+6lpS2.fBHyKBZfOAIAjlaf2.Ie+e87IfQogG3ADVW.FvW10SI+qv+gOfl9F1AfL4+H7e3hDN.K.NCbD7Cfu.GgCvDfvw9F3E.r0Uj6OAUgHAvH2WufGfx.TBX6.3qgxVvGApFAjFYfdA3HrL3BnCHSBd.3.RagO.f.HkeoHvWXARHgMxRIDSJfrma00VYxE1OXE.HlAx..Bh.mUlb7f.v7AdCCAPVfKvPCPVYt8VHMANCEANAGAb9fCfYoO.s.HGXbBxdg2f.fGfG.fE3W.B.YANAfDNBr.d.IINDa.d.h.JagTE3RbDnvABIhi.DDjjSPUEU+C.thiPFgSfGgOfp+Ae3Bjp.J.BHg6.j.lR3A7H3AH0.kjlavADQ.dtn6.bQfxAn5BdCb.Pbe9u9WAJGgi..fSfWfbG3N.BnhAdDf.pYfOv3APRXgrD3DHuv6.n6e+e.J.xHewxu+OeifWvF+Gv+3OHKb..H.mC.X4Ux.DC3A7..YAzC.PCPO7uB+6SYjLOH1BPBfWP5ArEIe9+FnCPLfGPFfJNvY..M.kA4B3GvW7ii.j.4AbGvU.1QjC.bfCPEAHyM.0B4.rFvW.1Phivm.2AXKAd.c.9BWRt.q.bMfavTiYA3Crw+K7uJQEjT+av+wvX3F3WIpGjzfy.IAfEKlnL3PzA.YARG.HSH3IN.qBPb+8+uGJ5gfCPEIHWYyQ2WiwVZisF3Q3g.hElbfu.G+Ov+ma6.t8FckUxVfG.VfO.G+Ov+DuAv3A9.e.FOBf1arAtC976+CnIXBBd..A.IgGPn.P1+.7e5x.d.dTRbB29m+OP5.nve+KfDBQN.n.ZDAvhH.lgHZCN.VBPI.uTn.KBumOv9fCPG.v1e+SPOf5w3HLK3.XhXE.hWfGQH.hDHh.d.CBht+8u5IJ.HjX0ITB5BlzVHqCN.mBd.ibV.feAICqN3WbR3ALEfABND0AnsfWPIDSD.n.t.294+C3l.ikFc+8u8WAd.g.t.0FhgGAePEBd.e.dAvF.KhLlElCf.fWvJfa.sAvhHmCfFfWvIA1NfyBBcgELPgDhm+Kv+uyK3DzafzAdAd.VqfVjJGEBkfWvGfaftB.CKv.NBh.9AwB9BiPByf3G.y.NB6jhtfyvK.9LnWB9BPAHHf2fFAAHHLSxKj6vZ.SMf9.tCj..VfSQG.jE3NzQ3.v.3N7QfMCNDbAnO.2UHLCvW+qv+rmr.ffRIhEz4AXB3OXxgOV57fegInVA3QXxJsRN.C.tCWtxpfegHgHO3WHBa+.9EjXt.0BdDxF3SpCfPfuAJgigAfGvTgiAVkifN.nv+L7uDg7OB+2EzAfxY+Gw+Nf9e+eyk+Gv+YYg.jDFK+9+5w7OC+m.EAvRKqL8IOCR9.j.YQRBJDjlak8Eb+Ww+Sk7+C7+5w.NDWAdIRId.9fFR.nRLmNvMz.RBfA7+A7eBBBzq.cUHCftAoihxfkA3hTL3MHG3BDW.I4Dfw8TKBjPBk88+qjcQ4FdGmHd.vC9.TCdDg86+4jJ3iH13D3.XkAvJvHz.onRMv.B.gKfO+9uBeFLPfKxviKPR.8E.p.Ss.A.XE+6+JbMnUAN.+RdA.BTMKQi5WTy3F7.3DXi5LXs5KX1PCQp++9OC8Cjdfe.j.H0+F7+3JCpLqsc4EXA3PrBaW.5JjRA3JrRIT..H+uv+ZgA.n7+.+2ExievrfSPmhef+A.xKCoA.0Dj4fbaIQAtOeIL6fWvWk3HneUd.YBtBlWlj..xe+uE.jOBmfu.5hK.pfnnXFG.HsHjzfz9Y6BnYkKh.faPYhKvrjXlnMCBWkC.thAC3.zfgnAtByCXHhd.fLXTRhGwB.NhnjAHC.Aiol.tBgoHdf4H.jsp8f+Pi+8eFWDBqf2vGE2Q5EvqH6fngfe.Fg0LnZPZ8fWPNwvqICjRPfe.F.lym+m+tD2PyEjT4.5I3CLAxQ78+TLhKm.va+Cv+NeD.lgxxCTjUE4z+X7+np2nUe9exhA.I.Fye+2bksGPiAUD3CjQ6CfFfa7+.+OZa.GUSnBTG.HCIxCxDpbJfACzDhKB5fS.wiKAzg.U3ADA36L13JPMHi84+y.W.ffB31D73PjJHh84+x7cMhChBgcL3BbM.9Ht.J.jJ.j.J0WakfMO.nDqB..iSxMx9gZKRETvPIQUVcoB3CvDHdDN.UJPJo7RLEDPJq.d.Q.TehFL3QTF3K7U3.fNPeI7nfGvW.GAHUAlXGi6e+SCkAzRN.MgP7Bd.n.NHz+2+NLNP0IXwf6D8.DC3IQO.3.tLz+2+M.H3XQO.x.dRzOkbg+R5+8OCc.NVzCvLfmD8.XS3xj9e+qfsfiE8.PC3IQO.0.tLz+2+IPE3XQO.0.dRza0kh+h2+8+A0CNVzCfMfmD8.LS3xj9e+afkfiE8.bC3IQO.x.tLz+2+EfC3XQO.3.dRz2BP.jf3u3M.4fNWbBPNfiD8oOCje9u.4ENVoChYnuP+oOijgyR5DfRLxfSKptX3IfH.ontOFBdAkAhbgqvWfsF3y7+3r3M3Cj43IzGXSt7A.MK3..55AXBvxNzYq+fgfWPYf6z+kyxzfOPlkmfbfuz+l+fOfsVvLE1ZAiW3ArFvQ.PBrufjmyBxfOv+mmvYfMIvzA1j.CJ3ALIvQD9G+i9Cy.1Z.yDXqALdfGvZ.GA3L7e5rzK3C7e5IvEXSBLcfMIvfBd.SBbDf+w+p+.JfsFvLA1Z.iG3ArFvQ.NC+uNKxB9.+udBQA1j.SGXSBLnfGvj.GA3e7O6OzAXqALSfsFv3Ad.qAbDfyv+syxofOv+smfQfMIvzA1j.CJ3ALIvQ.9G+69CR.1Z.yDXqALdfGvZ.GA3L7+6rvI3C7+6IrCXSBLcfMIvfBd.SBbDf+w+v+vAfsFvLA1Z.iG3ArFvQ.NC+GOKQB9.+GeBv.1j.SGXSBLnfGvj.GA3e7e7OvOXqALSfsFv3Ad.qAbDfyv+y2xggO..omvjfQIv0AFk.GJ3APIvQD9G.L+CxC1Z.yDXqALdfGvZ.GQ3F.vTaRI7.nvZqqu.JUOAVdO.jPeALheHmANAMUeEjCzjDjlYJjvXe9eIcQfckw1anXsv6bUsLDPJJ.Zr2a.+fS.Z.Zq.fnPB+av+kW2e+S.ZAjFYU8E3A7ClPA9A.AfN1rbDnPBQUIUPTkzSN8UTUEjTTUjT4rg.zjhJ6hC1TCdA5IPJufBnef8vfavGfTIvHBTY+Cv+fyeMYPo2D3zSTUDKzev5CvBHvvB3VLKPYwmvAXWYe+e4mBJ73XK3DPHHoDbaUEY3w7r9CXC.9n4k+9OTJwoa.D0u+i.+fSPeA04m+a1KE3hKtnPBI.tZ984+F4O.krmNh.A3G7I.i.xmgLh3QzSP036.fmPO.0MH7.HIh2gohOkDrK.Yh5f3DXm3DTmnAdMXhbCfJKbKhKBX.jv2+mPIgm.HirEvJBxIMO.XbJvalYV3PfUXTEND0ABUuY7m+6avfCPrfla.JjPXxJtEUp0AgGA8e+eBAItALCBdj+TJ..Bn.zCF.L2+B7eBFBdB.Rd.nJfPAIkQJb.QIMEUA4zPEAzCe9eeS.tAL8u.+mf7fmfSf6P5.zBIhBdBXI.Hs81HJ86+JzE3ErTPwF1cf8K3QHG.9.tEgGvaxQLTk2vb..RH592+JAcnfWdC4ATI.EI.I.9ENFRz.Jx+.7uB3CdAVKBIhZE.I.tGdOXQ+8OkL.XVgCwB.AJ3BvU4EsAPbAXre9u..OdBZRT9fTMnqNXoc8NfTLdGhNdFiNLoiCv9.RY4erB4MfrHbddN+.t.RBdCkANAjAJbkSfKPlV3ALb4jHS3TnSfMV1Lf5EXqU7OCgF.jfzND7EREwDQhC.6fcQ36pE.sLHufpuXjhNHsCRMe+uAoFjIguqCB1vXaJlAfH92vEdIX.bM.i.fG7iv.nPfq74+K7G.m8O.+OP8kWvBBc1e++VK+Ov+v+sHHRlJKpVPwwNLwn9BgQFiCbGZow1HySdFIGfBI.B..rGH.B.H+Cv+D7UAfPWZsUVefgAPbBt.hatCeEvKf.t.iXtEcAPBfM04EDowA.B.+9OAxGzSD+tQvANAu.VlhGfrfqAMr9I.pP2zfnSvTChBBiO3OjG3BjM3NzO.pfNDfG9FXDVqfKPjfwcX1A7+e9OA+HtBX0lvf.fvMEDJsWzKffY3A7gnyBtIkEtBPC9AxS9HnhVIh7i3.vp3.XBfUAFoqXBHh.lBCNVXeMlDg3EvRGFYpeg7oci4DbyfeAXOguonmagjAZR4BgBw5ENAzXJmgzG4hyFHqCB.fMuX.dpkB+2H3JdBEOTWjelbhG5xhTk5VPb3JHEgXTt.ymtHWP9MtEl+.qGnG.jA+9uOYCfb+ix+NG5u++LcjiAdDd6+B7uBLCvHSKye+meUCjfYgQVIm.PcrPbfPIPRDwx+A7eNa+2+UXKPlFPZlghAEcB3CjzIMB7LAoE4A.jP6BxS+Ov+KTwKT7OA+uvMArhLe+uy.BnWgO.CATWZ+Kv+CMVgWB.Vf.1+K7+Fz..I+ax+P9JXBCpTnzFnJ74+8s22++Px+8+CcBbF.n.HW.Xni86+G7+Cz94+PzInr..V.wBPgYJSHaBPk7ht.ZWxU.BEfLMH..5EfO.KOgE3HzBPr.9.IFN.4WKlf.EP3D+GiAhK0mff.QAHmAnYffv+J7eDk.zFhRa3JbZPIENbmBPBgmQm.0a3Enb3B7XP9Dpxgce30q72+Ow.h.Q36DsnP+6+e7mPoEt.tA7ZhHWfgBBBhKxdBXTZ3AToBXVZ3AzTz3M37.KHUsZbiXAPXAzYffI3SDpfy.t.47OA+KAPtU.Ho9uA+GgD+20+QvDP1NBtnj03Dba.MEVX67uB+CBjkexV+mv+fb0V1AR6Gd1+b7OFc.TLsbz.2fyMznyx6e.BfrDPEKtEd.9AguC2fjC38DN2mHN.R.RDfTI3jDd.o4F3ID92+GAafrD3pD9e+Gh+frC37LNXLItA3C1DfrI3hbNnUB.H+8OFRAB7+8eEMFd.S+u.+KA.fbE3pLecYBxNfyy7fwD3FLOXS.xlfKx7.NCHr+6+VjAOcJxvwKfl.4jaM5BlwKfjj7EXZ.5g13FHQPTbjnb3qrA6.zDHUENOe.N.PEtAi.N.W.xofGF1.7E4.EK3.7K.eU9ApCXF.7EQ9JtJbBZO.jW3I8G.4ENCAFvW4EBffqwokivFe9OHrC9OlV.Y0IWXzkl7.fpnDCJYfSRn+Cv+cRxhFf7GCMA5Gfz4EDlHvCnL+2z+a73JYVuHiBdAaZ9AMSCElb9e+uQiAAHJE.NOdYrRfafWnLIPdgdDaFRN+8eFBBTIfey3kKP2fXXY56B..DyTwL7F.13fnTE4iC.fgivy.NR.ekGPXBt.vLN.I.tCv.BUfaPL+8uIkA9Au..HfHYYpCDKfKy8kKP4fHuo.Dz0CJFPcMNBe.9A4xFbgfJ3Nj5r87eA+uwShXy2+CvefW.FgwLnZHaZfW.Hnf3+f7+FIRzVpvC...H..HAHG7OB+2jiAHy+f...M.RF.3.HCf9.EI.Hvv.PQ.ha.dc.fDCXg7e.+WvjBDiL2.VHq7Kng72+LA+oMDVs+9eSsHnBgjMvU..E.kE3ATwqDE.Hw.tAWzJ4B.BMP.zKe9OI6BN.q.t.S.9BmvZrA.BL+8eSYB.YjSf3fZI3.PwiJV.HvX..F2LHoM.X.n7x+Ky+M0I.zLxLMLEauQGHy.BJAIGcoMVchfZId8eX+2zdBzTXxMBF.LCJHifLvDiLJXUYxMGH+QfNfDiK47ON+2TeAnfB+Cv+c3cAi8layQGH+9OIrUvLecURTgz+F7OHXOjO.HC3H.SAO4zSFYzW+9eS8APNfifGLDzPTkjUE8kPUQEUO4DPlTRu.DSJR88+dTEn1YfUAI0Wv7UP.IV.wDC3LzA.w.ZG.HCIr.tB7.fLf5A.y.dCd.vLf5gNyAtB7..Mf1A.0.NCc.PMf1A.1.NCc.fMf1A.2.NCc.vMf1A.3.NCc..Nf1A.4.dCzBPN.5Q.x.C3M3g.v7kPA8R.xDy+C7OQcEt.OAPLf9Q3PDCf9DNDw.nG.PC3MvG.z.pG.TC3M3A.0.pG.XC3M3A.1.pG.bC3M3A.2.pG.fC3M3A.3.pGgCgMfkK.yDhM.n.a37uB++DoFDSLrHBQkA2m+uBUVIH3KLhAxvhHVElboM16.HhIFA9CmbvLrHxTvUVYjA9Di..MfqwH.TC3ZLB.1.tFiXvMrHxQxkFbfOgiHfCKhDDczE1XqA9Dj.PNfmwZFHCLrHhTgQV3XLB.xDxaEHUXtQ1asAtDvAfLAAG.k8eA+2hfgqvk.HSHuc.Q44VXsk1XyA9DMEhbfugIgTG3aXRH3A9FlDxdF.kbkM2b0I2+.7eK4C9BBGxeCPTYiE1+.7uKoA9BiDhe.PjooCtDlaBFfCfRji.YDH0SLwzW+8uTkHvSUQ0+.7uTon1BkLH3A3hKfBt.LL.ZkwFbu..3ADw+C7eL.fe.ECfBfS.PRLFc0EFaeYWYr8EbkI2Xk4FcgcFLsBdCCcwYxE1XkEyWzUmak8UXs8VctQGH6QGZkABPP..HfBg.uYFH.IQAlklbyQGHfAC.f7Ts4HPw.C9.UBFHAHyW.ADvQAtDn.vLfO.JfKwI.PC3EbB3MjhAvIWZsElb4A9Fp.VoDDyW18Fa.SJX1CxCATWafWC9fHDvRAdCkBld.LC3BbB3RXB.z.NAl.dCn.b8fG.df+PJfkGHzOJ1fJOvMDNKlCN.8.dCaBVbfrNniAtDj.R5fC.IfKgIEDyWjUFagEh3.j1+C7+LUKtB+ANGl.vLf2gI.PC3CXB3Mv4+C7+ID.d.g.N.VrXBfOP1+8uehGvasAXVfS.F.DzXFBvWCouTIM7X.CC.gAlGfKvE.PEHgj.H6Y1axAhP0omdiKPkAPhUf+PFgOvK.L1PzC9..B9.bD1u.DC4PDHXd.fLfWgG.LC3U3A.z.NDdH70jWf2.TBIdCPZ0D4m+WioLhe.aEye+WyaDrGQoU1biLLRnTgXrUFHyAWYoMFZkIGcfPVZkAhS00VauLf.jU1b+8uDDKvZzkFHYDPYtEBMAPGcq.m.r.RYvDGfUE.HoQB5.jFXt.PXfbBD14hBI.RL5.RPrQ2WSQmbusVHgS.HxnCHRURXfCvCKLiNfXDag0lBIT2b2AzKgbHHQJvQUkDfIDRhAvVXsDBNrA5XBPxatQi8fGPF.TBXO.NAPCLMEIMPyKPauQFH5AbEfKfRfOPlfqfGfO.pfqfG.dK3Jfw.DIWXmANCXDfT0A9.4Bt.HNfTuwFafyPLBoI3LfAAMUGckQF3LjQZHCvWfCQTBbTYo4R9.nPHkANA874+1DXAjrjauIVLfxv+P7uMNBDI.HC3EPB.6IhJhLz.hUVZjIxFBvTXhAyJD.xbo4FYBNT.g0FHU..YhXDP5.vbfMAHpX.HA41cggFafggnNA.HtrgH6EPZtAxK.LWHTDPYtIBECDVcyABrnDPKEoG.C.xQxUGLLADIfNFHsIPYvEFM3.PYf1mXHELm.DBP2APL+8uVcSvbfrULvHio.j.3CLQ.aAycnfhgKAE3GvA.w.HGqGPRfe.H.HCffDVdfi.G.LC3SvA.z.9Db.PMfOAG.XCfbrlIfevi.bCfar5GfePGe9+VZ.tCsBPN.py5ADAH8DtAGAfLgqvQfNQvGsJJfrSXkAbGAijowBNBeD5QpCPofevOgpD3P7QnMANDeDJTfCwGgNk5.3O3G7WnWo38fe.GgZk5..O3G7QnYAN.7Dd.UQBBe9uPWJRXE7ULffBLrLC9+8+.0zzq.ogItKfY1E1HRBnHAvRMTMA3.vQ.041e+i.wf0CCrPxRN8jPeUkSIQ0WN84+yawvD.PI.Ah.v7UXkyvJfwA.w.9Db.fLfOAG.LC3SvA.z.9Db.PMfOAG.XC3SvA.2.9Db..NfOAG.jC3FvQ3ALR3DnH.xDdFJBfLgGgh.HS3YnH.hE9DJBtDb.fLfOAG.LC3SvA.z.9Db.PMfOAG.XC3SvA.2.9Db..NfOAG.jC3FvgIJAPRB4bI9BxBsT8Ls0B5+8+BsA.Jf3v+A7OPgi9BPq6JyLB.IHFzhGP6flA.0.xR.qQvfANBZLd.F.tBZ.ND0Ld.e.NB0Dd.uBNBZLd.3.tBZ.NDqMd.QANB0Dd.gCNBZLd.pAtBZ.NDqMd.CBNB0Hd.S.NBZLd.bBtBZ.NDqMd.0BNB0Hd.EANBZLd.NCtBZ.9Bq8uB+SPEBwl5A3fn0ot.A.bDIQOvKjz4.uPRZCN.KfBt.uPR.C7BoMKvLfFKoYJvQjXlf1vHGP.Sgk2a0MVB+Wv+9PuIE.d.olydace9CLIHend.4BxG.HyL3CtAe.TwfjA.y.dBY.zzfjA.z.dBY.T3fjA.0.tBY.x6fjA.1.dBY.T+.vxe+OzMfePfgs.HZ.tBbFd.Y.xGfqfnAdBHa.Dofi.VFQ9.wvBHzD9BV.zF.HCPa.tBUoXHqYf.r.RMfuvk.Ehp1CTHfzGP9EvdRMSAgPLIvBxhBD1ZkIUO.LWKIHCPC.BJk7DSsVn4.jB3L.B4JXbPs.NBHAztjCfyfCQHjCftfCQHjCfofCQHjCfjfCQHjCfefCQHjCfZfCQHjCfUfCQHjCfPfCQHjCfKfCQHjCfFfCQH..Cwg.NDgTN.yCNDgTN.eCNDgTN.KCNDgTN.2BNDgTN.iBNDgTN.OBNDgTN.6ANDgTN.mANDgTN.SARH+2v+AgF.n79.TBRI+uv+Awn3OjO3MrBLbFRpppK3PDEPkL9.A.dDKM9.E.dDkL9.I.dDkL9.M.dDkL9.Q.dDkL9.U.dDkL9.Y.dDkL9.c.dDkL9.g.dDkL9.k.dDkL9.o.dDkL9.s.dDkL9.w.dDkL9.0.dDkL9.4.dDkL9.8.dDkL9.AAdDkL9.EAdDkLdAIoR2pi.6+iv+K3y+i7u.bYPXrPxTAYUQ+6.CDvRKwjBHqv0HM8+H+ifmiOf1o8F.p7SCfA.Xv8KS.wE3lb04Jf.PeAVU+avffqRWDoA4..DPW84+BUD.rDDI+pK3tTE4..G3JTE.w.NLUQN.fBtBUAfLfCSUjC.zfqPU.LC3vTU4...3JTE.z.NLUUN.v.tBUAPMfCSUkC.XfqPU.XC3vTU4..I3JTE.2.NLUUN..CtBUA.NfCSUkC.7fqPU.jC3vTk4..B3JTk.v7kPiCyVsKfuiaPr.DC3vTk4..H3JrJ.x.NLUYN.vBtBUAvLfCSU.PS3RD..z.NLUcN.P.tBqBPMfCSUmC.PfqPU.XC3vT04..G3JTE.2.NLUcN.fBtBUA.NfCSUmC.zfqPU.jC3qTUMOedFEexumrVNO7OD+KA0.Axl3.PBnHV.mU1+e7uR9..I+Sv+Jv04Dz8+A7uBeBhVmt6VngzvfGCXmy.5e9+K7..JfOPYHwU.iElNwAReAjPBw8..ywmX.42m+CYv.PxSw72+9Y.3w3H5BjA.ufV4f0FPX82++4J32fUYV.N.XA1y.DCXgAfT8HB3O8LpSF7uf8F39DcoRBt.ZA1z.HCXiI0bg0IXM.TbgqCmopvu+2vJfCPVgqSmlh.3AjEXJ+2+4X7bj.NRJm5efG.bARB35nro8Ad.YAlxWQhHo4ijfijxoRO3A.G3.oL.zL5LLNWHuClx.TCHH.hxzXH3HorpoAd.vANPJe5YfGPVfoL.1.lxUcC3HorpdCd.vANPJeJ2fGPVfoL.2.lx0gN3Hs7pTAd.wANPKipTfGPVfsL.3.1x1GPlfiDzq9L3AXG3.AMpMCd.YAFz.jCXPeoRfiDyrZD3AHG3.wbpDAN.YgD8H5ARl74+ZEGN+ekpWy7e+Cff+9e.7mhk+Gv+DLA.cgBQfavLW6MXy78+.XK3FLCPxAva+qv+WTvcoChTwygw3jg.GI0S+Gw+r56+C7OAUqK0I9aP1BDs+6w+cj.XGEOEhBjy+aw+crv+H7+EveFuf6i5A1q8Lz.P4CRYf.fXxVj6f.P7InrP+B3jfwBHRENHe.Vxta.V..y6AP.f3ApUfgG.wXMg.wI3FgG.w.9A3kFNfhG.x.tT3AfLfe.dnYNn3AvLfKEd.LC3GfGZTBJd.PC3RgG.z.9A3glPfhG.0.tT3APMfe.dmAOn3AfMfKEd.XC3Gf2YdBJd.bC3RgG.2.9A3c1RfhG.3.tT3A.Nfe.dlMOn3APNfKEd.jC3AfWQcQX3jnIPLT9Jp80HluSU.hX4on17BLH4.DOoZVtIpAfLkifZuIPHaTNCpAdT3APLfe.df9bYiCfLfKEd.HC3GfW4EnF3QEO.y.9A3UdApAdT3A.Mfe.dkWfZfGEd.TC3GfW4EnF3QgG.1.9A3UdApAdT3AvMfe.dkWfZfGEd.fC3GfW4EnF3QgG.4.d.3UTWDFNINADCkehZ+Gv+ETEIPtjnfKPD8fBYlB9.RTSRJkwbr94+P.MPRnToxCv5fwP.DImjs.FCQ+FfL.arfwvyyCFCuCPMf0f6EbGXRzd.4B.L0ve.kwVMJDvdj0hx+9eDlnPZyQGHhUlbkkFcy84+QvX.8o.HVBd.gCTp.w6m++CvA2h48XV+OjLPyAztlKBMc9o8LPA3.PK.I7+B+efyKhMPwU+Mi5mEtCvafc075Hoo3C7Uti.hty.u+8OQKcTbAPWYtCP4tyPr.gRPS69BlBfT1nkfsJb4fGPDh6P4AQK3CThv3Wczf8g3WUtHkJD4g7N3Jnn3mY7P5DVhu2ggYVr3xYrqYIrahCjwoZDvWINBcJNCFCPLOQs3aXLXnHNDHKTeBKLPKHdH7FB.hG.uAor3Xw6V+IN.9BFqiNj3mgqZlGzdh2AtAHCKb4m3xgKrYJLXhCDtqZHvWINBOJNC3BfLh+At.gR4O7WQmHrs.sf3tXaHKHd.1J1vnqTVhK.sfop3tQaahHdHzFvLrHtczJa0Byk3.QaqBC7Uh2As.Li3ePKXnHND1JTWBaKPKH9N1FhFhGfsBN757.g3BXKXpJta19FXhGhse9OMqVdJqI5WpqC60RgveINP2Ba..ek3cbK.zH9G2BFJBeK.u8uA+aClBAk3.XqPbIBZf7P6Gn.HrKxJqCPFBECXRbrpfwPwB.FCBiEfL.TVhVV6wbr3CXK3B.E5DHRHT9+F+yfI5egW6VfirLvWyQ2a3Gvyw0o3gTa.0vR4svFHHm2dAYS60H5sQIbW.dU65Hpr9.7Uh2Qs.Ti3eTKXnH9C0BkBhTZPGC1BhWUsgLi3ATaYFB+H8It.0BjsA8LPCINA0BuVXM21hGhs.Xi33YatOJrWhCjszxGvWIdG1BfMh+gsfgh3OXqX1H7sfwf3hgaHBIt.3JjfyagMhK.t.tZo.K9Y4ZGGhGRtAbCKkeGb6BsvgINP4Zau.ek3cjK.2H9G4BFJBmK5HbR8ADlv+Bd.QHNbDGxVhe.whcc8Bru3BPL3B.q3tkLdsIdHIG.NrH9cI6aHBGm3.kbtN.7Uh2Qx.fi3ejLXnHNDIKHGBWLfMH9fAGhYhOPvh.87.fAnrJta8pmrhGRu.ji3306u+CvYBWl3.06tSA7Uh2Qu.ji3ezKXnHN.8VCFsHaAt8FckoPBJ4N.k74+Jsf.PEjT3PrP1B.L+8uN+etATBTJrGBMfSvTAvBI+Kv+XHp.fvCHe9uLJMhKfafX.Px+A7uLlHDj+Cv+JMJH6JBICvVYiQG3xH36JPt.onfBe9ehXtynFTlbtEFckARlkBPK.Af.8ofBe9uAKN.LfrWPfa.Hak8+C7OUO..JfCvp.UMHXevdzUmao41Yf.DJ.jP3zny+B7eDOD.H73hJgvYf6Lhz+Sv+u7G.f.RDAYS3vPJ3Cj1m+2y9ffLHk88+tzMHR+O.+OyIj7RA1.CLfnBHfWvf.ACQZAzAfefmfHS.nfh3wHD3EzoPiV.Lo.RKfTSHVHfJffBHO.DsBfBM4DR0frG.I7eA+Cyf.w2.4.CLp.9M982+CnSHb.ha.AGH3AdA+CfJffA.u.x.+8uDgA3gg6POGHWXtQ1asABJgTTHGEPKf.dAuB.K.ZA.q.tAV.l1VQ9elAxWArmce9OMEHlYfCfZfPwu+Gyd.cOvoAPLfej+.vBHnGtQQAF3fbMPCPvdvwVX4QlofWP2DxAPb.vWDMbHBR3uB3zST8+B+qEr.zhb6QxO472+A7uX2Dbk.j1+K7uX5.9Ds.PLjOf1BDSWs.N.IEd.zAFwfGwa.HC3CDj.xz0JfCPPiKvWfIDPHRJn.HEI8GPXyQdAdBBGfIve+u.pCDCHfrG3EPhfSHvdj8VPBA.ZjrXfE8+.+OS+B0w+E7+SrCfBfHEvyAD.SsHXH.D.EAAfsIfLfrGPY.lXkWgAjv3+D7eM1FfYrAhMAYKPMB.IyHw+I7+M+CTkjiSJ5N73.n5XqBPMibF.xP3IhnKHS.vJf3.HS+4+zvw+B7uMsQhphR02+yU9fjivmAN.RLT+fyPvjSPAAoL3NL1vYBNB+Aho.vB3HPAHrB5RF8D40j7tJFN.dD.H9XBV.0U3br..q.heBDiL2.hogaPIgUFH.DR876A6.Txf6h3dERN3GrI.s.Rl+8uTxUN.XADpkCPAgqDCHEJPiENGLHBFhePFgZf.gI1bgujBgKwBhbVPNHNB5..OWBH3L7LKLDdALANB8DfOfDB6gCwCfrA3CDDHKLH8FhY.uY1+E7+NFBd.BZtCiJ.LvvBRhCjafzBXJUxEj3KPJQNA8.T5heSZ+8OAoMd.Ej1W.o2CIr2bqEFaoUlbkABYk4FHjbmMAzhPf7.AoMFZf.iHRN.HgUmYff.HvRTx.j.5EX.Q.MxAiaiAfW.mhQEHtAjq.fBHkBloAuZHhj9.ZFfLxDxQI0I.n.dAWRNAXFhWIqJ3Tzd.0DCPkCNZuOBVo6v1oWfJAsF.y.R6fqg6g+fKEeXn1Ph0.FQpDA.KfdQ5KzH4.XXHMAh.h8pXkF.YkgTuAPWZe9+WFBhFAqJXX72+7PAP4J9Qk.BuhMRH5CvLCcDHOH1BhUCfaXn8f..HTlvd04FYfnVYzoGcfXiAk.BYgY2atIzyAC.XrBzofqPufHV.x.i3GDE3JbxILEnSjCPVfUUfBDd.qAFE.vB3KfV3AbGXiHD9fnKHBDRaA3VY+8ON+ElbnCfU+8+NqCPLorMP6oN.nTboJdBni78+8jL.rnLJfXE.yYTupGfJflh5MjB3Prh5HbBnFQd.2CzwfCgOpa.IfCfOiK.5.8CHsJvcgk1KV.rWgERXZApGAPBZe9ePWFtDJbnfHacfI.TVfa.mfhDHe.PI.FygzBzYf6PJgav.fKQJfaf6.kBHZqJ+.AfWG.FB.Af5Enu.y.xd.0g5qvnAoI2bzABYxABOBui3.vivXDzMgaPHhPqvKELMCw..yLdAL.zv.QL3LD0fP.hQBWwu+mimfnE.xLd.C.N.Ujp9f4j44X+u+KvzlGf8oC.+fyvpfeP+oWU+fe.mmnF.ofdBwWd.2E9ROjN.+GNGOHRChefCk8m56.P3LzP3S3vH0DVDhi.VJK.3LHsRCDtARANB.od.E.dCBolAfG.QffXId1dA7OvbkM1al713D.GHmLCKAfVY.ywXPLliH.xbn8VcrQFHhARBJvVZmgFcrkGHy8lYyjpQgBJg+Kv+CYs4.bF3Jvq.s.BMiqfUiv13.T5PVA37fKfTga.MfKPFfvV3EPCHGC36pCv8.H1K1At.NCvbfKPsins5V3+HkAPIkGPYADSWf3E3ADO3prCH+.h.fEpIBsrS.jFQ+Gd.wAVnAgf50j6u+evhjGvWqGfUpWQZqqvUqqDVfefmiwZZzrt.XEJamS.bgQeR3n9EpEdA7BfLgw6xpEdEArNCqEtVCLhBq6.apCfB.D1e+WDyAMv5ezV3OLjw7G5RpGf..JFUVAB.gPjxEB3EiavDgZEIOUGChqf2j5l3A7M.rPt.RgPXfPWXjABaucWKsN.cnElafPfJFMDDCUvHq.Zu+Wv+J4wH1CbuDxh3E.xZf4RvpCPwirV6.bIIsAxFfyPwf3FHBLVmf0J.wvt.9.BstOfhFzVZt8RaggWIU33hq.qPTBPKfP2.gw1buAxE.jFPOP.Hq8ib5AhHC.hdkkFXQCPB.+p5ADBPMaRokTZ7wv53GvDHkGh0iIES9ET2h4xXbA3FAE.XS.h7.YO6PPn3.nGXxBTqfqvvrUH.fv9AFBtCsG3tgCftfc0Zr.hsByFXTDd.AClC.Nh3A.IXTXrNgGfs.HS3CXqPFAl2.R6+C7eRlCjxfCghf6fdBfxLp.NAgBPJ.4WHAAh.WhhX6JnOm4CX+A3dLwKPy0dJJr9AYKXms6vBfGAKADCKrC.vlG.u.AL3QHC.x.d.xLt.DAzLfDO6WPefQLNB+GjD.0CfFCfLfXb3WTw4ADOK1iYR.AD6F7dXU.jSfPB.kbd.013FfGAKgCPEfT14.HMPgCdDxDN.UPNAVBzL.Yo6Cnf3C7FHe.hGARAt3Kt.h.ZDA1..IHtCi.X0L6NHmGHCfePpfGvRfHB.k.HMtGfIfKQK.Dy6ADY3Tn.3B.l6XLCARUmYl0Bv.D594wh.z.xd.sg6vDSXuGd.AExVhJkHd2LxljR3FPCIiw9AmPTutCpMAPyW7aP+tOnMfe.mtqkMfefbrzhKqJDCh+QChefCmYi66XC3GnYXM3Nr1LnatyVM.fy4Az33.jsKKEV4AkdSrTr+fC.HtuRMDaS9.7B3D39igzSw.Hm5C3r5Bz7.nElbjo9.Han9DMOXlBnn+Gv+RwMQchHf.6K3E7M3LT+6KrB3BHE3FTO3BjQIJ7NBqDBOocSIsCPco.AH1+NgtDN.vXN.LBTwAKiJgqaopLA.kXd.k+nofnMHB.V2nj66Uo1u+SgOtjKPSBxiuWnZfefmjANHoBDrr7A.oL1QgxV5DbdPs0TKr.zJfquDDGdA.55DAv1be9OAApeJV+tRpE9ACPxOumlZgtD6ATN.g8Vy.vBnWvd.YC3Ehav0gZ06unl.wUWZjv5KpQziinQnvqNABGD7L+MfCBBkiKfVfIHH6LtAVQ34lFxUC+RKzCPMuWg3.0DnIFvLeMBpuCvoj35vnSnAhWPltQ7H+6N.LB9.6TRIfrQ3K3Cv6ZFyuG52hqPui86HU94+FL5IM.R7fH+HQC3F.0OXS.h7.Y+65786y4MHEKFcgg66CDt3GzLbT.vWcEu3AHj3.DD3Avg3AfC3ALgHqKL+fQQQW.NA2AvLvKPV.cGPcHN.7BlLfCCdv+++Agk5Gzo3HXZ7Yzl5ALCL8.IXiT.7GTyXHBjSfPh4BDR7RzFXrDeIsAlLwGRaiO.gCyaTIEOBtAu..SRIwaRaxafcwKvBgqPBfGAKw+vZfGQLwmgZC7Far0Bv.DT9gbabpIPMfrGPaDmZfLw+T7uBszFSK1jznYhWADCLrCfV+Kv+OhyIaBXJAjDQ+8OT0kN.zCtCiD+ALBPK+8OaRCjjnCf0f3ve+Sk7fn0+B7ODHhhk.i1e+uGj2CSK+qv+P.HHbAPMfWCU+Ov+QfUTNBD.B8GPLGvdV03V.DSPOBDDlBSKpydDUeDtGAL.k.H8SsaZ5AzO.CE.x.tAP4h9fmBTgzFvOAvLfavSjX.3z7D.z.tAOA.Mf+xS.PUi9FFPf7J9.7H.gsFOi7aZsyln4WSQ+9+GOkxPovUH.hNDuq9.qAheJepRzkjhHSD.gAFnK1M5BrEfVDtAd6N.zBr6gKf2.9En2.Db.hVJ7CNWuyNBg.3ifaz6hKfe.9E3v8N6PbXf1EtOeOt.d.tcuG.MeI9SOORqfHP.6Qze+mPgiGvunoy5Df2HDUSbkCC0AXUPim.ugb5HE2lH.fyHVFzskg4Pd2t.h.1DfPJPnFN.Itlx.QI3Jn5H0A.MjCAFfgC.ewNF7AxlASOXwbxEgmvDr6.iAxDYc.js.hC6LYOfoM1kfGPZoOfXAEhf6ppCfOfg.OM3CLA3UL8XQ.d.o8+.+e1PfiPZfOfg.mF3CLA3NjFHcIvdPwVHaKFi.4fI9WM8fGvDAR0IgBrFh7IfnG.Hnf5gIqAH7c3n.CAH4A9AiHdByLobfzH3LnF3H3mHyM9MbneAzHNB.Cjh.MPZ7K5hfCP+1avTfKPFgbg8ELE3M.z+l7uA0FN.TrVm+O2KgCfBoCPBoY85FHZnuzhBrCfpnSvH.MSPb4+.XP9.q.zGAhi5MDOXe7u.+aHZfGva.Px+I7uajr3gqSvSBJOYx.1ghGf7fLAPXBXTp.j3Y7NI5JtFd6+AoBVvf+PZfiPeh2k6hGf5fK.9haf5fKPFhfn3PnN3BXh3HnN3BrAPB8eB+m.ngCPehmQ6fGvRtn1iYJNCKBzRfDB.kPXlL0y6RXIXr7dIVBlL.HyncnNAdDD5Act3Cnt4CD.PeDXdhKh5f4l3ZnNP4I35lQKPNHt.qC1D.sofuwh2hyQ6.TS4HDNXCC9CHANBbI9YLCt.WKtALCt.YHTh.E76.TWfSRFVfKfIhi.yfKvF.Ij3PvbT2BTHQw2e+ywGDOy+B7eD1Cd.KIhpBxLPRV9BaAjSfPB.kHNGOCFKEqKHjUdF5BVLkCftqSf+AsNPUJ9.Oi9.mAzGAti3h7LXuINIOmN.ZTd.5BlDfsYf19hWhywy.DSVyDHRHKKXDCT4fuPRfivDheFzfK.1ha.zfKPFB0HPAK9BPCt.lHNBPCt.a.jPhCAz.PS4ZzI3ArjHqJdEPCjSfPB.kD3gkaAnfwR4..JHkIdFQClLkCBnqOPZhsvYZHtHPClahmAzg.ZPeNm2fr.PB74+ijOP.LfP0omdfg.P.HkNf3Ac6JfMfrGPaP0tfHAHB74+xAXXuBTCjQa5C3DPYDfMxzB1fAid072+xIOPTAFB.Ah6231u+6BwxCvJobgytAxAt41VYBDHAfBHzX9JxyRF.IAHyBh..ZY.VQFnVBDBf2ikqW.5t8u.4HiLN4O.2.hA.9HvNBTDfrHHB.lijC.PA7lY+9uBHefbkAWYgQWYj0G0g8SnsAN.pLRM+iv+EDDIh.RXyUDP+AF2.gGHT.l+h4E3GfzvaCNBX.RXActP4HPZlo.HqV9.KF9.2Kjt.4A.n82+YBqnkH.O8.xe+ybEfCvUla.lffxfDZVlj1N3A7c.r.RItHFS.0EPdYNCfBjUiCxyfwx+J7+EUBdDYcuB3ClhgUaXdEzlhaWQfEY3KzqHeD9ArKFHCti3LDB.IHNEh.NCkIzHBSBHI.z.A5A.TM5Xi629fkYvPDW+xCvKgG.JfKvEiYSXj.DxiZDPcG9.h.t.uLxQiTlXsBtClAzG.AznQAxIBjlaiMxA+8+cWCFNiOQX.dm4hvgXtadFb.liisaQ1Zt.X72+xHJ.s.L.hfNHqXFFBbCH6A1FFkA.I78+jZm9CnMHSO31OIDvf7+.+imIDsk5.HJ3.zBYI.ZNIKxHbeXzpafm6GC+.TBfZdz9ADSWlzijeYFOe9eH6EThfGQajafDlrEn.A.Le9+D4BhOfKf7+Wv+pHZIQY9M9+6+yjffcBTaiHMX6Nh0sLCHF.zF.EAHZTYYfGfi+8+kxDPZtEBbgKfOfWvn.wO.6AdD8KvLrzB3F7hHWHXlfWf5e++mPHZzfS.G.M13.Lv.t8Fck82+NVE3BLIPf.9DCBPIgGfv.LSPAFdNTctB7NTqgGAU+Gv+mtK.6EVUA7VcBUe3BXE3pMoLAFTiifZ5Azs.SAWYifpWCN9BIK.NfrG3A.hTRNhofAv3Cz73CvLvfDB8jIiXJQPYyMWYjcz2rPafY5eSr..N9uDK.9dHFC7yDU3+A7eogEBTfvAv..NALfN.yZt.DLtNg+6+zDx3.D9HVKhhictWcNj468.Pgju.OA1DfSvmfS.CfC.qpO.Pg1ZwqANAv.NAL.N.8TtA5JrFAMirUBd.gUN.5NNBLiZko6ftief9fGPKka.uh3HH.PtAn.d.sTtAoBRKffLv..NAL..HjWvmg2Swj2fTgzL.0DVtAMcYgBNAIBNALPNAZAd.WO.HnTiJ.6f3AnmXf.dAGiOArQJGgKwKkqvUfuBZgbFH.jtCj.yA.9gwX.p0fKvwf4iwdDBAfA.POLFnfzA4BzM.G82+9k0AfLza04FckIG4CDdIE.PBlG.9nYq.4.xdfWvKj.OfcQdDuCRQfYWHZQdXmCPNjy14gCvBhW.QiuCC+9uM1PN.RK1pAjCNir..zPnwCy..zft.rd1U..xQW0k0fKvme+eMKreMY96+1HG3ALI3.7OP.HFLC.CHz8VJRANAX.D.BRK8CzX38PB4JDSTMQzLg.B.vDnJ.TSP9.vJ.BA3DjIXxFPMw.zrfzB3DnAP..dWzFhzf.pRSZ1i.oKXBGzYAUNfe.DvfYA3.T5PeG30hGvgXFkOb.N.k.D.0G.hfa.F.Bt4A3WPStnl..hwlZL5v3FhmBLDg.E.0LB6fAFn.P9..eN.yzx3hWvI.A.3KfG.w.NAKAT2wHDXs.J.fyfWkzQ.xbC3d.VMw.7R.A.nhANAS.Llm2BsmCwU0+gO.g24LHK3Pj04HDK3D3LYPrJZlZCHfAnBiO.iFmN3PXl4IfN3IPD3GrG.D88+CrD3DHIf2X9.9JTcv3D6D7tHzORjiUA.4LxDiUvPdLFE.twXQ.RFfWPWB56gb.DVfqfaM1OHF.RX+Cv+xDB3ETTnqbd.hAjR.pU3.fD3Bvw+w7+.i.PBhO.0fKPTtsfXkBB.mIsqU.NBYdF+hpL.IbBv.M.Pz.D.D5..xL9A1StEOze.4Bd.0SNBO.x7.TC7Gfm3F..3AnM3BDE4R3.3BTBKSPtHN.t.3PNEN.t.m.DXjChCcMMPwDO.9A.Jktv5BLL3Ar0HrGoeiyPS.sDHg.PIExTTQ4eFtCt.rrZviuvofkE4l3.XyH3Tj+gCfIC4w3..xPNCN7+.1ETZjakCfSfaj+gCfS.Mh7C4D3.3DvA4N3.3DLRI.AHPCV+H5HBLiOPLj+.Cf...IPNAL.9.p.PJsz.4Gz.QarFj.oAPC.DDnhCPJ76+X42+o7upUBlq+Cy+Ifv+C7uCHB.OoD.P.Pzx+Wv+GgMfmBtLl8uB++.QfTFHAD46.H0+Y7+Nl7uA+uSIh76LtC.ce9eCnCi5AjPBAUa3wbv.VEjTe86+Wg+5.fkVInxD.w0+J8uFeA9AsAPJiJ.P+s1J.d2zXBh5+Ov+XjNWVbDOma.ruS.N.Az+.7+FSctAXORNyey4fe.vi.2+K8+FfDtC.Lns+Gv+Xz7vGCPXe9+CBE3GiGf2.ZQXSMTapLcHTCt.C.vdqCPJBwDHXH9NN0dAVD.H9HbSEp95BzYHMZ5xqKv0.fx+R8+NqB9AaBPKhbd.pHy+E7eBkGDKgCvJgqjCD4FPiENGN.PKg3P3FHxXv7+N+ORcgu.CgiVCjCfZhqAGh3Y3.fIHKDzlfiPMoEN.I.dCNwE9fC.PfyPOoBL.I.tC+jxr.GDP.BBC+Wx+BA8LTajZ.B12+CT1EvVYtcFcnMzBgj9+S7OrHKloCwMPHAzdJEw+.7O.vQd.wntAt.jUBXUQNoNAuLd.CpRCfaPhf0Y5FHNwLpdG8.t.sntA97uT+Kjew0TPeBtD6pdB3LBRnCyPGsi9rfHHiBfBhgHhe8OB+iDR..S5CjA.088+lJZRb8uA+OVmBUv+57uURBlQ+8OA5TBjfwfms.bC5E2+C7uhFBPB+Kv+KYH.v.xx+9ud2.DLgGRS.Px+c7ud2HPBjD1+A7ebNBdMgktBMld.iC9.lAhEB9TPL.PBgQGAyQmbusFX+8eS+qWNiQMftEfUg8OO+a0l+9+Q8Cd.YMVHEMffy.9SQm5GfGvcfCTzlBK3AjEXQ+2+f45+.7eVEB32AIz+57OV1DfLe82+.MM3A.GfY8uN+iEN+9OQz.d.YAlx+8uWD+O.+q0PfSjx+9uL3Cd.vANPJ+6+4LO3AjEXJ+2+bg8+.7+VA.NQJ+6+iLN3A.G3.oL.znntfGPVfo7NvChXeEIQ9ANQJ+6+afD3A.G3.o7u+SAxfGPVfo7e+mU.kCf5fSjx+9eBmCd.vANPJ+6+InJ3AjEXJel5lG.pfSzx+9+.zBd.wANPKi5KfGPVfs7e+WEEmafYfSDz+9O.iBd.1ANPP+qMfGPVfA8e+O0InK.IfSDy7xI3AHG3.w7tQCN.YwDKIO5RQ7u.+u1T+yv+kwO5CLD.cgBQfavL+yv+qcH3FLSx5C...Bv+L7Oq+GvL+CB..XAHg.z.+uv+ecp.fPiCfzw+C7udf76+rN0QW..Le+OcU+hk.DAPl.DE.DC3KPA.x.9BT.vLfu.E.PC3KPA.0.9BT.fMfu.E.bC3KPA.3.9BT.PNfu.E..y2+CGOfWPz+9ObQA9.T.fLfu.E.LC3KPA.z.9BT.PMfu.E.XC3KPA.2.9BT..Nfu.E.jC3BPw.F.vnKERjC.F.kcz+x7eqLCvLvTye+2JyFPCHnTzXn81+g8eqDmPP0cVcyQGHwfCKasA.17e.+2ZwG.iK43RLxnfJfeB.z3dAu4FHo4VZsPB.j86+gZd.i81+B7eqBC.M++v+sJbJJAtAvTq7..BIuvB1.LCIRBtAfL.UI0TQfGvG+qv+r9zAFUTQDITPCsDPj.jPfmvXfIDADUzPAkEHi.jHoX.3GTV.U4D3BTFJaAtAeLvTY4zPfvCnkFfMJPXQ+qv+oliAyHCKhPUZs8+D+mJfHLyLrHhQkUFYh8eE+up.GLCMrHxQxElc+Kv+3KA3K7F.0.xa0zH.hPBofe.s.XEHyOvWMkjS.MO.2.i3H.xdqElatARagEBuAH2YkXD.2AjCGv1akM2XnUlaznF3FPOf+.PP+8evO..Nf7yMg.9AhD1ECHUPNcze+e.6B.UQRAzZNDCMxfSM2.xd0AGHz8FH3.BVfGvM+Ov+kt1e+2Prf2fFe+erQY.H6QGZoMGHfHv.zgVYf.N.U.vae9epf9+A+Gw2.+K3CPFvyHTNfGPH.TR9AnDAaEiL3zEPmAxWATFawrK.zEhuhzcAfzVZiI2ae9OLa.vbfCwv+Cv+e3GPAAhofH.PIUO..CtHoBrRfTX.zEVH8bvbkQFHl8lbf.xECnCHLE1HBSvTkQGco82+SMH3AjL3Crt.gIGcxv.3MrgPjzBkgufH+Gv+ELI3M7wzSDDF.n.3NnGHz96+Pn.3NPl.uwFYfi.PAThT+8+Df96+mle3BfHLbIPcgwVneSxVFTmazwBHlI2Mh82+Cjo.x.iKib+nBE.HmIBvfK.Gyb3e+WP9gj3.yMFagEBQhPH.wTReAHCLgSPwATBUgr.XyAd.0GPIVAd.SDfBInoCE.xQUkDHs.D.fSfOxDvm+eFgE.BIO41SlcivHeE.n.HDCvhHO4VN8BhFirIHMARVe++oPbvZt8lXfPBUoIxYBfRLv72+NDO.r.Y8+9unznSRfXDPf7+.+CphAzzTffD3.Lxm+KJVfVxINQEvfqPYgCfIAfRL.gF3KbFvh.9.qMhx.LDMdBJboJF3.fBg+BfK.gM3H7H3.PBHSBhOfqfj.cM.e82+i1j.ffRKg3J3ObI3AbB3XjI3BnR4GPSPrENAr.ndAvBHf+PmkzD3CbYXXAN.kGZlfLB3CL4u+O5qfCPIgCvl.cB3If1.sUla0UxNGjmaioPBgQFYf8vAekFck0FJjLGHTT.KfHRayIBf2.dCdPvcn8FakARHBQC3MDx.nEFalABH.HSHABdDf..Hij8.vwVYzABJ.LC3Pfh.zTlbf7A.z.9De.t.GAPMfCwIBfCcnAxQ.XC3S7A3BbD.2.NDmDPL1.FR.fC3T.B3BjD.4.NDnLvLx3FYfH4e+2Bwg2.I.EB3BnD.wDdDuEfMz.Vk.DS3Q.GPg.9.KETbiG.G.TRP3KvWz8lH5Pfau01Vw74+mBwHd.xTgXbHfFxfg3CH3CRDf7..w.hB.HCHQfBbA.BMfLA.1.xB.jSHcQrs.jDIBAPK.A.I0RrdAPRXfKvB.HF3BrfHGBN.iHhgA.2WoKvg.BQ4BTMfPjt.lAHDoK.U.BQJEAd.Vw9.1W9AzYzUzfO.uAdBY.fYkNN3MzwXzCxslfG3LzyP8AdCY..Ql05u+qa.fefi.xA.YAdC4LDsfSPF.nv+G7ene.Tk4DVfdapP+9unP.PKfAPHP9uA+GJ0.gJ.r7OC+C51.wDwuBvLfME3FnS4Az1+L7enwAjqfvnPUBtA3HvSt8lIiZxDi3Avm94+gBAXkBDo+iv+fl7e+i3j.1OH0.tAe..JgKvwfuPGgWvxfuPHfwd3B7L3LLRIQAdDAFntgdM3K3CffD51fu.HAAC3.7E.J7eA+mny..ye+2GBFEK.vLhYCHWYgQ1+B7unwLvW1ElbgePHfyfHhGP6f7G3LDR3HjB3LTR3JzB3MbR3CDC3LDRfTDd.0.tDjDd.4.NCjDtA8DPZlENAQDDPg9CH5G9BawhX.jv+.7ebl74+PLiNB3kO.HSQuyaQ+8uqHEvWvExacqY.PEz+H7e+HzSP.D1+D7OARAdI9jxSf..XC4lO.L0+D7+AACNGABt.B4d.iBNMFAVhsPsSHCdMH4l6fmhPe9eZ32F8fqRO.DSXN84+dhM7LHBPPFB4Akp.o41XgjePz5xoe+uArBjB.j1JoAfBhG.I+8uAFCRJhLx+87+mwANDXJhthYaZkKdGAT9.vPiT+aw+eF2.oYFHnfnAF1LPv.7bfOBciG.g.ID.rbR8gPGb+FzWAwE3izD4A3JPMA.H+8eChL9BW7e.+W.2HBDTH.PINVwu+Gb0fKvOsbAnabrtfvNXYBXO.LCP8LPXhMGJ.5..wzRuqbHX1jtAmTEzf..fm..M.YCJ5BB..BA.0.t.P.fXfGvBhQiObAfXhTiRd.D..Pxe+KBv.xC3..B.iABH.DiR5CF..NEemAhNAl.PICdARF.IiAXx.jPXPC3L.DSHHCXBGkHf.vDKh2gQAPxXChS3ELLH.HTL.UbHc.PJf7Hfg.fTwOPiWRS.f3CHYWHc.B.3grG3T3EXVRFkhGfVf.f3.n.P..dHpARnf..3OLEIELj9.BPHXNyw.Xyd3.D.g3H3C7.3C.XPiHdAIELhgrMfJjjpfB.nP.TSf2.MfaPJhE2RJAJ..9iX1sDU.B.3DrK3Dv.YkCvXfREPYHVl.dCXa.fX.tA3EnAPRGR.BLBH1zTI.AP3gPFnfFVYhe.T.cknvB.MhexTfGRffmQXfwo3GXU3BLM3grl3RHUPRIJTfGfBfGPBfGxXoafqDk7HKBVdfg74yre5ITNXd82+Fz1PwijXEBdXtfNLZ.xYpCPIfCQXn6xLmKR8gCfehs+Q8CTDiNwIzy1e2R3+H8OASC.IFkN33vUXGVVCktGHXAfYtVLdeBdL2JdAHApW.8U.TklKjz1MDcK3w.FX6Jt.CAhXBAFQJ.3YhLR34.h3.XD3G3ER2BNNdQ9.SCfBjE8bRcxeow6PVSGDSdbPxOxOCrjSOIzm+eKd0IF3ATxe+CKUfCfI.0RIORZhfegRzNA3AbB3DvT31TpvgA36mSf7jvAPjd3K.Yvu+GQy1.KAi8lazI2e+KqYD7jaOYlYfXxJ3bBNhPzXjMxbGQw+l7+1SEDBn6AxCBbocPhtJoIuAn5l.AaYVRtBB.zFfu.yB8O3osrPM.pxfc7X8.9FFK9+RTozLGdZLCfYEKpnaFVzkW.bCnPBIjf9F.KKzNjOoPCv4VzJGgo.nDSND8MAnjSNojxPQBDOI4kAo41WxElamMRZ.Gi.rHSMHYJ.o.1W.jfl.BNCWEfL0.FV8GPkpjL.VURqcENXqUBofLAHl.TbfCfF.kGowBPBfWfW.bSIbCVGDpB.I.d.HLtI6AvW4sLH.ShOjKVSChuo3SR8gPTH9BB0oKgDaRe3A7EQ5.nugnyMsAxP.QT.nDCPFAhD.YP3BvEngDDX.kQ3uLyIGE9Zs.hcgyvImCPjf6xyGgKH6Hz2mSOaha1+gcGJ8F+AdON.OOtDFGfBu8Oi+m2tgHz+A7O.MRzR+9+DkDPRDARF7v5e+Os9mgGImUM+ATETGoGHf78+.LFPbjdHeEPIE82+SfnMBYymmOfwp7IIObk5.rGHMI.HVU1m+6bG..BYsmyGB8d4.7LHgjtGD.tAuYdAjA5b..i4CTggS.NA1XpcfaDcj7tI8TxPlqBYlJF3OrpgqIblgFUQ7EN.MUXlfuP4fGi4BcA.echHW+RHcUjsfbdHXCPJfXPoOCj7k+Q7ft6.tUWah4C9A7lY+9u.kBvbh.A5FzA3Krb3IEKHUGBrnifafZZc.92+DHMHeJDrfCCfsG.V..xe+KRhj3k8.7p+.XK35zkUyaVhf80+D7+6tCLdhXFXWSVBgufYfCighAyZCKhJ.JO.RU+.NgRYA4F3DTYHILy8jOvdgKi4fuBfAjxKhzLRKNLg.jP3A9wu+G+ahHJ.zDdcm.JhAnBMA1RHi.ziDCY3.ji31gEKIA.Q+uv++qjHMhuAkINLhOd.GmoNhaVtfaV3A1dPfyJ4FeJ4T.T3vv03D36PUJB9.Y.H.FNAmAdPfARzflsPQ+4+KLER+6Rbf3vRxq2qkKiDrCPGhP34CzCvYChYgG.SfwV3QvEPs74+CLQ.lkFH19+A+ufICXVZxM2+F7eO0BPK.AfI6Bz2FAGH.n5D+Cv+fzIXHBBmgfFPUFPI1UiBlaPE.sKHd.DH6.sQ7FBjoC.zprTHt.PBBuA.I.dOn8e.+6gsfevZ.Hye+WgIfGfafWfhf6.3fAL3X7MPFKt.QH7FgTmHxgt.MD.HxD1TAEEHXndK4Rd.IAz5AQEPNQtRmVCuf4EXeUd.f.fPnOYDjdF.IPtEoEdL8QNApE3hnWgpmFvHt..MfXI.J.x.B2A3.v53GfL3X0oHqatYuC77g9I3GD+3vvP3D3HQpExY.YPHcIPZlgB3DXFIARRh34H3H7GXY.xLfCfokTxUN76+snd4Bf1HuAfBfn0HP7t.w7DEt0L.I82+MU22+ySEfPB3CXA.j78+QPAQ4W9DrFN.jDPcx82+diHPu.N.L.fLf7AXcJDS.E.XLBN.p..OlwBHkBdAtYTP.iCPz.h1.f1+F7uPv2NEFABT.IE.g82+PnNPOF.brwBB.gN3.P9e+2hf0.vquF.KfP0C.eIH+fIr+Gv+6oIfKA.K+qv+sDHdYCNBn7uA+OhOfGQT+av+sjW.qPxYNBdDu7uA+ORB.gh.6MFZV4R.eQ2L6BN.oB3QC.BKwjRIDGTemO.5iKyrmWQ5TQO.j.Vvf.mLZExa+8eDYBjofDA.6cNCQuvXu41bkMVczklckAxqo.PYe9eQN9DLf.fPz.B.gCPqCZy4gz7Hx.Dff.v.kgWZzAlThVKH..tMbc9.AedAidrvfKvZfW.Hf+RzfA7nWA1BCJFHJ.h.fCvyjKfAjwFZV..cnCg8nQOwwMhi+8OC8OUQo0JPY.DWgCfMfe.HfrL3CHC3aDGPOAz.fCPufoa4vvE5IjF.I.FTnO0Z.j.XgYd.dhNAsAPBfww3yr1e+ig0bMeHOA32mWQuf3G.o714B.xHfvN.JIZ9gqfrgSPr.nB3skZK7AN.oJDC.A.3..QQ5FNa+.ZhhGPlfrv2+ml5.jP3nYcpTBskgiI2favqgSn3ftoIAEK4gSf5.j.P..XDgKv9gGf9FtB4vH53d.cIKo9XvSdDxPNAf7B..fB3D.A4aES3roPHQPN.BJHCjeljfyl8.pt3Cb+Z4BjEiCP.CAf383ORQQtBIKNAgIdBx0tP6ENBjGN.yCzcfGD4A8S3BnTHBMdAF09.oCBgoOPQf7ePl.9ABEd.WFjifSPLfwzgwqr5fGPKtyvG.j.XDANLt+u.+WPlnPJXsFx0.zym+ePRfv2puAHgf.QiV2ly+Ov+ErJ.x84+27D.J.Fi.ThiG1IafrDPUAzz.xDfJAXJf2jsfWvYuOfNg.YHL5N.mDVnuXy+Y7eL6C9.qCPce+OLW.RRe9uArGxEfjE3gv7+d7+K.94+F3G32vk4DPaPJBBV.X12+WfBfaCt92v0f.VW0+6+CTa30nAX81+CcCDZuLCHECtMj8dCT.hWALUduL.323E6AjMTWO17.LGPWIBifDAb.9u5+qvq...f.7OC+mxYAPy+f...H.RH.XHHC7+.+WQXA.BLfCV..DC3.jF.w.R.A.yC.k3SO84+UjqTiCvv.IwvJApEAHSMfSf.AfiLfSfCfaPGfmlC.jC3ALGIJD.Hy.zf.7GPFOd.vBJxgG.Z.PC3Br.3KEv.x.BL4AlfinL3HvG.y.NSxAd.A.Be.vGP7A.Qw8xu+uwGg7N3eEf.y.RLhYDf+86+anm.fDiMfOp..LCHAHPL1LVPFUzKgNb3KEzHKNfA.fEPfj1.fA.x+7uL+uRpAPCH+9+JolPMffBR00VXtkldwfFBAUGcn8lb5.hS2f.MKWQRtMGcxUWak4FcyovUxkFczUlafHVdf3gDoM1ZoARSgIWZtk1Xr.hRuMWYlAzLGPWYxUlbffhafl.CsL2XxkFbzAzckIlKjARWGzzajklYoUFYe+e9wUfLtQFKfHy+I7e9xAPL+Sy+qzJ.J7O.+GR4UYI.zIycEDjUEQzW07+C+uhq.PC3H.ipRD.HIjjK.LCOFSyb+8uIUCJTGDTSOUkST80T.9A.3.NBe.vTf3A.DArG.jC3H3wYQCvTe9On.F.Mv.xqWA3+K7uJ0K.NrHxm+izFe+uIBB9BjXPNrHxTuUma+Ow+2qg.z.CKe++JtBd.Ll.IvElbg01WoQFdfKvDBblbvAdAQLPIiUmb+9+OI++A+KRP.kA.yATdfu.FFcBXWrxKA2iAj3VY28kcg8u.+6NRFPhYgMFcuIG3BHB.34infCvK.jG3Cv..3cCjfGPF.HCHIiPakM2bgcVYnHRPdHfBf.RPFMvZkk2WZmxAyUGbv8lbzgBR0gvdCUmb1U1bJjveoANC..fBf.0HF74+Y1iDi8Fa00layoiBILBL5.BTuklazMxyIzTXiI2afXUXrUmJ5GvHw.d.X..TAsD.kIh+fC.G.HCvb.fLfaPM.LC3AfA3ITC.z.LG.LC3FTC.0.LF.PC3GTSNbDrEAIIHjGvVz3hYe9O6pL.Jt3hKgjA.f7e.+iT9EzWBxTCKfXx9fP..0.DA.LCfN.jBBXCLr.N.uXzhAzWBfxBPh.FKhjDP6.TA.bC3CvR.o0F3.vB3.rBX0.3JfHG3.f0m+OWZfmfg.MEfsH.MvjhH0.d.Vyha+Gv+pPX.uYVK4DT5EPWY3QGJjvleBvhHO82+2+avG.BLJ4j.fPRX+8uPYB.He9eVtoCR.nvNRAnDrzpJcCd.GAnEAvBHia.b.Yzu+WQQfFx+B7eEF8eA+qROfoxm+mhDsDEns.vLJ8M3HX4X074+IXI.r.j7fgIfT.9AWBVEfX43DHNXp84+UrMfe.tGTBHKfyfjC8J3GDIXS.9APBDEf7XPwOjcAED3B3HXc.tGMB1J.wX3ADh5CfNY8.t.Z.hKir4gZA9Aa78+CHF3MzAOUAdD4Lz4oRG3GTU.o0FQ9HxdEXlYkI2Vz.Bi.z1+E7uIr7OA+Ox8hvE3H3A3CLK3L7A3BjI3K7A3EbM3LDB3B7KHeDxR+Ov+mDvve74+m..3Ejgng9eB+iN+BeB.yH1kfW.Mf.c.kwxm+ittBW8+b7eJtUhSkSf4D0koVAt.IIDUfmPECzVX38UHH.dBXXjS.AI3BDDPR.xJfaPDgXF3HPB.uA9Aj.PYeE..JPBHhJebgGhIxD4+F7OFqHNAkJ.Ig00afCPKifLIQ4kLfPSHJFU4fMjIo9OC+ahQjoK.e82+iT.Ht.NCh.R2hCPtfCwHhWvPfyvQgHg.uMVZC+A3OjTHSLN.K.xHhrzLoC9.lBvVxwLXoCzGgrAgcDtDqDtBs.5LOZ++c7eFR84+VjZpVxkSfLG3i7C.0Dxlkrl.jDFKoCvtfWSQoFN30PjhG.tJC8+.+6Aapyf0fCvT.jlvMJt.NBlBz7m3brdTqNuHVGBXqKQa.YYbyCPB.B.HVdPB6ITPTMCHIUlZnnLHPjPPvI2a3kVagQWYoN..C86+a.cZ20vbfHVXyUFYf7laf7Fajkd.L74+AjV4FLqHuJRahaf+CIKPnAtAq.PL.tx3C3D3NjB.x.ZJiK.mf6PJ.LCfoL9.XATJfTNP.Bz.JdoAfv1ausVcvA1+qGvk.sKQRMnWnP05.DKIS96+k7ZPeBtAHCd.l.PWfbB.krhoJMA3ATgRbH.Hq.xm+Ovzf.vJyAVZAj.H.AIHO.Pd.9.nM..d1MB3RXDnm.PdfKwI.NB.k4O..BdL094+D.CP..psfKAl.CMHaBVzf2fJ.tIHj.tEnCvLfC.JfOQ5gf0m+62.fOf6fiw6f+vlfzze+u6g.B.3WDO.y.d.wCBofKg7fXEvjBRJfaw8.TCv2CxTgKg3fLURg.F.gG.5fPifcEdC6ABMfOfWfWgrfCfWfLEXHdRbfBGvZBd.QbTejLNHZ.NAK.pEfcw3RXCIz..J.0N.s3zf.jxHvL9DiABIAfmLZsC.n.xAf0.Hx.vJfjiSiBB.kM33.nqY5BjgHtA.IPh..7haaR9.C.lEOpuKI94+f37K3LPckARXkC.GrTQ4Djv+A7OBIjDWB.hIfzHZ.dSgcj57f4M3FzeIo.vJpeP7kDA3HLA.y72+NTF.y.Fn.7B3UDJ.o84+k5AfLy1uf6yx.vRI7G.a4Eh2..Bn.tPZyAhHiwVZvAWYjIRYCAhFoPXioKVElEGPz1t.mA.JnDe5DbQQZFxuBq5H4Ax+oPX5B.F3FHR.wDCniT9AgCt.FAfLgHiPc.vLhXjHeB.L7P1SK.hh.A..n76+d.M3FPGHn.t.BArYfWPEfC.V.sz3.HWijGj3iwgPoM3AAr2KgSwfgSPqKgX3.vZAiEFaiUGafEh3ADWn4ILmBPVYxQyK.P1m+qCnDPGZkAxafP..xAx7GMpX6GEG.L2e+qirfjA.frxo..BHjoB2..hYeFNB0Zd.3BPL+8+XMBB.ibEXVWp0j5BXkCxFjEQvEAxL.JC4EDK.wT3vgCvJhOfIfK.b+8+vvBD.fFG3BTEn6ABVfsH3.jAfXAxEfavgDOK3GfHo0CN.IBPBfSfhfK.V+8uuOCF.fe.i.PC3.vHHcAdAMBZWffA3F3n4Avd3FfA.2D3KfK.jfrC3EPE3BrC3EfAv6.RLgQnHkBrr.VF3..g3AvH3Bn.nT.jLM5aL+TdB+MbykKAafTEPCDVRh7EXHEjRoevokEH7Az8HfKFhMl3nfCN..UD+f76HzNZefGPF.wV3..7aY.1sf6gSfCvQfYzHwNboiXw3LrW.8o.PoD0as2wLsS.tNUJXHCD.qYZ6FvD3gbUvIBpSf7P.rPx0PrD3fWRovxVInERYAwVSpB.K.MU6FHF3g.JjkBtBQ0dAuAdHP09GtILCAGhHE2dI5D9.FIRbgDwfJU5z+ah3gbY3BLDHOEjVi.DHVEznBFK3oLU3ATD.I.tARIN.EChWCr2TkQWYoiXgnQYIsCxAiwF5G3I5BrrQdXXWAvBHFFK.l.DM.Tl4BXjQsjd.QEzY.EcZPQRJl4FVEWxzMVBYRfpCkGv4fK.JW4hX3Rxvjws4aPF3F7CHzChODFuwW.dAhHjjfYhvn.NGXBRM.HCnbBbmf2fWlCvCka.nf6.gfbRguBdCMAlcfMMHOU10fCwIlxO3.TM3EXM3RfC.z.70fnXX1ANDhAfLfC.2fzH3UnBnMBBJfag2GuIHQAdEeerSfG.3frE3UPH3BrE3UfBvaARTfQ3nbBB.fVI3..w3.zE3Cn.nTDzolC.TjXG6Fvqv6aRur+PpfTEPC74+LEGHwLN.DMnE+8eSYA.L+8OQiAjIfz1l4BDaD1IXV.lIfwD3EDxIgwl5.BhZvBdAf.vbbcDPBADz.RHPM.z.iwKnsAfOijIfPB9.sCN.KrRqg3BPle5+FAEv6T1S.AU3.XLvk.FwfFCIJHPXhMG3..moVBd.6XhpGhJ3BvIv5.fOAwJ3I3IHRBNA1AFz.OC.7.LzfSPifAC3BvF3AXGPI0tA5Fd.q5Ft.qEPo.z.tmfe.0TYr.hGfHP6KTfHCAtAkA.LDwP6Ir.3IfBYhmdBD.dBnPlWsmPNfm.JiEMK9ZtUQEhBgsx8EvKPWvYYmahJ+2w+XI1vZBR8nKxJfavVn2vMCR04mDN3FnE5BDz4F39XTCtMcgNDKAfB5GfWjrCJ376+I0C3Bbw6.r6.nUFavANAY7JrfdgPsevatofBlUmai4T4NBG.JLlgF8ltWAvVe+O.7WeDzXTq+nTIDU1znMBHNDS5.9.nMTHx.oU8Ib2HDABLfDSYrCdCiPDcfbBglBBKj.G3mjJHBAfL.2JP..Zrf2vamoEXl.B.ftL3MjBHVATl.cBP..NEoCxJ.HCHECFJf..3WD+PiCzIfGP8.A.3RjO3RLJZVA1OfB.3T3OXn9z0.2BP.D9EF.rq.CP3Wn.RO.N.r.B.gegCHYAPm.D.gWfD.A.3W7L3IzlXfFNDTC9.sAD.f1rY3BFDfB.n0BNAWLjWGEAPi.7Bfd..JXNASitASBDiimfdnOQn.n.5NzIZzgd.ad76kDEXiglViGP2.n.nvfVofevJjr1Kq76+ET.3.nBZuB9Ap.NBVAD8Hma.JjfP4BrLHW6wYBjlfCvBnuwrBF.3M7C5S7JPRFzlFMLXPhbcnCPpfCPDgzRXVCpZfSPKHOJ3CvBIrCN.dApYgWwm.MH.Ibh60aPbAuFP.B7WffRXSqlZnafbfOwKgIM5FjG3S7RXWitA.BdCu.T3gtMPJXrR.nv+.7OLfA.Hf3A.z8+.+aPe.fxu+Cxh+8+GlFEEAE0+l8uDWDRoJ0H.i84+evkMhJhje9uDYJPRDwx+C7Ol0JPLcwxm+6AXfpxI.8DRfyvJ.HCvq.tAPyi5+9eKw7u.++3.fCPPfKP9ALSWg8PXSIFmfm.RBC2e+2GKAjlaf+vQ.wcPNBVQ+Wv+RL++C7OeRBt.0CRLjPYniKjbfKvkJANXJZCjjm.l.LR5i3InfkdCXBxf.j.3ML1HCptHC.NEjA7XjaPof+hXpKPAsrf7DbDXJWdA2.9Kkod.M.9Ajwd.hCzV.0Ma+FR1tCvohPSjriiq3LaR7EBA.jvZQCN.jDzdBECX8Lh09.YU+EN.1G9AtDdK0G9Cs.TeA9B3GbV3tjO3OfFP3Cd.zCTWfIQ3EjA3E.RYqA9DfTFKfS.HAgzX5EN.9HtAFDdK8HtCEDd.7.tAkEtK6.tClEdB5XVUfy.9AC..J74+qzNMY+2+qfLMcxdAzBjnlWfkjSfcnbVPAAtAyH.OfTiQ1DPBj.jUj9HPHA9Ambig9wG.0.htB8L3KHC3GLC.s.zVfji.nPyMfr.f+DaNfPGW0CPLfTO3A38YXFjc.AX.xE1m+2Li2TJ3CnIHGZSqgTJ.J.XyHoFXxfxZfTwe+mwtfGPEfDAndEJO.XEpW.PKf.PH.AxbnCPJMdLP5g9A8D9AFcnngHB3FrCHsERvirtZk.PNfz..IDTb.lLAnDCKyjxIq72+lHaHuADtf7CHuAPBl96+.7eKClxp.Ni.ffRKfevX.vh6HDY.uHym+yi6gVI3DnE.f.tAZAjjgBAHn.x.f4J.w.1qAkMH77eA+mvAf3YPWCBpe9+AYGJIgzbdEE.JxLkA.sPHYCPMftPXXKhIfvD3APN3GjH3EPN3EPG.r.tAOH1Pfivfhk.H2IxC+8+GYFTefPGXQ+e.+ymbfMA3fTsHVBxUBfxMx.R3.HCHK.R0f3EHL.BF.YM.xP1ufyg0gnK3rTMHuAdASCB0AIqfzIjrEr2XnU1XqgGvAe4Ps.vYd0M.JHVbfC.niPA.x72+HYM3.DQHIBhD.JUQUIDnfC.G.vyfCAN.O.DKfGfJfj2P1..UoTKPGLnOoLb7AXCPvrdAHM9A5.lafWvLjCPfBwBHZLNA8SPKxTCLr.x.AYI3EbCHWdhU.n.HsBDjjOPtfe.Xg0aPVGhVAsLXNENBYKl+f2vffOPXjzHHhBpa.UE3HT4LKDBVgxhlVFpKf00ReDfN8DDr+8uzqQPK1.CK1.l2rWPHge.Nf1i.kYWYCR4+P7+JoFTQhXwe+uBp+8edlrJa.cWfoC1Pqa.li3Hf4.vafjSQHAZMg8H3OXC.x.N.1.jI.dSPfCt.6td.ttFYA7VckxIfCBNAnrnqL8MXb74+RIIPMClCAvxL+8+CDGZW.YPqW78+eDQ6UnAQc.tFZxtDHAjbgbMPF.ZdATWZ+Sv+FMP.uY1+p8uQC.lchrsPZCB..vRWM9u.xQVO.qK.InXo.DVIn.TwJxIPI.9BOCPX+8OAVChJ+Cv+M3GXu.BFi.6+F7uCoFFV.bz+R7++FGF0+yw+SYNn2Abzf7P.rPh8CXG.ITjCf4aHKBPBfOBzqs.3n8Ln2MhWgDJQtvD0.vBPUut.TAPBfCC0HkO3pMMP1AtBRqd.qCNIQeSUHLWZyQWYtMVYeQnc.P1HMKBZkXB.v.RBh+.dTofPYIvZkk2HHJ.auImHb1.KjrTQY80POwzSR8URN84+w0..o.DJf0RakJx+TJDXWAxBfH.3cvV.oY1e+6.oe9eFdzB6frDArPhSI8kX56vWPEjTe4TUM8kVO4TQSkxI5Qxb.kGHcAVm.47S2AtD9.1sfCPM.HF3ZDy.L8zUeAR7fCvL+8eTJCtEkM.RIcDRfO.Mgc..n.ha1vd.jLFvJENBaEfXr.3wfG.Hg4D.hA7CDkDXJAV8.0vHhBhQ.ZR3FTG4FbGA0AGYgQGP3DdGHF9+vV+HqwK4..x+17OIIYt.imhxkrEP..BWFZK31vk4C.GvcAxVlED.IvuMJVt.1ChVF0fJeBxuf7UQUA9MdUt.BBNAcMjiGYN...H.+yv+jvP.07OH..PAfDB.N.x.+Ov+Gbs.f.CD.EAHetj5+8uEJI.HwTCPC8tAoH.HyTCfovHE.lB.z.XOpj0+.7eE1W.Hy.iS.b.HSE..A.R.D...x..bfTf...F..0GB7.vR.jF.zAfOfnAAA.B....PzBjl.L.HK.NA.X.X.X.....Rfzh.nAPXfDS.yA.Hw.zS.GCHg..AfDB.BARG.LGHA.tAcXvL.XKbG..ff.xAATI.Vk...f.HJ.zK.A.3GrP..A.f..9GW.9.GA9I6.9Iu.9XqA9vaB97KC9+jre3+S0JgO9V.DfYbBF..PBHFDP.G.BAFg8INFP.kXx6fHA.P82+zAOPX.F.lvb..9CPC.lIf...Y.BABfA.S.RAC.fj.fGHE.z....Xj.RKBTB.MAjA.RD.d.hBfA.3HPD.n.xEBvD.h.RAM..D.rGEt5SOJb0OHJKSfjFHbDvqg.Rh.UGH4bRLBTB.6.TB.NE.Z.hBfAv.APvVWChKfG.lAXA.Gc1Q8CBAFfT355CjBWAXf.TPff.vAczOfA.3HTIPaM.H.PA.f..ZMPvOMyLy8.TCD.PyLyjOfbH.CAhBfdX3Q.BP0C.FfD.H.Hfj.7APF.FAf.f.MyLyffMHBAPIfvOHF.Xz.zAHJ.F.fivi.bBHWHfQ.DBHEDxmFPyLy6yv0iBPHO..pppJ.gDHKb.f+D..XTTH+.hT.EAnREvF..J.fifTA0K.CEXuH.A.nYlI+PtdTBDNfnDHsHPI.nIPF.3k.r.HJ.L.gPDHCHr.FTG...vE.7FHED..QEd.NAN...HKfOvAADA..A.3DLA..AtAO.NAu.dDa.f.fDMP..xH.mP.+B.X.DTBf..fiBlBfA.PO.fRfn.PBlT0BLF.qEx3.bTJuBvao7HAzA.U.HWJaJPZ.3FHUPPL.HtSRABe.A.HfAN.FAf.fnP3.7d...kJhHvN.blRKLRMBz..DCxDAD.fgfJHF.x.JAghoA..fPT.ZJfHPBh.P.PQNY0WAgDQSI0WV8DSU0TQfHgHaCvhfTTJ1Cd.c.jZ.APPbAvAfXIHk..jfP...jN.gAfUfrf.+..TfT.HRSv46mpu..RYDb.f6PD.f.fBD.zfDE...5S...P3DXA3bv.HJG.l..xa..XYQ.hPqs.BvkFciglKF.nOfkL.M.RE.kLBDIDQeAURTMDRf7.HFC.ifXL.G.hBfpAvDCPRfHA.GHhafLB3APLPb..LfHg.AAfJfTPHBQvu6knP..jnfQL3OnJPdNvh....f3IPpCjmgqPZ.7.Hgb.SF8zWSkjSEENAnAPifD5P3CLG.8CP...NfT..HrR+f...wADAfBPX8KT..gF3PHY30rO.NBhjgqy9AZCH.Dx9..PH6G....NDvBdDY.hxgKCW.7HHIG9QbA..fG..BvC.MCTCivF.LHF9lHA.AABD.Ih3JH.PRP.Ot8lakERBMUHOSKZB.CCP..fhfHKv..hU.3DHL.hU.7CXF...hG.9fr...HF9fOPUAQKPUMF..4BPb.D..HbyF.NF...NfzFH.HfR.L.PGT.D.z6MFVC3GLfAyGP.738++Azj.M.X..xH.XCHI.zCfOz..C.3.L0.8diA2.ZEfCvDf9.3LAf6++++++++j4uInAx.A.PIfNf6z5e...PJ6Cx.LAN...B.t+++63O.x3tC9KTXM0Mf.39P9GPjCrXSNcyab3DG.Af6k5O.RBhwAABPF+RF.Sr6B5O.SBRnseTntLC7ynO.TBhjMkTPzDtL66td9CPkfjb3Gw0XE.H.tuj+..IHxBL.tCj+.Lr6+++++++++Gp+GcO.lbh9.Mf6++O39+kZ.HgHxCvT8LN.g0S6.TVOo2eI++dT..vki7X65PP+28O.XBhwuWI..jIHg19Qi9tM..flfHY35r+65A..aBRxgeDWi.Kv.79R..fkfHKv.7NP...wu+++++++++eo..vImnOPC79++++B.TfL.L9778yHc.B.rj0Hg.x.f.v6QA..ctxgsqCAueG..3IHF+dk..vmfDZ6GM561...fBhjgqy9uqG..DJHIG9QbMzcfBv6KA..bBhr.Cv6.A..E+9+7..v.HDTA+DPKD.P..H..s.v..9+++++++eKKbx5.jAHD..IfNv6zBv++++H+yA..fhHtCD.teF2++++++++O7+FdCL.Ngq6+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++wbG.L..3.+S6+VgN..72+is3+++5+ClNP.D.f+.dJC7OK+KI5e+uUnC..fIGP..jdBEDP.7eT+WVwAz7.+yy+ik7+28eYECfyfX7+U9eYECvyfDJ.HDBy+K3+RZL.PChj+26+kUL.QCRxgeDWgrJv.7+R+WVw.vLHxBL.+Cz+kUL.M+8+UgI3X.v++Ow+RZLv.HDTA+DPK7++++++++OR+WVwADC..Nf6++++++++++++++++++u1bCfLtvMPC39++++++++++++++++++qM2.LiKbCz.t+++++++++++ww8+C7OCKB9.K7+.+yvkfuwEfuwHfexTf+vKfO1Zf+vff+vEfO4lf+vrf+vEfO7xf+v3f+vEfO+9g+vDf+vEg+OIqD9CCA9CWD9ra4xy.D.HD..JfNf6+++bb+OY+6LWAPD.e9O1tRfT.jF.s8uC+CqV+e1+RhG.gPhQ+qy+YP4+28+FPBfHfX7+U9+FPBvHfDJ.HHB.+K3+a.I.j.hjgqy9+q2+gVE.k.RxgeDWgrJv.7+R+uAj..BHxBL.+Cz+a.I.iCt.TAdE.7++S7+FPF7PBAE3CrP5OfH3ObA3yrC3OLE3ObA3isF3OLH3ObA3StI3OLK3ObA3CuL3OLN3ObA3yue3OLA3ObQ3+SxJg+vPf+vEgO6VmrdRwAPJff.PC39++CN9e++uWAvP+8e2KIfb.Pl6Nv+Af.PL.Pxng8yHc.B.rj0Hg.x.f.v+N8uJQBhWBj8..z9ND79c..f1fX76UB..aCRnKI06BB..bChjE43+49uyXAP2fjb3Gw0Hd.L.uuD..fMHxBL.uCD..LMxb.NF.79+++++++++7A..pbBn.Mv6++++K.P.x.v6mA..quxgsqCAueG..vNHF+dk..P6fDZ6GM5+17+uWAf6fHY35ru+5E..uCRxgeDWlLJv.79R..f5fHKv.7NP...0u+++++++++eo..vJmnOPC79++++B..vLuiF..b6JxztND79c...tfX76UB..4BRnseznuaC..nKHRFtN6+td..vtfjb3GwkIiBL.uuD..XKHxBL.uCD..TM3BPE3U.f++OQ..CfPPE7S.sv+C7+ASBL..cAv..9+++++++eHKbx5++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++Z8uyXI.P...XC7+++O2+kkNP.D.f+.dJC7++++++++++++++++uI+6LVADD..Nf6++++++++++++++++++u1bCfPtvMPC39++++++++++++++++++qM2.LjKbCz.t+++++++++++ww8+C7ujPA9.KD.P..H..f.HG.9FW.9Fi.9ISA9Cu.9XqA9CCB9CW.9jaB9CyB9CW.9vKC9CiC9CW.976G9CS.9CWD9+jrR3OLD3ObQ3ytkKOajO.vBHH.z.t+++yw8+j8uyXQfS....S.x.LLD.rAva.LG.kA.Y.fDHAH.H.bze++abKLG.zA.U.HG.gAPZ.7+C+6rX.D.H+.vAfL.f.b.TE...6.vYC.hCAHA.+ay+eNF.aPBT+qy+eN1+28eneA.GfXbPfbPQNY0WDIDQBDhF.A..IARA.bPH4ERP..IHDTnO.wA.v.xB.Dze+SK4gHzA+tWhBA...96m+CJJfb.X.D.f+DRcfK.C.DPHocvh....A.H.DAjAfL..F.x.QX2arUWakA...9ilB.A..7...7O.++KQF7kUOwTUMUDHQLP.A.PGfDJQ8+uf++aX.3AHRFtN6GnMf.P..MXHXP.f9....Dt.1.tGLDdMbAvGfjb3GwE...d..7+R+G5W.nAHxBL.+Cz+g9E.hCt.TAdE.7++S7eneE7PBAE3CrP5OHI3ObA3yrC3OLE3ObA3isF3OLH3ObA3StI3OLK3ObA3CuL3OLN3ObA3yue3OLA3ObQ3+SxJg+vPf+vEgO6VmrdRwAPKff.PC79++Ct.+Gx+NKF.z7OZ+CKX.L8KFMjjNkCAAgDQSIkSd.D..7FHE.vAuL4Hk5d.6.D..XEHEHvO..EHEf..Q.v46mpu..v64A..TChwAb...Z76MB..UCRnKI06BB..VChjgqy9uqG..bMHIG9QbIRS.Cv6KA..RChr.Cv6.A..RiLGfiA.u+++++++++Od.fzo.3xIfBz.uSK.DPvVW+C.qrO.+CB....H..fEfPP.BAfND...fPfAHEtt9.ovU.FHB.P.kvRLfzN.PA1HAA.X.jhXfvAHC.bPBnA..vyEAPA.f...vADAD7SyLybO.g.A.zLyL4CHEomx.VzRsCF.fiPQ.3AHW..FfD.H.Hfj.7APF.FAf.f.MyLyY4IPO1zjflD.c.RDfA.3HjD.m.xEBXD.g.RA6XhAzLy79Lb8n.BrD...pppJ.gDHKrkICfQQg7CHbBTDfJU.a..n..NBRAPFfjA.C0GDgPhAnYlI+PtdTBDNfnDHsHPI.nIPF.X3.r.HJ.L.gWvIDTG...vEsEZ..DU3A3D3...fr.9.GDPD..D.fSvD..D3F7.3D7B3Qrw+r7eN3IfR..fKqH...7THVKPY.3VO82+e+CvhqTX65HP+28O.LBhwCAwSE6di9CPifD5P36tf9CfifHY35ru654O.OBRxgeDWi3Jv.39R9CfhfHKv.3NP9Cfvt+++++++++en9mTb.7xI5Cz.t+++f6O.TIh6QwAAPAPX.PFLfCvPfLv+A7OC8C.H+Kv+L7O.f.xHIHE.SAPS.fs3i8CH1.B.rD1Ho.x.f.PTnzz4.Bv+.8eCI.hWu6CBCfzA5QDHOs..D.zfDE...5S...v+r7+BMD.l..Bk..3e+O.AfHT..T.HCf.boQ2Xn4hA.5ye+yPZ.z.HQ3Z6E7ETIQ0PHAxC.Dv6+++++mDB.CPTYAMV.sPM4.F..s.v..9+++++++eKKnBqbk..j.BB.Mv6++O3H..Jh3NP.Hv3yymSTCB.tqE2tTg69vc++++++eb4.CfS359++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++eL2A.E..Nv+z9uUnC..+8OUt9e.+SmqBXA..7++h9OcvCD.A.3Ofmx.+yx+zA+2+aE5...XxAD..omPAAD.+6z+kULAAD..MOv+77ubR++c+aE5.3LHFCvAgnxu+WF3e+OgR9uf+Koy.7LHgB.BfD5+B9OcNC.zfHI.I.hjAQS.Agz+v7egI+ud+Smy.DMHIG9QbEBF.Cv+K8OcNC.yfHKv.7OP+Smy.z72+WElfiA.+++D+OXy.CfPPE7S.sv+++++++++H8eYEGPT..3.t+++++++++++++++++++ZyM.R4B2.Mf6++++++++++++++++++u1bCvTtvMPC39++++++++++GG2+Ov+LrH3Crv+C7OCWB9FW.9Fi.9ISA9Cu.9XqA9CCB9CW.9jaB9CyB9CW.9vKC9CiC9CW.976G9CS.9CWD9+jrR3OLD3ObQ3ytkqOC.Lff.PC39++CN2.fjHtC.DfL..C82+Nyz.yA.Z.7+.+GZY+Gv+NK1.YD1T+.hIf....BzA+9OFZ7uS+uAkf3E.iQhR+qy+Yfo.fIzu+S2+glE.jAhw+W4+aPI.kARn.fPHx8uf+uAk.XFHRFtN6+ud+uAk.bFHIG9QbExp.Cv+K8+FTBfXfHKv.7OP+uAk.HO3BPE3U.v++Ow+aPYvCIDTfOvBo+.if+vEfOyNf+vTf+vEfO1Zf+vff+vEfO4lf+vrf+vEfO7xf+v3f+vEfO+9g+vDf+vEg+OIqD9CCA9CWD9racx5JYJ.w.BB.M.XLrD2C.fD.Dv+D7euiBTIfA.JGlhXfL.Xl.B..jAHD..Fe9euiJfj.fGHL.z....Hf...f..HDAPSfbvu+26n.3AHJ.F.fi.Q.fBHWH.S.HBHEvRkJrGEt5SOJb0OHJKSfQDAn7ZH9..vPAP..MU.6..HC84+8dO.Z.hBfA.3HL0++++D+qRb.XjHw.vCfLfARAPZ.PF.k4tC5+OY+G5ch3K.YRBRrqi+B.gCP5Nc5CflfXLQs.PQ+C4+c2E.aBRnKwj6BpO.bBhjgqy9tqm9.zIHIG9QbMhG.Cf6KoO.XBhr.Cf6.oO.yCt.TAdE.39+++++++++3oO.JbRl.HCnC39++Ct9NoA.NHh7DLE.FA.Vt6.9BfK77Gya.A.KQMRFfL.H.D06McMf.7+P++aS.j1JpvtN7Kfkm2OPcC..++1++1D.pAhwAAh6QhO.qARnsezlCDPC.PbHzEP..JBTfX.HC7uB+yN5..AHVDjEDDDRDMkT+Sv+rmN.rAhjgqy9tqG9.zFHIG9QbEhM.Cf6KgO.nAhr.Cf6.gO.zCt.TAdE.39+++++++++3geRwAvLmzI.+Ax.t+++fi+2+6rU.vTOu+eF+6LV.zzKf.fU9iV..T2J5LjlsCfJe++QL+eI+ytWCX3jpOzHX+NbH.fcfX76Uh..2ARnsezpuaCB.fGHRFtN6+tdH.Pdfjb3GwkHMCL.uuDB.PGHxBL.uCDB.TO3BPE3U.v6+OAB.CfPPE7S.sv+C7+AMBL..cAv..9+++++++eHKbx5.jAHD..IfNv6zhv++++H+ytW.fhHtCD.+S1+L7c.ADv++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++y9+Nak.fA..fMv+z9uUnC..+8ubT9e.+Sne++++S7+fk+8+VgN..HRK...X..1AhDDP.7uS+SmyADP.++++++++++++++++48uyVAPXqTMPC39++++++++++++++++++qM2.HlKbCz.t+++++++++++++++++++ZyM.i4B2.Mf6++++++++++++++++++u1bC.YtvMPC39+++eVb+uO++6NBb.f67Oc+CqP+++++++Q++6N.C..H.RB+++++++++S0+glC.kYhV.Mf6++++Yw8+97+ue39cb+++++++G8+ue.L.t++++++++iE2.XlIjAz.t++++mE2+6y+9Nu62w8++++++++++++++C6+9NO.m4B2.Mf6++++Ywc.ARv+77+xTCvA+a2+LbI.BBhw+W4+MCM.CBRnZsv+B9+5RC.gfH4+89eyPCPgfjb3GwkI+AL.+uz+MCM..Bhr.Cv+.8eyPCf8fK.UfWA.++++++++++Oe+2Lz.f1IcBz.t++++mE2.r2JNvtNf69cbC.efXr6UxM.8ARnsGxeB35e+Px+.M...zRYB.3u..F...XSxAt.L7uM+ycq.3GHRFtN6+ud+ycq.7GHIG9QbA..fG..tuD2.bOHxBL.tCD2.fO3BPE3U.f6Oxs.b8n.fMv.8diA2.pv.7CHG.7.fCE.CDPk.X0HKHDQ.C.PKD7S.sv+++++++++H8O2sFPZ..3.t++++mE2.bXJ9lB0+ey+qqn62wM.HBhwtWI2.jHHgtjH8KXt.nHHRFtN66tdbCvhfjb3Gw0HT.L.tuD2.XHHxBL.tCD2.jO3BPE3U.f6OxMH1B1.t++++++++uM2.nlIlCz.t++++mE2.z3JNvtNf69cbCfifXr6UxM.OBRnseze8aSt..IHRFtN66tdbCPjfjb3GwkI+AL.tuD2.vHHxBL.tCD2.nO3BPE3U.f6+++++++++yG2.r1IcBz.t++++mE2.L4JNvtNf69cbC.kfXr6UxM.UBRnsezetaC2.XIHRFtN66tdbCvkfjb3GwkI+AL.tuD2.HIHxBL.tCD2.rO3BPE3U.f6+++++++++yG2.v1IcBz.t++++mE2.71JNvtNf69cbC.bfXr6UxM.wARnsezetaC2.HGHRFtN66tdbCvbfjb3GwkI+AL.tuD2.3FHxBL.tCD2.vO3BPE3U.f6+++++++++yG2.z1IcBz.t++++mE2.D6JNvtNf69cbCfrfXr6UxM.yBRnsezetaC2.PKHRFtN66tdbCPsfjb3GwkI+AL.tuD2..KHxBL.tCD2.zO3BPE3U.f6+++++++++yG2.31IcBz.t++++mE2.T5JNvtNf69cbCfofXr6UxM.mBRnsezetaC2.fJHRFtN66tdbCPpfjb3GwkI+AL.tuD2.PJHxBL.tCD2.3O3BPE3U.f6+++++++++yG2.71IcBz.t++++mE2Az7.ryC3teG2.3LHF6dkbCvyfDZ6G8m61vM.PChjt2K2.DMHIG9QbYxe.Cf6KwM.LChr.Cf6.wM.M69+++++++++kxM.vch9.Mf6++++++++++++++++++u1bCPbtvMPC39++++++++++++++++++qM2.HmKbCz.t+++++++++++++++++++ZyM.y4B2.Mf6++++++++++++++++++u1bC.ctvMPC39+++eVb++++++++++++++++i2+9NO.04B2.Mf6++++Yw8+++++++++++++++Od+667.XmKbCz.t++++mE2++++++++++++++++38uuyCvctvMPC39+++eVb++++++++++++++++i2+9NO.34B2.Mf6++++Yw8+++++++++++++++Od+667.jmKbCz.t++++mE2++++++++++++++++38uuyCfdtvMPC39+++eVb++++++++++++++++i2+9NO.64B2.Mf6++++Yw8+++++++++++++++Od+667.vmKbCz.t++++mE2++++++++++++++++38uuyCPetvMPC39+++eVb++++++++++++++++i2+9NO.94B2.Mf6++++Yw8+++++++++++++++Od+667.7mKbCz.t+++++++++++++++++++ZyMv.39++++++++++++++++++qM2.DfKdC1..b.HH.v+f.fA.HA.ATB.9.RCCD.T.XAHF.DFfA.HlD.f+.z.fYBH..PFfPf.X.vDfTP..H4e+alB.fGHI...fQBHsHPI.zDPF.HQ.3AHJ.F.fi.Q.fBHWH.S.HBHEz..P.vdT3pO8nvU+fnrLARZfvQ.uFBHIBTcfjC.A.zT.rCPI.3T.nAHJ.F.fivT.YK.BAhSf..BP..RgqqOPJbEf7DHGARkff.vAA.Bfn.X..NBAAzVC.B.T..H...b.Q.A+zLyL2CPHP..MyLS9.RQ.LDHJ.5ggGAH.UO.X.R.f.f.RBvG.Y.XD.B.BzLyLCB1fHD.k.B+fX.fQCPGfn.X..NBOBvIfbg.FAPHfTPHeZ.MyLuOCWOJ.g7..nppp.DRfrvA.9S..fQQg7CHRATDfJU.a..n..NBRETu.LTf8h.D.flYl7C45QIP3.hRfzh.k.fl.Y.fWBvBfn.v.DBQfLfvBPPc....W72+sub..DU3A3D3...fr.9.GDPD..D.fOvD.A.3C7.3er..B.Rz.A.Hu.bBA7K.fAPPI.B..NJXJ.F..8fPsAH.fXCX..1AfRBPgDN.MO..PU..h3V.mM.HJLxDBz..DCBBAD.fgXHHF.x..X.HCXfcuwVcsUF.fPT.ZJfHtAh.P.PQNY0WAgDQSI0WV8DSU0TQfHgH49+++++++++++++++i2+LbI.BrBe.Mf6++++++++++++++++++u1bq0k.Mf6++++++++++++++++++u1bC.A8jKPC39+++eVb++++++++++++++++i2+MCM.E3B2.Mf6++++Yw8+++++++++++++++Od+2Lz.XfKbCz.t++++mE2++++++++++++++++38eyPCvAtvMPC39+++eVb++++++++++++++++i2+MCM.H3B2.Mf6++++Yw8+++++++++++++++Od+2Lz.jfKbCz.t++++mE2AzHACZ1+.7+UF.f.ibGP..vafTf.G.PZfTP.A.IHD74+s3MP..fUfTf.+..TfTvC.DA.muep9B...9yA.tCQ..B.JP.PCRT...nOA...+Sv+W0M3bv.AAz..XB.HuI.f..DPF.x..T.HCf.boQ2Xn4hA.5ye+ekr.z.HQ.zpHPjPD8ETIQ0PHAxCCDP..3HHFCvAfn.nZ.Lw.jDHRDvA.72+YsO3APLPb..Lffg.AAfJfTvA.HA.+tWhBA.PhBFwf+fp.44.KB....hm.oNPdBfAf3v+F7OVRAvCfHwALYzSeMURNUz+D7OVQAvifD5TrBLG.8CP...NfTf.H.fLfTP..DGHC.L.+8OVl+2+XIOHn.NDR9eM+iE4..IHRVjXAQye+mk.AkAP.DdI6GnMf.PH6C..gre....3P.K3QjAHJGtLbAPjfjb3GwE...d..H.O.zLPMLfD.D.Chg+.A.P.AABD.Ih3JH.PRP.Ot8lakERB.n.HlHfUEwjnI.LL.A..LBhr.C.HVAfSfv.HVAvOfY...Hd.3CxB..fX3C9.UEDs.U0X..jK.wAP..f9fK.UfWA..fCHsAB.BnD.C.zAE.A.8dig0.9ACXv7AD.Od++e.MIPC.F.fLB.1.RB.8.3CM.v..N.SMPu2XvMfVA3.LAnO.NS.LP.UBfUgXkPDAL..sPvOAzBDQIP..zB.C.3++++++++srfInAPFfP.RV.z.t++++mE2++++++++++++++++38eyPCvBt.NPC39+++eVb++++++++++++++++i2+MCM.L3B2.Mf6++++Yw8+++++++++++++++Od+2Lz.zfKbCz.t++++mE2++++++++++++++++38eyPCfCtvMPC39+++eVb++++++++++++++++i2+glC.O3B2.Mf6++++++++++++++++++u1bC.DtvMPC39++++++++++++++++++qM2.DgKbCz.t+++++++++++++++++++ZyM.R3B2.Mf6++++++++++++++++++u1bCvDtvMPC39++++++++++++++++++qM2.PgKbCz.t++++mE2++++++++++++++++38eyPCPEtvMPC39+++eVb++++++++++++++++i2+MCM.V3B2.Mf6++++Yw8+++++++++++++++Od+2Lz.bgKbCz.t++++mE2++++++++++++++++38eyPC.FtvMPC39+++eVb++++++++++++++++i2+MCM.Y3B2.Mf6++++Yw8+++++++++++++++Od+2Lz.ngKbCz.t++++mE2++++++++++++++++38eyPCvFtvMPC39+++eVb++++++++++++++++i2+MCM.b3B2.Mf6++++Yw8+++++++++++++++Od+2Lz.zgKbCz.t++++mE2++++++++++++++++38eyPCfGtvMPC39+++eVb++++++++++++++++i2+MCM.e3B2.Mf6++++++++++++++++++u1bK.H...XC39++++++++++++++++++qM2ADB..Nf6++++++++++++++++++u1bCfHtvMPC39++++++++++++++++++qM2.LhKbCz.t+++++++++++lwsAz..QO...PfBc.Av.AfI.SABB.7OH..hAP.P.PP.A...f+zLyL6S.AD...AP..9CPc.D....H..DB.L.PH.9E...SfKPH.Qi.A.vefDA.j.x..B.PIH.f+..X..3A.YUCDwJ..HfsIA..PA...vCHC....wABDoa..HD...PN+8uPWI.D..FXq..1fHT.1j.HV.H..Rz.NAvA..B..pq.0..C.w..P.Xf.o.PW.P.fyz7.kE3KLO.k.R..C.HvBpo...HG.TLfCv7BPAQ..dAyG.dXB9ByC.B4Xf.Bh...C.3bLe.B..HcBNSyCTVfuv7.XBHA.L.fWv7.EC3.Le.QdN3FLu.l0VAgqv4Ef7b..f7b.N.PANGyCzXf2z7.kE3KLO.m.R..C.3ELOPw.z.hsc.T9J3FLu.30AAfuv7.bEHyCPEfC.Tfyw7A.B.f+z7jLA3LLO.r.R..C.3ELOPw.N.yCPvgjw3D7r.F5N.fqv7D.9D...9.gCf..NGyOhCg6z4.T.HYE9BmCfKfD.v..dAyCTLfCv7Aj0Lfav7AXAMiuvyEvZF..vZF.N.PANGyG.L..tCyG...UtM2BDhfuv7..CHA.L.fWv7.EC3.Lu.ssk.gWv4B3HINDtBmW.ssD..ssD3..E3bLe.w..3NLu43rpQt.9ByCPLfD.v..dAyCTLfCv7BbmeA.dAyKfx1i.3JLeA37K..37KfC.Tfyw7AHC.f+z7FAD3KLO.x.R..C.3ELOPw.N.yG.wIDtAmK.l5v.3JLuAfSP..fSP..L.fyw7iTy3N8LRn.9ByCvLncIf..dAyCTLfCv7BnDz.DdAmG.ugW9B2F.InARZ.nAnNA..f2w7ww+4K74337b.K..3MLO.u.R..C.3ELO.J.xEfCv7AbPrgav4BnhIPDtBma.fXE..fXE..CP3bbdJRBdCyONNOmT7guv4.fBHA.L.fWv7AUB3.Lu.4WJ.gWv4BX83C.tByW.+RA..+RA3..E3bL+e+++agyz4Az...NO.ebBZ.AvxuAPJfD.v..dAyGTIfCv7AHoxgav4Av1uguv4EfTYA.fTYAN.PANGy+2+waH3KLO..Z9MqFfC..37APRNff.H..77.nBHA.L.fWv7AUB3.Lu.AZbAgWv4BXvohDtBma.PiK..PiK..C.3bLOJFCdCyONNO2Bthsc.JuBHH.B..OO.q.R..C.3ELePk.N.yKf7dK.3ELu.rlSDfqv7Ef2aA.f2aAN.PANGyKPH...3MLe33bNQoLzy.XmoZB77.zBHA.L.fWv7AUB3.Le.WAY3Fbt.JHVHfqv7EfBxB.fBxBN.PANGyC.RIBCH.nd.zBd..vT5fuvE.kI3KbAPS.z.fe..JUE3KbQR4A9BWfTmfuvEGEL3KbgQkC9BWXTBfuvEE0B3KbAQQA9BWLTcfuvEBkI3KbQP8B9BWHzAfuvEEUE3KbAQ4A9BWLTmfuvEEwL3KbQSDB9BW.fEgjJ3KbA.W.tCW..Ff6vEr..3LbDRDA9BeAvFf6vKOAB3K7B.c.tCu.fGf6vE.7A3NbgScA9BeMT9fuvEMkI3KbARsC9BWLzvfuvEQ0C3KbATgA9BWbj.fuvEG0O3KbQ.o..3MbgQEA9BuTTZfuvEOk.3KbAQkB9BW3TQfuvEIkI3KbQSAB9BWvTofuvEE4B3KbwRgA9BW..Mg6vA.TC3NbA.1.tCW.vMf6vE.fC3NbwQ9B9BOBfNf6vK.rC3NbAUr.9BGAPOf6vK.3C3NbA.+.tCWD.P..dCeQPR..Q..PVm.A.HJTV9EWdQ8VTpEUYQAVTaEkUQEUTLE0QQIPT8DENP..9tCIvR.DEHVCf.fD.f2CzzA.f.A0fAUAvb.TF.xARA.HPPtZvY.3F.gA.crvFHfP.S.jF.hAxF.DFHCHPd.HPQpJPP..GHA..affA.iAhE.PGHG.vafDC.fXSs.TGHW..bfz..xARE.HPQsCfSfBB.1AxWB.B.IAhI.LGHZ.fbffB.sARD.3FHK.xbAAH.BAFJ.PGHT.jY..hH5CVe.PFHP.fYfnA.0Aha.PWX0BNC0FjyBLE.nABJ.HGHv..Y.ZJ.HAhC.vFHhBPdf.IfdBvZfr..f.9AQC3N.7FHhAfafjCHNJz.fefi.rDHjCzpB8fPy.NREFjZ.LEHvBPag7C.rAxvfbXPYB.Qf.cPq.hCAkIPFBvXfXL.DbT..yf.f.vQfnO.uAxHBPG.TAxK.DFHqBz6.DCIOCvcfz..1ANnwBfLfeWrAIG.SEBOBdD.DfzSfGfCgC4YfyRsgy2Z.fjHpNjoBPG.Djzn.LjH5Kzw.T1HHB.RfDP3MDm31UcPsAt.2NTh.7zHzRTyfC4rDMN.CQB+.zVIJWDE.PvRYAvPjsB.yQxNgy3YfivrFoG.RIBL.PVHqAdewZDt.7DIt.ziF4G.uIBxkjJRnYvT.XD.XA.AGM.fJ.Nkwhj+.LkHebDjB4..NAlxBTF.DvT7.vDHH.PXgTG.fHRLfOPw..h4DzF.MABP.X03nsY3NDH3T7L.PAtFMC.ThjF.SAxzjq2ZlG.fh0zPA.Pagr24KLO3m0Z3NzWQg.vPhbjRG..YGVD3A3.3MjK5q0J3C064o0D3C0K.yHNs4..MfCPuBLPKqhy....3.b..H.5C.e..A.5C.H.nG...favA.TAnOHfRdp6cSAfjfd..G.5E.7.3Vb.32..SUwDB.cvfF0t.YdzCFQlhaxtTiiFGjGfW..R4DXNSzA.cg.G.tgRR.rFHI.lpL.PChUVgA.........P......D..........oO...PyRI4DA....5D........P.....nMWZtE..........ebfkpwBeBw3octZfDYjZgoP.........zrTRNQ....P.....X..........QSkjSA....D....P.....R.Ip+A.....DAnwX2nN...PBFT.MzElP7pcdgA..........A.............PBFT......................................................................................................................................................XLHXL3BEYQ.PUxBLOYk25uA.........................................................A.........P.....I....f.....M.3B.w.fK.XC.t.fL.bC.A.........."
									}
,
									"fileref" : 									{
										"name" : "Battery 4",
										"filename" : "Battery 4.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "8207fcd488361ad1189d14d70f000c77"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ \"C74_VST:/Battery 4\"",
					"varname" : "vst~",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-76",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "NH_AdditiveFrequencyGenerator.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 386.0, 164.0, 809.0, 662.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 346.0, 441.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 346.0, 480.0, 82.0, 22.0 ],
									"text" : "threadcount 4"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 437.0, 744.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 12.0,
									"id" : "obj-63",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -74.0, 139.5, 103.0, 49.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 22.5, 0.0, 163.0, 21.0 ],
									"text" : "In: Frequency/Velocity Pairs",
									"textcolor" : [ 0.823529411764706, 0.827450980392157, 0.827450980392157, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 12.0,
									"id" : "obj-60",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -32.0, 147.5, 88.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 22.5, 343.0, 69.0, 21.0 ],
									"text" : "Out: Signal",
									"textcolor" : [ 0.823529411764706, 0.827450980392157, 0.827450980392157, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 30.0,
									"id" : "obj-59",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 123.0, 386.0, 78.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.0, 25.5, 437.0, 42.0 ],
									"text" : "Additive Frequency Generator"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 14.0,
									"id" : "obj-56",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -71.0, 45.0, 181.0, 40.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 31.0, 273.0, 202.0, 23.0 ],
									"text" : "Attack Decay Sustain Release",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 14.0,
									"id" : "obj-53",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 573.5625, 34.5, 102.0, 57.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 61.0, 72.5, 199.0, 23.0 ],
									"text" : "reinitialize with current values"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-50",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 437.0, 437.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 676.9375, 383.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 762.0625, 428.0, 35.0, 22.0 ],
									"text" : "1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 720.0, 428.0, 29.5, 22.0 ],
									"text" : "0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 676.9375, 428.0, 29.5, 22.0 ],
									"text" : "100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 634.375, 428.0, 29.5, 22.0 ],
									"text" : "5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 634.375, 559.0, 56.0, 22.0 ],
									"text" : "s adsrlist"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 634.375, 526.0, 146.6875, 22.0 ],
									"text" : "pak f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 590.0, 367.0, 51.0, 22.0 ],
									"text" : "s harms"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 437.0, 480.0, 101.0, 22.0 ],
									"text" : "prepend midinote"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 548.0, 46.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.0, 72.5, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 668.0, 11.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 762.0625, 460.0, 27.0, 37.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 183.0625, 298.0, 38.9375, 37.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[5]",
											"parameter_mmax" : 10000.0,
											"parameter_shortname" : "live.dial",
											"parameter_steps" : 10000,
											"parameter_type" : 0,
											"parameter_unitstyle" : 2
										}

									}
,
									"showname" : 0,
									"varname" : "live.dial[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 720.0, 460.0, 27.0, 37.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 137.625, 298.0, 39.0, 37.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[6]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "live.dial",
											"parameter_steps" : 1000,
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.dial[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 676.9375, 460.0, 27.0, 37.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 87.0, 298.0, 43.625, 37.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[7]",
											"parameter_mmax" : 10000.0,
											"parameter_shortname" : "live.dial",
											"parameter_steps" : 10000,
											"parameter_type" : 0,
											"parameter_unitstyle" : 2
										}

									}
,
									"showname" : 0,
									"varname" : "live.dial[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 634.375, 460.0, 27.0, 37.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.0, 298.0, 44.0, 37.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[8]",
											"parameter_mmax" : 10000.0,
											"parameter_shortname" : "live.dial",
											"parameter_steps" : 10000,
											"parameter_type" : 0,
											"parameter_unitstyle" : 2
										}

									}
,
									"showname" : 0,
									"varname" : "live.dial"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 437.0, 526.0, 181.0, 22.0 ],
									"text" : "poly~ AdditiveEngine 8 @steal 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"lastchannelcount" : 1,
									"maxclass" : "mc.live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "multichannelsignal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 437.0, 581.0, 92.0, 136.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 511.0, 100.0, 62.0, 163.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ -12 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "mc.live.gain~[3]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "mc.live.gain~[1]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"showname" : 0,
									"varname" : "mc.live.gain~[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 548.0, 329.0, 61.0, 22.0 ],
									"text" : "unpack f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 548.0, 299.0, 56.0, 22.0 ],
									"text" : "listfunnel"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 613.0, 306.0, 331.0, 35.0 ],
									"text" : "1. 0. 0.333333 0. 0.2 0. 0.142857 0. 0.111111 0. 0.090909 0. 0.076923 0. 0.066667 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 14.0,
									"id" : "obj-37",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 699.0, 48.0, 45.0, 107.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 345.9375, 72.5, 164.0, 23.0 ],
									"text" : "reset to harmonic series"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 668.0, 46.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 319.9375, 72.5, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 667.0, 86.0, 275.0, 49.0 ],
									"text" : "1. 0.5 0.333333 0.25 0.2 0.166667 0.142857 0.125 0.111111 0.1 0.090909 0.083333 0.076923 0.071429 0.066667 0.0625"
								}

							}
, 							{
								"box" : 								{
									"candicane2" : [ 1.0, 0.713725490196078, 0.329411764705882, 1.0 ],
									"candicane3" : [ 0.843137254901961, 0.847058823529412, 0.27843137254902, 1.0 ],
									"candicane4" : [ 0.290196078431373, 0.847058823529412, 0.27843137254902, 1.0 ],
									"candicane5" : [ 0.27843137254902, 0.847058823529412, 0.776470588235294, 1.0 ],
									"candicane6" : [ 0.27843137254902, 0.427450980392157, 0.847058823529412, 1.0 ],
									"candicane7" : [ 0.431372549019608, 0.149019607843137, 0.882352941176471, 1.0 ],
									"candicane8" : [ 0.701960784313725, 0.031372549019608, 0.682352941176471, 1.0 ],
									"candycane" : 16,
									"id" : "obj-9",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 548.0, 150.0, 394.0, 141.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.0, 100.0, 474.0, 163.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_invisible" : 1,
											"parameter_longname" : "multislider[2]",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3
										}

									}
,
									"setminmax" : [ 0.0, 1.0 ],
									"setstyle" : 1,
									"size" : 16,
									"slidercolor" : [ 1.0, 0.329411764705882, 0.329411764705882, 1.0 ],
									"varname" : "multislider"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"border" : 19,
									"bordercolor" : [ 0.223529411764706, 0.219607843137255, 0.219607843137255, 1.0 ],
									"grad1" : [ 0.509803921568627, 0.666666666666667, 0.866666666666667, 1.0 ],
									"grad2" : [ 0.572549019607843, 0.662745098039216, 0.796078431372549, 1.0 ],
									"id" : "obj-57",
									"maxclass" : "panel",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 111.0, 117.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 0.0, 592.0, 364.0 ],
									"proportion" : 0.5,
									"rounded" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 1 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 2 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 3 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"order" : 3,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"order" : 2,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"order" : 1,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"order" : 0,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-61", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 1 ],
									"order" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"order" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 593.333333611488342, 857.333334445953369, 592.0, 368.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-77",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "NH_RxTempermentRegulator.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
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
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-73",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 575.543856859207153, 454.166655838489532, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 575.543856859207153, 415.833323419094086, 34.0, 22.0 ],
									"text" : "pack"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 573.333319664001465, 33.333332538604736, 47.0, 22.0 ],
									"text" : "unpack"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 730.0, 48.5, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 661.543856859207153, 211.0, 29.5, 22.0 ],
									"text" : "2"
								}

							}
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 8.0,
									"id" : "obj-63",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 636.0, 285.0, 117.0, 83.0 ],
									"presentation" : 1,
									"presentation_linecount" : 7,
									"presentation_rect" : [ 150.80026650428772, 281.924199134111404, 133.0, 73.0 ],
									"text" : "Side Affects may include change in harmonies, microtonality, sudden loss of consonance, nausea and vomiting, please contact your musician right away if you experience loss of pitch perception",
									"textcolor" : [ 0.642269670963287, 0.642370581626892, 0.642232835292816, 1.0 ]
								}

							}
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-50",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 574.877192974090576, -80.499997019767761, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 522.216906547546387, 109.271252632141113, 29.5, 22.0 ],
									"text" : "69"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 683.80026650428772, 109.271252632141113, 29.5, 22.0 ],
									"text" : "12"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 691.646382570266724, 273.886627435684204, 32.0, 22.0 ],
									"text" : "440."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 575.543856859207153, 322.091752767562866, 40.0, 22.0 ],
									"text" : "* 440."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 575.082289695739746, 192.04047679901123, 29.5, 22.0 ],
									"text" : "- 69"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 575.543856859207153, 260.040474414825439, 29.5, 22.0 ],
									"text" : "/ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 575.543856859207153, 230.809706926345825, 40.0, 22.0 ],
									"text" : "pak i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 575.543856859207153, 286.43708348274231, 105.0, 22.0 ],
									"text" : "expr pow($f2\\, $f1)"
								}

							}
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 1 ],
									"midpoints" : [ 693.30026650428772, 222.068578094244003, 606.043856859207153, 222.068578094244003 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 1 ],
									"midpoints" : [ 701.146382570266724, 336.143035888671875, 651.840733766555786, 336.143035888671875, 651.840733766555786, 311.091752767562866, 606.043856859207153, 311.091752767562866 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"order" : 0,
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"order" : 1,
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"order" : 3,
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"order" : 2,
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 1 ],
									"source" : [ "obj-71", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 584.0, 433.333334445953369, 314.0, 409.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 219.666666150093079, 1656.666679382324219, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-75",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "NH_AdditiveFrequencyGenerator.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 386.0, 164.0, 809.0, 662.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 346.0, 441.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 346.0, 480.0, 82.0, 22.0 ],
									"text" : "threadcount 4"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 437.0, 744.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 12.0,
									"id" : "obj-63",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -74.0, 139.5, 103.0, 49.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 22.5, 0.0, 163.0, 21.0 ],
									"text" : "In: Frequency/Velocity Pairs",
									"textcolor" : [ 0.823529411764706, 0.827450980392157, 0.827450980392157, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 12.0,
									"id" : "obj-60",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -32.0, 147.5, 88.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 22.5, 343.0, 69.0, 21.0 ],
									"text" : "Out: Signal",
									"textcolor" : [ 0.823529411764706, 0.827450980392157, 0.827450980392157, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 30.0,
									"id" : "obj-59",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 123.0, 386.0, 78.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.0, 25.5, 437.0, 42.0 ],
									"text" : "Additive Frequency Generator"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 14.0,
									"id" : "obj-56",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -71.0, 45.0, 181.0, 40.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 31.0, 273.0, 202.0, 23.0 ],
									"text" : "Attack Decay Sustain Release",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 14.0,
									"id" : "obj-53",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 573.5625, 34.5, 102.0, 57.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 61.0, 72.5, 199.0, 23.0 ],
									"text" : "reinitialize with current values"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-50",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 437.0, 437.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 676.9375, 383.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 762.0625, 428.0, 35.0, 22.0 ],
									"text" : "1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 720.0, 428.0, 29.5, 22.0 ],
									"text" : "0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 676.9375, 428.0, 29.5, 22.0 ],
									"text" : "100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 634.375, 428.0, 29.5, 22.0 ],
									"text" : "5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 634.375, 559.0, 56.0, 22.0 ],
									"text" : "s adsrlist"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 634.375, 526.0, 146.6875, 22.0 ],
									"text" : "pak f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 590.0, 367.0, 51.0, 22.0 ],
									"text" : "s harms"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 437.0, 480.0, 101.0, 22.0 ],
									"text" : "prepend midinote"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 548.0, 46.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.0, 72.5, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 668.0, 11.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 762.0625, 460.0, 27.0, 37.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 183.0625, 298.0, 38.9375, 37.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[2]",
											"parameter_mmax" : 10000.0,
											"parameter_shortname" : "live.dial",
											"parameter_steps" : 10000,
											"parameter_type" : 0,
											"parameter_unitstyle" : 2
										}

									}
,
									"showname" : 0,
									"varname" : "live.dial[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 720.0, 460.0, 27.0, 37.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 137.625, 298.0, 39.0, 37.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[1]",
											"parameter_mmax" : 1.0,
											"parameter_shortname" : "live.dial",
											"parameter_steps" : 1000,
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.dial[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 676.9375, 460.0, 27.0, 37.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 87.0, 298.0, 43.625, 37.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[4]",
											"parameter_mmax" : 10000.0,
											"parameter_shortname" : "live.dial",
											"parameter_steps" : 10000,
											"parameter_type" : 0,
											"parameter_unitstyle" : 2
										}

									}
,
									"showname" : 0,
									"varname" : "live.dial[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 634.375, 460.0, 27.0, 37.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.0, 298.0, 44.0, 37.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.dial[3]",
											"parameter_mmax" : 10000.0,
											"parameter_shortname" : "live.dial",
											"parameter_steps" : 10000,
											"parameter_type" : 0,
											"parameter_unitstyle" : 2
										}

									}
,
									"showname" : 0,
									"varname" : "live.dial"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 437.0, 526.0, 181.0, 22.0 ],
									"text" : "poly~ AdditiveEngine 8 @steal 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"lastchannelcount" : 1,
									"maxclass" : "mc.live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "multichannelsignal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 437.0, 581.0, 92.0, 136.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 511.0, 100.0, 62.0, 163.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ -12 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "mc.live.gain~[2]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "mc.live.gain~[1]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"showname" : 0,
									"varname" : "mc.live.gain~[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 548.0, 329.0, 61.0, 22.0 ],
									"text" : "unpack f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 548.0, 299.0, 56.0, 22.0 ],
									"text" : "listfunnel"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 613.0, 306.0, 331.0, 49.0 ],
									"text" : "1. 0.5 0.333333 0.25 0.2 0.166667 0.142857 0.125 0.111111 0.1 0.090909 0.083333 0.076923 0.071429 0.066667 0.0625"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 14.0,
									"id" : "obj-37",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 699.0, 48.0, 45.0, 107.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 345.9375, 72.5, 164.0, 23.0 ],
									"text" : "reset to harmonic series"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 668.0, 46.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 319.9375, 72.5, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 667.0, 86.0, 275.0, 49.0 ],
									"text" : "1. 0.5 0.333333 0.25 0.2 0.166667 0.142857 0.125 0.111111 0.1 0.090909 0.083333 0.076923 0.071429 0.066667 0.0625"
								}

							}
, 							{
								"box" : 								{
									"candicane2" : [ 1.0, 0.713725490196078, 0.329411764705882, 1.0 ],
									"candicane3" : [ 0.843137254901961, 0.847058823529412, 0.27843137254902, 1.0 ],
									"candicane4" : [ 0.290196078431373, 0.847058823529412, 0.27843137254902, 1.0 ],
									"candicane5" : [ 0.27843137254902, 0.847058823529412, 0.776470588235294, 1.0 ],
									"candicane6" : [ 0.27843137254902, 0.427450980392157, 0.847058823529412, 1.0 ],
									"candicane7" : [ 0.431372549019608, 0.149019607843137, 0.882352941176471, 1.0 ],
									"candicane8" : [ 0.701960784313725, 0.031372549019608, 0.682352941176471, 1.0 ],
									"candycane" : 16,
									"id" : "obj-9",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 548.0, 150.0, 394.0, 141.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.0, 100.0, 474.0, 163.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_invisible" : 1,
											"parameter_longname" : "multislider[1]",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3
										}

									}
,
									"setminmax" : [ 0.0, 1.0 ],
									"setstyle" : 1,
									"size" : 16,
									"slidercolor" : [ 1.0, 0.329411764705882, 0.329411764705882, 1.0 ],
									"varname" : "multislider"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"border" : 19,
									"bordercolor" : [ 0.223529411764706, 0.219607843137255, 0.219607843137255, 1.0 ],
									"grad1" : [ 0.509803921568627, 0.666666666666667, 0.866666666666667, 1.0 ],
									"grad2" : [ 0.572549019607843, 0.662745098039216, 0.796078431372549, 1.0 ],
									"id" : "obj-57",
									"maxclass" : "panel",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 111.0, 117.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 0.0, 592.0, 364.0 ],
									"proportion" : 0.5,
									"rounded" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 1 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 2 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 3 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"order" : 3,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"order" : 2,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"order" : 1,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"order" : 0,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-61", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 1 ],
									"order" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"order" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ -8.5, 857.333334445953369, 592.0, 368.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-30",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "NH_RxTempermentRegulator.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
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
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-73",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 575.543856859207153, 454.166655838489532, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 575.543856859207153, 415.833323419094086, 34.0, 22.0 ],
									"text" : "pack"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 573.333319664001465, 33.333332538604736, 47.0, 22.0 ],
									"text" : "unpack"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 730.0, 48.5, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 661.543856859207153, 211.0, 29.5, 22.0 ],
									"text" : "2"
								}

							}
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 8.0,
									"id" : "obj-63",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 636.0, 285.0, 117.0, 83.0 ],
									"presentation" : 1,
									"presentation_linecount" : 7,
									"presentation_rect" : [ 150.80026650428772, 281.924199134111404, 133.0, 73.0 ],
									"text" : "Side Affects may include change in harmonies, microtonality, sudden loss of consonance, nausea and vomiting, please contact your musician right away if you experience loss of pitch perception",
									"textcolor" : [ 0.642269670963287, 0.642370581626892, 0.642232835292816, 1.0 ]
								}

							}
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-50",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 574.877192974090576, -80.499997019767761, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 522.216906547546387, 109.271252632141113, 29.5, 22.0 ],
									"text" : "69"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 683.80026650428772, 109.271252632141113, 29.5, 22.0 ],
									"text" : "12"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 691.646382570266724, 273.886627435684204, 32.0, 22.0 ],
									"text" : "440."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 575.543856859207153, 322.091752767562866, 40.0, 22.0 ],
									"text" : "* 440."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 575.082289695739746, 192.04047679901123, 29.5, 22.0 ],
									"text" : "- 69"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 575.543856859207153, 260.040474414825439, 29.5, 22.0 ],
									"text" : "/ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 575.543856859207153, 230.809706926345825, 40.0, 22.0 ],
									"text" : "pak i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 575.543856859207153, 286.43708348274231, 105.0, 22.0 ],
									"text" : "expr pow($f2\\, $f1)"
								}

							}
, 							{
								"box" : 								{
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
, 							{
								"box" : 								{
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
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 1 ],
									"midpoints" : [ 693.30026650428772, 222.068578094244003, 606.043856859207153, 222.068578094244003 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 1 ],
									"midpoints" : [ 701.146382570266724, 336.143035888671875, 651.840733766555786, 336.143035888671875, 651.840733766555786, 311.091752767562866, 606.043856859207153, 311.091752767562866 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"order" : 0,
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"order" : 1,
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"order" : 3,
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"order" : 2,
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 1 ],
									"source" : [ "obj-71", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ -8.5, 433.333334445953369, 314.0, 409.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.0, 21.0, 67.0, 20.0 ],
					"text" : "Reload"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 13.0, 45.0, 59.0, 59.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 876.5, 117.0, 79.0, 22.0 ],
					"text" : "read drum.txt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 531.5, 117.0, 77.0, 22.0 ],
					"text" : "read bass.txt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 186.5, 117.0, 90.0, 22.0 ],
					"text" : "read melody.txt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 746.0, 200.0, 68.0, 20.0 ],
					"text" : "Transpose"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 756.0, 225.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 816.0, 259.0, 29.5, 22.0 ],
					"text" : "+ 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 398.0, 200.0, 68.0, 20.0 ],
					"text" : "Transpose"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 411.0, 216.0, 50.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -12 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "number",
							"parameter_shortname" : "number",
							"parameter_type" : 3
						}

					}
,
					"varname" : "number"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 470.0, 259.0, 29.5, 22.0 ],
					"text" : "+ 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 194.0, 68.0, 20.0 ],
					"text" : "Transpose"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 59.0, 216.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 119.0, 259.0, 29.5, 22.0 ],
					"text" : "+ 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 842.0, 47.0, 67.0, 20.0 ],
					"text" : "Drum"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 496.0, 47.0, 67.0, 20.0 ],
					"text" : "Bass"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 145.0, 47.0, 67.0, 20.0 ],
					"text" : "Melody"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 816.0, 45.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 816.0, 9.0, 119.0, 22.0 ],
					"text" : "metro 16n @active 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 973.0, 250.0, 29.5, 22.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "int" ],
					"patching_rect" : [ 710.0, 149.0, 40.0, 22.0 ],
					"text" : "t 1 l 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 816.0, 184.0, 176.0, 22.0 ],
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 973.0, 216.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 710.0, 117.0, 96.0, 22.0 ],
					"text" : "loadmess length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "" ],
					"patching_rect" : [ 816.0, 216.0, 108.0, 22.0 ],
					"text" : "unpack i i n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 816.0, 117.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 816.0, 334.0, 108.0, 22.0 ],
					"text" : "pack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 816.0, 369.0, 82.0, 22.0 ],
					"text" : "midiformat 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 816.0, 298.0, 108.0, 22.0 ],
					"text" : "makenote 127 8n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 816.0, 149.0, 73.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll drum.txt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 816.0, 82.0, 176.0, 22.0 ],
					"text" : "counter 64"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 470.0, 45.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 470.0, 9.0, 119.0, 22.0 ],
					"text" : "metro 4n @active 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 627.0, 250.0, 29.5, 22.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "int" ],
					"patching_rect" : [ 364.0, 149.0, 40.0, 22.0 ],
					"text" : "t 1 l 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 470.0, 184.0, 176.0, 22.0 ],
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 627.0, 216.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 364.0, 117.0, 96.0, 22.0 ],
					"text" : "loadmess length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "" ],
					"patching_rect" : [ 470.0, 216.0, 108.0, 22.0 ],
					"text" : "unpack i i n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 470.0, 117.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 470.0, 342.0, 108.0, 22.0 ],
					"text" : "pack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 470.0, 306.0, 108.0, 22.0 ],
					"text" : "makenote 127 8n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 470.0, 149.0, 71.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll bass.txt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 470.0, 82.0, 176.0, 22.0 ],
					"text" : "counter 64"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 276.0, 250.0, 29.5, 22.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "int" ],
					"patching_rect" : [ 13.0, 149.0, 40.0, 22.0 ],
					"text" : "t 1 l 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 119.0, 184.0, 176.0, 22.0 ],
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 276.0, 216.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 117.0, 96.0, 22.0 ],
					"text" : "loadmess length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "" ],
					"patching_rect" : [ 119.0, 225.0, 69.0, 22.0 ],
					"text" : "unpack i i n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 119.0, 117.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 119.0, 356.0, 108.0, 22.0 ],
					"text" : "pack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 119.0, 320.0, 108.0, 22.0 ],
					"text" : "makenote 127 8n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 119.0, 149.0, 84.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll melody.txt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 119.0, 82.0, 176.0, 22.0 ],
					"text" : "counter 64"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 119.0, 45.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 119.0, 9.0, 119.0, 22.0 ],
					"text" : "metro 16n @active 1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 2 ],
					"source" : [ "obj-14", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 479.5, 398.166667222976685, 593.5, 398.166667222976685 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"midpoints" : [ 479.5, 177.0, 636.5, 177.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"midpoints" : [ 128.5, 177.0, 285.5, 177.0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 4 ],
					"midpoints" : [ 285.5, 282.0, 337.5, 282.0, 337.5, 71.0, 285.5, 71.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 4 ],
					"midpoints" : [ 982.5, 282.0, 1034.5, 282.0, 1034.5, 71.0, 982.5, 71.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 740.5, 177.0, 825.5, 177.0 ],
					"source" : [ "obj-37", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 719.5, 177.0, 825.5, 177.0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 730.0, 177.0, 799.75, 177.0, 799.75, 143.0, 825.5, 143.0 ],
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 2 ],
					"source" : [ "obj-41", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"source" : [ "obj-41", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 2 ],
					"source" : [ "obj-42", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 1 ],
					"source" : [ "obj-42", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"midpoints" : [ 888.5, 408.666665077209473, 1030.499999046325684, 408.666665077209473 ],
					"source" : [ "obj-45", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 1 ],
					"source" : [ "obj-47", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"midpoints" : [ 825.5, 177.0, 982.5, 177.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"midpoints" : [ 68.5, 248.0, 139.0, 248.0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 1 ],
					"midpoints" : [ 420.5, 248.0, 490.0, 248.0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 33.0, 177.0, 102.75, 177.0, 102.75, 143.0, 128.5, 143.0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 43.5, 177.0, 128.5, 177.0 ],
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 22.5, 177.0, 128.5, 177.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 1 ],
					"midpoints" : [ 765.5, 248.0, 836.0, 248.0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 3 ],
					"midpoints" : [ 825.5, 290.5, 857.0, 290.5 ],
					"order" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"order" : 1,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [ 22.5, 110.0, 373.5, 110.0 ],
					"order" : 3,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"order" : 5,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [ 22.5, 110.0, 719.5, 110.0 ],
					"order" : 1,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [ 22.5, 110.0, 196.0, 110.0 ],
					"order" : 4,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"midpoints" : [ 22.5, 110.0, 541.0, 110.0 ],
					"order" : 2,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"midpoints" : [ 22.5, 110.0, 886.0, 110.0 ],
					"order" : 0,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 1 ],
					"midpoints" : [ 1.0, 1242.166685998439789, 317.533335125446342, 1242.166685998439789 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 2 ],
					"midpoints" : [ 602.833333611488342, 1242.166685998439789, 405.900004100799549, 1242.166685998439789 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 3 ],
					"midpoints" : [ 1030.499999046325684, 1242.500027596950531, 494.266673076152813, 1242.500027596950531 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 4 ],
					"midpoints" : [ 636.5, 282.0, 688.5, 282.0, 688.5, 71.0, 636.5, 71.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"midpoints" : [ 523.722229401270624, 1644.500028789043427, 255.166666150093079, 1644.500028789043427 ],
					"source" : [ "obj-81", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 394.5, 177.0, 479.5, 177.0 ],
					"source" : [ "obj-9", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 373.5, 177.0, 479.5, 177.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 384.0, 177.0, 453.75, 177.0, 453.75, 143.0, 479.5, 143.0 ],
					"source" : [ "obj-9", 1 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-58" : [ "number", "number", 0 ],
			"obj-75::obj-10" : [ "live.dial[4]", "live.dial", 0 ],
			"obj-75::obj-11" : [ "live.dial[1]", "live.dial", 0 ],
			"obj-75::obj-12" : [ "live.dial[2]", "live.dial", 0 ],
			"obj-75::obj-6" : [ "live.dial[3]", "live.dial", 0 ],
			"obj-75::obj-70" : [ "mc.live.gain~[2]", "mc.live.gain~[1]", 0 ],
			"obj-75::obj-9" : [ "multislider[1]", "multislider", 0 ],
			"obj-76::obj-10" : [ "live.dial[7]", "live.dial", 0 ],
			"obj-76::obj-11" : [ "live.dial[6]", "live.dial", 0 ],
			"obj-76::obj-12" : [ "live.dial[5]", "live.dial", 0 ],
			"obj-76::obj-6" : [ "live.dial[8]", "live.dial", 0 ],
			"obj-76::obj-70" : [ "mc.live.gain~[3]", "mc.live.gain~[1]", 0 ],
			"obj-76::obj-9" : [ "multislider[2]", "multislider", 0 ],
			"obj-79" : [ "vst~", "vst~", 0 ],
			"obj-81::obj-1" : [ "live.gain~", "live.gain~", 0 ],
			"obj-81::obj-107" : [ "live.dial[15]", "A", 0 ],
			"obj-81::obj-123" : [ "live.dial[23]", "B", 0 ],
			"obj-81::obj-152" : [ "live.dial[20]", "B", 0 ],
			"obj-81::obj-153" : [ "live.dial[41]", "A", 0 ],
			"obj-81::obj-158" : [ "live.dial[26]", "B", 0 ],
			"obj-81::obj-159" : [ "live.dial[27]", "A", 0 ],
			"obj-81::obj-164" : [ "live.dial[21]", "B", 0 ],
			"obj-81::obj-165" : [ "live.dial[28]", "A", 0 ],
			"obj-81::obj-170" : [ "live.dial[29]", "B", 0 ],
			"obj-81::obj-171" : [ "live.dial[22]", "A", 0 ],
			"obj-81::obj-176" : [ "live.dial[30]", "B", 0 ],
			"obj-81::obj-177" : [ "live.dial[31]", "A", 0 ],
			"obj-81::obj-182" : [ "live.dial[32]", "B", 0 ],
			"obj-81::obj-183" : [ "live.dial[33]", "A", 0 ],
			"obj-81::obj-188" : [ "live.dial[24]", "B", 0 ],
			"obj-81::obj-189" : [ "live.dial[34]", "A", 0 ],
			"obj-81::obj-2" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-81::obj-23" : [ "live.dial", "Pan", 0 ],
			"obj-81::obj-24" : [ "live.dial[40]", "Pan", 0 ],
			"obj-81::obj-26" : [ "live.dial[42]", "Pan", 0 ],
			"obj-81::obj-28" : [ "live.dial[39]", "Pan", 0 ],
			"obj-81::obj-3" : [ "live.gain~[2]", "live.gain~", 0 ],
			"obj-81::obj-30" : [ "live.dial[43]", "Pan", 0 ],
			"obj-81::obj-32" : [ "live.dial[44]", "Pan", 0 ],
			"obj-81::obj-34" : [ "live.dial[38]", "Pan", 0 ],
			"obj-81::obj-36" : [ "live.dial[25]", "Pan", 0 ],
			"obj-81::obj-4" : [ "live.gain~[3]", "live.gain~", 0 ],
			"obj-81::obj-5" : [ "live.gain~[4]", "live.gain~", 0 ],
			"obj-81::obj-6" : [ "live.gain~[5]", "live.gain~", 0 ],
			"obj-81::obj-7" : [ "live.gain~[6]", "live.gain~", 0 ],
			"obj-81::obj-8" : [ "live.gain~[7]", "live.gain~", 0 ],
			"obj-81::obj-9" : [ "live.gain~[8]", "live.gain~[8]", 0 ],
			"obj-81::obj-94" : [ "live.gain~[9]", "live.gain~[8]", 0 ],
			"obj-81::obj-97" : [ "live.gain~[10]", "live.gain~[8]", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-75::obj-10" : 				{
					"parameter_longname" : "live.dial[4]"
				}
,
				"obj-75::obj-11" : 				{
					"parameter_longname" : "live.dial[1]"
				}
,
				"obj-75::obj-12" : 				{
					"parameter_longname" : "live.dial[2]"
				}
,
				"obj-75::obj-6" : 				{
					"parameter_longname" : "live.dial[3]"
				}
,
				"obj-75::obj-70" : 				{
					"parameter_longname" : "mc.live.gain~[2]"
				}
,
				"obj-76::obj-10" : 				{
					"parameter_longname" : "live.dial[7]"
				}
,
				"obj-76::obj-11" : 				{
					"parameter_longname" : "live.dial[6]"
				}
,
				"obj-76::obj-12" : 				{
					"parameter_longname" : "live.dial[5]"
				}
,
				"obj-76::obj-6" : 				{
					"parameter_longname" : "live.dial[8]"
				}
,
				"obj-76::obj-70" : 				{
					"parameter_longname" : "mc.live.gain~[3]"
				}
,
				"obj-81::obj-153" : 				{
					"parameter_longname" : "live.dial[41]"
				}
,
				"obj-81::obj-24" : 				{
					"parameter_longname" : "live.dial[40]"
				}
,
				"obj-81::obj-26" : 				{
					"parameter_longname" : "live.dial[42]"
				}
,
				"obj-81::obj-28" : 				{
					"parameter_longname" : "live.dial[39]"
				}
,
				"obj-81::obj-30" : 				{
					"parameter_longname" : "live.dial[43]"
				}
,
				"obj-81::obj-32" : 				{
					"parameter_longname" : "live.dial[44]"
				}
,
				"obj-81::obj-34" : 				{
					"parameter_longname" : "live.dial[38]"
				}
,
				"obj-81::obj-36" : 				{
					"parameter_longname" : "live.dial[25]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "melody.txt",
				"bootpath" : "~/Documents/GitHub/NatalieHogue_EP_353_Classwork/Mid-Term/Templates",
				"patcherrelativepath" : "../../../../../../NatalieHogue_EP_353_Classwork/Mid-Term/Templates",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "bass.txt",
				"bootpath" : "~/Documents/GitHub/NatalieHogue_EP_353_Classwork/Mid-Term/Templates",
				"patcherrelativepath" : "../../../../../../NatalieHogue_EP_353_Classwork/Mid-Term/Templates",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "drum.txt",
				"bootpath" : "~/Documents/GitHub/NatalieHogue_EP_353_Classwork/Mid-Term/Templates",
				"patcherrelativepath" : "../../../../../../NatalieHogue_EP_353_Classwork/Mid-Term/Templates",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "AdditiveEngine.maxpat",
				"bootpath" : "~/Documents/GitHub/NatalieHogueRepository/MaxMSP/NH BPatchers/NH_AdditiveFrequencyGenerator_BPatcher/NH_AdditiveFrequencyGenerator/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Battery 4.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "pan2.maxpat",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 8/Examples/spatialization/panning/lib",
				"patcherrelativepath" : "../../../../../../../../Library/Application Support/Cycling '74/Max 8/Examples/spatialization/panning/lib",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
