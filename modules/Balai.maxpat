{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 6,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 324.0, 79.0, 570.0, 783.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-57",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 460.0, 534.0, 150.0, 33.0 ],
					"style" : "",
					"text" : "nombre balayeurs (par défaut 9)"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 463.041138, 508.290894, 81.0, 22.0 ],
					"presentation_rect" : [ 463.041138, 544.290894, 0.0, 0.0 ],
					"style" : "",
					"text" : "balaiDiag 1 2"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-51",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 349.5, 528.587219, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 247.0, 140.760605, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[28]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "CF",
					"varname" : "live.text[7]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.558253, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 349.5, 555.634338, 99.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote CF"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 390.0, 590.349854, 52.0, 22.0 ],
					"presentation_rect" : [ 390.0, 590.349854, 0.0, 0.0 ],
					"style" : "",
					"text" : "balaiCF"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-48",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 206.5, 417.587219, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 201.978363, 140.760605, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[27]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "CP",
					"varname" : "live.text[5]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.558253, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 206.5, 444.634338, 99.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote CP"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 247.0, 479.349854, 53.0, 22.0 ],
					"presentation_rect" : [ 247.0, 480.586304, 0.0, 0.0 ],
					"style" : "",
					"text" : "balaiCP"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 148.541138, 156.881714, 325.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter CF @type impulse @range 0 1 @clip both"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 148.541138, 130.141907, 326.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter CP @type impulse @range 0 1 @clip both"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 28.041138, 516.586304, 74.0, 22.0 ],
					"presentation_rect" : [ 45.0, 492.586304, 0.0, 0.0 ],
					"style" : "",
					"text" : "balaiGD 8 8"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-33",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 361.541138, 469.290894, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 303.541138, 148.337219, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[26]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "diag",
					"varname" : "live.text[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "number",
					"maximum" : 3,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.041138, 388.870789, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 298.541138, 122.337219, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 494.541138, 104.141907, 303.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter diag @type int @range 0 3 @clip both"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.558253, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 420.041138, 424.528259, 105.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote diag"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 463.041138, 469.290894, 77.0, 22.0 ],
					"style" : "",
					"text" : "balaiDiag $1"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-19",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 386.541138, 243.823669, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.5, 161.760605, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[23]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "BH",
					"varname" : "live.text[4]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.558253, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 386.541138, 273.823669, 99.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote BH"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 427.041138, 305.586304, 53.0, 22.0 ],
					"style" : "",
					"text" : "balaiBH"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-14",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 281.541138, 273.823669, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.5, 120.337219, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[17]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "HB",
					"varname" : "live.text[3]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.558253, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 281.541138, 300.870789, 99.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote HB"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 322.041138, 335.586304, 53.0, 22.0 ],
					"style" : "",
					"text" : "balaiHB"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-7",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 172.5, 302.823669, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 147.5, 140.760605, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[15]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "DG",
					"varname" : "live.text[1]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.558253, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 172.5, 329.870789, 101.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote DG"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 213.0, 364.586304, 54.0, 22.0 ],
					"style" : "",
					"text" : "balaiDG"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 148.541138, 104.141907, 326.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter BH @type impulse @range 0 1 @clip both"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 494.541138, 75.688416, 321.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter Size @type float @range 0. 9. @clip both"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.963735, 1.0, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 603.874512, 504.718689, 217.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote /Agents/agentParameters"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 603.874512, 465.628601, 76.0, 22.0 ],
					"style" : "",
					"text" : "balaiSize $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 577.541138, 429.628601, 106.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.remote Size"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontface" : 3,
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 577.541138, 362.718689, 62.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 87.874474, 70.40509, 273.0, 45.0 ],
					"relative" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "live.slider[38]",
							"parameter_shortname" : "Size",
							"parameter_type" : 0,
							"parameter_mmax" : 9.0,
							"parameter_enum" : [ "0", "0.5", "1", "1.5", "2", "2.5", "3", "3.5", "4" ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.slider[38]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 745.0, 456.587219, 92.0, 22.0 ],
					"style" : "",
					"text" : "balaiVitesse $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 713.333374, 417.587219, 122.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.remote Vitesse"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontface" : 3,
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 713.333374, 350.677307, 62.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 87.874474, 23.40509, 273.0, 45.0 ],
					"relative" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "live.slider[39]",
							"parameter_shortname" : "Vitesse",
							"parameter_type" : 0,
							"parameter_mmax" : 200.0,
							"parameter_enum" : [ "0", "0.5", "1", "1.5", "2", "2.5", "3", "3.5", "4" ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.slider[39]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 494.541138, 44.688416, 350.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter Vitesse @type float @range 0. 200. @clip both"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 148.541138, 74.141907, 326.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter HB @type impulse @range 0 1 @clip both"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 575.541138, 209.791626, 103.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.remote Sub"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-34",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 69.5, 351.823669, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 91.874481, 140.760605, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[24]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "GD",
					"varname" : "live.text[2]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.963735, 1.0, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 110.0, 595.587219, 217.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote /Agents/agentParameters"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.558253, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 69.5, 378.870789, 101.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote GD"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 110.0, 413.586304, 54.0, 22.0 ],
					"style" : "",
					"text" : "balaiGD"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 494.541138, 13.688416, 383.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter Sub @type float @range 0. 1. @clip both @default 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 148.541138, 44.141907, 327.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter DG @type impulse @range 0 1 @clip both"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 148.541138, 13.688416, 327.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter GD @type impulse @range 0 1 @clip both"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.541138, 123.141907, 105.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.model Balai"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-66",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 618.541138, 252.791626, 74.0, 22.0 ],
					"style" : "",
					"text" : "balaiSub $1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.963735, 1.0, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 618.541138, 300.414001, 217.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote /Agents/agentParameters"
				}

			}
, 			{
				"box" : 				{
					"angle" : 100.0,
					"bgcolor" : [ 0.258824, 0.294118, 0.301961, 0.501961 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.294118, 0.301961, 1.0 ],
					"id" : "obj-69",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.541138, 24.358948, 47.0, 42.818848 ],
					"presentation" : 1,
					"presentation_rect" : [ 83.082237, 117.40509, 277.792236, 68.711029 ],
					"proportion" : 0.39,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontface" : 3,
					"fontsize" : 12.0,
					"id" : "obj-71",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 575.541138, 142.881714, 66.0, 50.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.748962, 6.40509, 79.0, 183.0 ],
					"relative" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.slider[41]",
							"parameter_shortname" : "SubBalais",
							"parameter_type" : 0,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "0", "0.5", "1", "1.5", "2", "2.5", "3", "3.5", "4" ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.slider[2]"
				}

			}
, 			{
				"box" : 				{
					"angle" : 100.0,
					"bgcolor" : [ 0.258824, 0.294118, 0.301961, 0.501961 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.294118, 0.301961, 1.0 ],
					"id" : "obj-38",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.541138, 9.358948, 47.0, 42.818848 ],
					"presentation" : 1,
					"presentation_rect" : [ -1.0, 0.40509, 392.510315, 201.0 ],
					"proportion" : 0.39,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 100.0,
					"background" : 1,
					"bgcolor" : [ 0.258824, 0.294118, 0.301961, 0.501961 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.294118, 0.301961, 1.0 ],
					"id" : "obj-43",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.541138, 81.141907, 27.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 83.082237, 6.40509, 281.792236, 109.0 ],
					"proportion" : 0.39,
					"style" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 722.833374, 449.587219, 704.833374, 449.587219, 704.833374, 339.677307, 722.833374, 339.677307 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-118", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 79.0, 407.0, 54.0, 407.0, 54.0, 345.0, 79.0, 345.0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"midpoints" : [ 585.041138, 238.120056, 561.541138, 238.120056, 561.541138, 136.120056, 585.041138, 136.120056 ],
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
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 291.041138, 327.870789, 270.791138, 327.870789, 270.791138, 260.823669, 291.041138, 260.823669 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 396.041138, 297.870789, 375.791138, 297.870789, 375.791138, 234.823669, 396.041138, 234.823669 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 429.541138, 453.0, 405.0, 453.0, 405.0, 378.0, 429.541138, 378.0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-41", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"midpoints" : [ 587.041138, 457.957031, 563.541138, 457.957031, 563.541138, 355.957031, 587.041138, 355.957031 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 216.0, 472.76355, 191.0, 472.76355, 191.0, 410.76355, 216.0, 410.76355 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 359.0, 583.76355, 334.0, 583.76355, 334.0, 521.76355, 359.0, 521.76355 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-66", 0 ]
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
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 182.0, 356.870789, 161.75, 356.870789, 161.75, 288.823669, 182.0, 288.823669 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"styles" : [ 			{
				"name" : "Jamoma_highlighted_orange",
				"default" : 				{
					"accentcolor" : [ 1.0, 0.5, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "patchLCDF",
				"default" : 				{
					"fontname" : [ "Helvetica Neue Bold" ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : [ 3 ],
					"fontsize" : [ 18.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.15 ],
					"accentcolor" : [ 0.556863, 0.556863, 0.556863, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
