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
		"rect" : [ 163.0, 378.0, 837.0, 604.0 ],
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
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 519.5, 476.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter nMultiMap @type int @range 0 20 @clip both @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 491.0, 399.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter vecPhaseMultiMap @type float @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 461.0, 390.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter vecAmpMultiMap @type float @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 569.0, 29.63562, 341.0, 35.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter errantsSpeed @type int @default 100 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 569.0, 332.5, 316.0, 35.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter errantInsideDist @type int @default 100 @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 569.0, 271.927155, 335.0, 35.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter errantSquareDY @type float @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 569.0, 211.354248, 336.0, 35.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter errantSquareDX @type float @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 569.0, 150.781372, 327.0, 35.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter errantSquareY @type float @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 569.0, 90.208496, 327.0, 35.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter errantSquareX @type float @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 84.0, 393.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter sorbetiereSpaceY @type float @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 21.0, 52.0, 393.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter sorbetiereSpaceX @type float @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 245.0, 359.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter freezerSize @type float @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 276.0, 245.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter freezerStop @type impulse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 215.0, 387.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter freezerFrameLaps @type int @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 186.0, 534.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter freezerDecFrames @type int @range 1 5000 @clip both @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 153.0, 528.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter freezerIncFrames @type int @range 1 5000 @clip both @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 119.0, 520.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter freezerEnergy @type float @range 0.05 1. @clip both @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 394.0, 409.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter sorbetiereTranslateY @type float @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 368.0, 409.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter sorbetiereTranslateX @type float @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 339.0, 409.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter sorbetiereSpaceSize @type float @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 21.0, 15.0, 248.0, 22.0 ],
					"style" : "Jamoma_highlighted_orange",
					"text" : "ossia.parameter prepFreezer @type impulse"
				}

			}
 ],
		"lines" : [  ],
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
					"fontsize" : [ 18.0 ],
					"fontname" : [ "Helvetica Neue Bold" ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.15 ],
					"accentcolor" : [ 0.556863, 0.556863, 0.556863, 1.0 ],
					"fontface" : [ 3 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
