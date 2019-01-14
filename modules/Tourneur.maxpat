{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 34.0, 79.0, 995.0, 783.0 ],
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
					"id" : "obj-95",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 779.541138, 694.628601, 109.0, 22.0 ],
					"presentation_rect" : [ 1126.333374, 674.628601, 0.0, 0.0 ],
					"style" : "",
					"text" : "tourneurSizeAll $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 753.207764, 658.628601, 119.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.remote SizeAll"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontface" : 3,
					"fontsize" : 12.0,
					"id" : "obj-97",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 753.207764, 591.718689, 62.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 88.874474, 129.40509, 273.0, 45.0 ],
					"relative" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "live.slider[4]",
							"parameter_shortname" : "SizeAll",
							"parameter_type" : 0,
							"parameter_mmax" : 9.0,
							"parameter_enum" : [ "0", "0.5", "1", "1.5", "2", "2.5", "3", "3.5", "4" ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.slider[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1203.833374, 705.158264, 124.0, 22.0 ],
					"presentation_rect" : [ 1385.0, 162.67157, 0.0, 0.0 ],
					"style" : "",
					"text" : "tourneurVitesseAll $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1144.333374, 664.628601, 135.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.remote VitesseAll"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontface" : 3,
					"fontsize" : 12.0,
					"id" : "obj-93",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1144.333374, 597.718689, 62.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 88.874474, 68.40509, 273.0, 45.0 ],
					"relative" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "live.slider[1]",
							"parameter_shortname" : "VitesseAll",
							"parameter_type" : 0,
							"parameter_mmax" : 200.0,
							"parameter_enum" : [ "0", "0.5", "1", "1.5", "2", "2.5", "3", "3.5", "4" ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.slider[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 661.041138, 157.761658, 334.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter SizeAll @type float @range 0. 9. @clip both"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 661.041138, 129.761658, 363.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter VitesseAll @type float @range 0. 200. @clip both"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 401.541138, 95.141907, 247.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter popReverse @type impulse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 238.833344, 480.882629, 60.0, 22.0 ],
					"style" : "",
					"text" : "set_bang"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-75",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 238.833344, 510.824585, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 333.207855, 177.587219, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[30]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "Pop",
					"varname" : "live.text[8]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.558253, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 238.833344, 537.871704, 147.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote popReverse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 228.333344, 593.0, 121.0, 22.0 ],
					"style" : "",
					"text" : "tourneurPopReverse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 449.374481, 437.287354, 40.0, 22.0 ],
					"style" : "",
					"text" : "zl.reg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 95.541138, 318.87616, 40.0, 22.0 ],
					"style" : "",
					"text" : "zl.reg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 148.541138, 95.141907, 245.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter Preparation @type impulse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 27.333344, 481.67157, 60.0, 22.0 ],
					"style" : "",
					"text" : "set_bang"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-61",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 27.333344, 511.613525, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 164.874466, 177.587219, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[10]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "Prep",
					"varname" : "live.text[7]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.963735, 1.0, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 46.0, 666.588135, 217.0, 22.0 ],
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
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 27.333344, 538.660645, 143.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote Preparation"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-65",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.0, 576.37616, 81.0, 22.0 ],
					"style" : "",
					"text" : "tourneurPrep"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1067.748901, 169.141907, 60.0, 22.0 ],
					"style" : "",
					"text" : "set_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 984.582275, 298.139526, 60.0, 22.0 ],
					"style" : "",
					"text" : "set_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 817.333374, 298.139526, 60.0, 22.0 ],
					"style" : "",
					"text" : "set_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 396.874481, 322.677307, 60.0, 22.0 ],
					"style" : "",
					"text" : "set_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 249.333344, 265.882629, 60.0, 22.0 ],
					"style" : "",
					"text" : "set_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 22.874475, 197.67157, 60.0, 22.0 ],
					"style" : "",
					"text" : "set_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1266.541138, 350.858215, 30.792236, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.384766, 106.40509, 18.0, 20.0 ],
					"style" : "",
					"text" : "y"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1157.248901, 326.858215, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.384766, 63.40509, 18.0, 20.0 ],
					"style" : "",
					"text" : "x"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1067.248901, 514.0, 193.0, 22.0 ],
					"style" : "",
					"text" : "tourneurStopSolo 2 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1123.248901, 427.587219, 137.0, 22.0 ],
					"style" : "",
					"text" : "tourneurStopSolo $1 $2"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-60",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1123.248901, 396.098145, 74.5, 22.0 ],
					"style" : "",
					"text" : "2 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1179.248901, 363.098145, 79.084473, 22.0 ],
					"style" : "",
					"text" : "pak 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1239.333374, 295.139526, 29.5, 22.0 ],
					"style" : "",
					"text" : "5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1179.248901, 296.139526, 29.5, 22.0 ],
					"style" : "",
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1208.833374, 261.188232, 60.0, 22.0 ],
					"style" : "",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1239.333374, 326.858215, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 363.625366, 123.087219, 25.996094, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1179.248901, 326.858215, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 363.625366, 82.40509, 25.996094, 22.0 ],
					"style" : ""
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
					"patching_rect" : [ 1067.748901, 204.67157, 56.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 349.62146, 154.40509, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[8]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "StopSolo",
					"varname" : "live.text[6]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.558253, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1067.748901, 231.718689, 130.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote StopSolo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 396.874481, 12.612244, 231.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter StopSolo @type impulse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 657.541138, 102.141907, 432.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter SizeSel @type float @priority 6 @range 0. 9. @clip both"
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
					"patching_rect" : [ 620.0, 739.718689, 217.0, 22.0 ],
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
					"patching_rect" : [ 620.0, 700.628601, 113.0, 22.0 ],
					"style" : "",
					"text" : "tourneurSizeSel $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 593.666626, 664.628601, 122.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.remote SizeSel"
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
					"patching_rect" : [ 593.666626, 597.718689, 62.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 88.874474, 99.40509, 273.0, 45.0 ],
					"relative" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "live.slider[16]",
							"parameter_shortname" : "SizeSel",
							"parameter_type" : 0,
							"parameter_mmax" : 9.0,
							"parameter_enum" : [ "0", "0.5", "1", "1.5", "2", "2.5", "3", "3.5", "4" ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.slider[16]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.963735, 1.0, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 989.333374, 763.761658, 217.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote /Agents/agentParameters"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 989.333374, 724.67157, 149.0, 22.0 ],
					"style" : "",
					"text" : "tourneurVitesseSel $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 929.833374, 684.141907, 138.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.remote VitesseSel"
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
					"patching_rect" : [ 929.833374, 617.231995, 62.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 88.874474, 38.40509, 273.0, 45.0 ],
					"relative" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "live.slider[30]",
							"parameter_shortname" : "VitesseSel",
							"parameter_type" : 0,
							"parameter_mmax" : 200.0,
							"parameter_enum" : [ "0", "0.5", "1", "1.5", "2", "2.5", "3", "3.5", "4" ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.slider[30]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 657.541138, 74.141907, 461.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter VitesseSel @type float @priority 6 @range 0. 200. @clip both"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-29",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 984.582275, 337.67157, 46.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 206.874466, 177.587219, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[11]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "Change",
					"varname" : "live.text[5]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.558253, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 984.582275, 364.718689, 123.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote Change"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-26",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 817.333374, 335.182495, 82.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 249.207855, 177.587219, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[7]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "ReverseSel",
					"varname" : "live.text[4]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.558253, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 817.333374, 362.229614, 143.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote ReverseSel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 396.874481, 67.141907, 245.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter ReverseSel @type impulse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 148.541138, 67.141907, 225.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter Change @type impulse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 396.874481, 40.141907, 225.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter Teleport @type impulse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 455.541138, 331.87616, 150.0, 47.0 ],
					"style" : "",
					"text" : "Teleporter le tourneur selectionné à la distance définie"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 517.541138, 407.098145, 127.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.remote Distance"
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
					"patching_rect" : [ 448.541138, 469.287354, 115.0, 22.0 ],
					"style" : "",
					"text" : "tourneurTeleport $1"
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
					"patching_rect" : [ 396.874481, 360.587219, 52.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 291.207855, 177.587219, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[12]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "Teleport",
					"varname" : "live.text[3]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.963735, 1.0, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 448.541138, 519.288269, 217.0, 22.0 ],
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
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 396.874481, 392.076294, 124.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote Teleport"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 704.0, 375.587219, 103.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.remote Sub"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 474.541138, 270.887085, 128.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.remote Distance"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 84.874474, 197.67157, 150.0, 33.0 ],
					"style" : "",
					"text" : "Ajoute un tourneur à une distance définie"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 62.541138, 277.966248, 127.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.remote Distance"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 42.541142, 362.587219, 93.0, 22.0 ],
					"style" : "",
					"text" : "tourneurAdd $1"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontface" : 3,
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 474.541138, 212.67157, 51.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 88.874474, 6.40509, 273.0, 45.0 ],
					"relative" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.slider[34]",
							"parameter_shortname" : "Distance",
							"parameter_type" : 0,
							"parameter_mmin" : 1.0,
							"parameter_mmax" : 4.0,
							"parameter_enum" : [ "0", "0.5", "1", "1.5", "2", "2.5", "3", "3.5", "4" ],
							"parameter_unitstyle" : 1,
							"parameter_steps" : 7
						}

					}
,
					"varname" : "live.slider[3]"
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
					"patching_rect" : [ 249.333344, 295.824585, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 122.874466, 177.587219, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[13]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "Suppr",
					"varname" : "live.text[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"id" : "obj-32",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 22.874475, 232.887085, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.874466, 177.587219, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[14]",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "Ajout",
					"varname" : "live.text[1]"
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
					"patching_rect" : [ 42.541142, 412.588135, 217.0, 22.0 ],
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
					"patching_rect" : [ 249.333344, 322.871704, 100.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote Rm"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.558253, 0.0, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-121",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 22.874475, 262.37616, 102.0, 22.0 ],
					"style" : "",
					"text" : "ossia.remote Add"
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
					"patching_rect" : [ 268.0, 360.587219, 74.0, 22.0 ],
					"style" : "",
					"text" : "tourneurRm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 657.541138, 44.141907, 468.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter Sub @type float @priority 6 @range 0. 1. @clip both @default 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 148.541138, 40.141907, 201.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter Rm @type impulse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 148.541138, 13.688416, 203.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter Add @type impulse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 657.541138, 13.688416, 503.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter Distance @type float @priority 6 @range 1. 4. @clip both @default 4."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 53.041138, 128.141907, 125.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.model Tourneur"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-80",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1011.248901, 427.587219, 97.0, 22.0 ],
					"style" : "",
					"text" : "tourneurChange"
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
					"patching_rect" : [ 704.0, 308.677307, 66.0, 50.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -0.125534, 6.40509, 79.0, 183.0 ],
					"relative" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.slider[33]",
							"parameter_shortname" : "SubTourneur",
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
					"annotation" : "none",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-67",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 850.666687, 420.098145, 117.0, 22.0 ],
					"style" : "",
					"text" : "tourneurReverseSel"
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
					"patching_rect" : [ 704.0, 427.587219, 93.0, 22.0 ],
					"style" : "",
					"text" : "tourneurSub $1"
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
					"patching_rect" : [ 821.541138, 506.209595, 217.0, 22.0 ],
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
					"id" : "obj-38",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 33.833344, 13.688416, 47.0, 42.818848 ],
					"presentation" : 1,
					"presentation_rect" : [ -0.125534, 0.40509, 392.510315, 201.0 ],
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
					"patching_rect" : [ 27.333344, 67.141907, 27.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 84.082237, 6.40509, 288.792236, 168.0 ],
					"proportion" : 0.39,
					"style" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 939.333374, 712.470337, 915.833374, 712.470337, 915.833374, 610.470337, 939.333374, 610.470337 ],
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
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-118", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"midpoints" : [ 258.833344, 349.871704, 238.583344, 349.871704, 238.583344, 253.824585, 258.833344, 253.824585 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 484.041138, 300.0, 459.0, 300.0, 459.0, 207.0, 484.041138, 207.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 32.374475, 292.37616, 11.124475, 292.37616, 11.124475, 190.329041, 32.374475, 190.329041 ],
					"order" : 1,
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"order" : 0,
					"source" : [ "obj-121", 0 ]
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
					"midpoints" : [ 713.5, 403.915649, 690.0, 403.915649, 690.0, 301.915649, 713.5, 301.915649 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 1 ],
					"source" : [ "obj-15", 1 ]
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
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 406.374481, 422.076294, 385.124481, 422.076294, 385.124481, 316.029175, 406.374481, 316.029175 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-22", 1 ]
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
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 826.833374, 389.229614, 806.583374, 389.229614, 806.583374, 289.182495, 826.833374, 289.182495 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-27", 1 ]
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
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-29", 0 ]
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
					"destination" : [ "obj-57", 0 ],
					"midpoints" : [ 994.082275, 391.718689, 973.832275, 391.718689, 973.832275, 291.67157, 994.082275, 291.67157 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
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
					"destination" : [ "obj-36", 0 ],
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
					"midpoints" : [ 603.166626, 692.957031, 579.666626, 692.957031, 579.666626, 590.957031, 603.166626, 590.957031 ],
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
					"destination" : [ "obj-58", 0 ],
					"midpoints" : [ 1077.248901, 258.718689, 1056.998901, 258.718689, 1056.998901, 162.67157, 1077.248901, 162.67157 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-45", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"order" : 1,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"order" : 0,
					"source" : [ "obj-51", 0 ]
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
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"midpoints" : [ 36.833344, 565.660645, 16.583344, 565.660645, 16.583344, 469.613525, 36.833344, 469.613525 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-63", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"midpoints" : [ 1132.748901, 495.898407, 831.041138, 495.898407 ],
					"order" : 1,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 1 ],
					"order" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-65", 0 ]
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
					"destination" : [ "obj-54", 0 ],
					"midpoints" : [ 860.166687, 495.898438, 831.041138, 495.898438 ],
					"source" : [ "obj-67", 0 ]
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
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-77", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 248.333344, 564.871704, 228.083344, 564.871704, 228.083344, 468.824585, 248.333344, 468.824585 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 1 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"midpoints" : [ 1020.748901, 494.898438, 831.041138, 494.898438 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-92", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"midpoints" : [ 1153.833374, 692.957031, 1130.333374, 692.957031, 1130.333374, 590.957031, 1153.833374, 590.957031 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-96", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"midpoints" : [ 762.707764, 686.957031, 739.207764, 686.957031, 739.207764, 584.957031, 762.707764, 584.957031 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-19" : [ "live.text[12]", "live.text[3]", 0 ],
			"obj-34" : [ "live.text[13]", "live.text[3]", 0 ],
			"obj-61" : [ "live.text[10]", "live.text[3]", 0 ],
			"obj-93" : [ "live.slider[1]", "VitesseAll", 0 ],
			"obj-32" : [ "live.text[14]", "live.text[3]", 0 ],
			"obj-71" : [ "live.slider[33]", "SubTourneur", 0 ],
			"obj-28" : [ "live.slider[30]", "VitesseSel", 0 ],
			"obj-33" : [ "live.text[8]", "live.text[3]", 0 ],
			"obj-97" : [ "live.slider[4]", "SizeAll", 0 ],
			"obj-26" : [ "live.text[7]", "live.text[3]", 0 ],
			"obj-42" : [ "live.slider[16]", "SizeSel", 0 ],
			"obj-29" : [ "live.text[11]", "live.text[3]", 0 ],
			"obj-6" : [ "live.slider[34]", "Distance", 0 ],
			"obj-75" : [ "live.text[30]", "live.text[3]", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "set_bang.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/utils",
				"patcherrelativepath" : "../utils",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ossia.remote.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ossia.model.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ossia.parameter.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
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
					"fontface" : [ 3 ],
					"fontsize" : [ 18.0 ],
					"fontname" : [ "Helvetica Neue Bold" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.15 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.556863, 0.556863, 0.556863, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
