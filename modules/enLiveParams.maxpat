{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 452.0, 226.0, 837.0, 604.0 ],
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
					"id" : "obj-56",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 489.0, 35.0, 341.0, 35.0 ],
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
					"patching_rect" : [ 489.0, 337.86441, 316.0, 36.0 ],
					"style" : "",
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
					"patching_rect" : [ 489.0, 277.291534, 335.0, 36.0 ],
					"style" : "",
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
					"patching_rect" : [ 489.0, 216.718628, 336.0, 36.0 ],
					"style" : "",
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
					"patching_rect" : [ 489.0, 156.145767, 327.0, 36.0 ],
					"style" : "",
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
					"patching_rect" : [ 489.0, 95.572884, 327.0, 36.0 ],
					"style" : "",
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
					"patching_rect" : [ 45.0, 228.0, 393.0, 22.0 ],
					"style" : "",
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
					"patching_rect" : [ 40.0, 195.0, 393.0, 22.0 ],
					"style" : "",
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
					"patching_rect" : [ 41.0, 415.0, 359.0, 22.0 ],
					"style" : "",
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
					"patching_rect" : [ 41.0, 457.0, 245.0, 22.0 ],
					"style" : "",
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
					"patching_rect" : [ 41.0, 373.0, 387.0, 22.0 ],
					"style" : "",
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
					"patching_rect" : [ 45.0, 330.0, 387.0, 22.0 ],
					"style" : "",
					"text" : "ossia.parameter freezerDecFrames @type int @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 45.0, 297.0, 382.0, 22.0 ],
					"style" : "",
					"text" : "ossia.parameter freezerIncFrames @type int @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 45.0, 263.0, 373.0, 22.0 ],
					"style" : "",
					"text" : "ossia.parameter freezerEnergy @type float @repetitions 0 @rate 25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 36.0, 152.0, 409.0, 22.0 ],
					"style" : "",
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
					"patching_rect" : [ 36.0, 116.0, 409.0, 22.0 ],
					"style" : "",
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
					"patching_rect" : [ 36.0, 82.0, 409.0, 22.0 ],
					"style" : "",
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
					"patching_rect" : [ 36.0, 35.0, 248.0, 22.0 ],
					"style" : "",
					"text" : "ossia.parameter prepFreezer @type impulse"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "ossia.parameter.mxe64",
				"type" : "mx64"
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
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.556863, 0.556863, 0.556863, 1.0 ],
					"fontface" : [ 3 ],
					"fontsize" : [ 18.0 ],
					"fontname" : [ "Helvetica Neue Bold" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.15 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
