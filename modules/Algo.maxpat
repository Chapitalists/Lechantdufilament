{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 4,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 239.0, 183.0, 317.0, 638.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
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
					"bgcolor" : [ 0.45735, 0.45735, 0.45735, 1.0 ],
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 139.157013, 276.747986, 163.0, 27.0 ],
					"style" : "",
					"text" : "Make some ping"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "MSPing.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 7.782986, 273.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 674.624023, 2.0, 339.980988, 317.001984 ],
					"varname" : "MSPing",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.45735, 0.45735, 0.45735, 1.0 ],
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 145.657013, 137.747986, 163.0, 27.0 ],
					"style" : "",
					"text" : "Make some noise"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "MSNoise.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -9.0, -15.0 ],
					"patching_rect" : [ 7.782986, 137.747986, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.624023, 2.0, 209.980988, 317.001984 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.45735, 0.45735, 0.45735, 1.0 ],
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 145.657013, 1.331, 129.0, 27.0 ],
					"style" : "",
					"text" : "Jeu de la Vie"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "none",
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-188",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "GameOfLife.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 7.782986, 1.331, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.662013, 2.0, 328.980988, 317.001984 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.558253, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 363.191162, 1.331, 101.0, 22.0 ],
					"style" : "",
					"text" : "ossia.model Algo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 326.309143, 29.830999, 70.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"style" : "",
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-7",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 326.309143, 1.331, 25.0, 25.0 ],
					"style" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-188::obj-11" : [ "live.text[1]", "live.text[1]", 0 ],
			"obj-3::obj-86" : [ "live.slider[11]", "PINGSub", 0 ],
			"obj-1::obj-28" : [ "live.slider[6]", "MSNSub", 0 ],
			"obj-188::obj-7" : [ "live.text[5]", "live.text", 0 ],
			"obj-188::obj-145" : [ "live.slider[18]", "Densite", 0 ],
			"obj-188::obj-28" : [ "live.slider[4]", "GOLSub", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "GameOfLife.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/modules",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "-rs.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/utils",
				"patcherrelativepath" : "../utils",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "set_bang.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/utils",
				"patcherrelativepath" : "../utils",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "MSNoise.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/modules",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "MakeSomeNoise.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/modules",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "MSPing.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/modules",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "AudioPing.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/modules",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "TapRythm.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/modules",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "m-countbang.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/dependencies/MX",
				"patcherrelativepath" : "../dependencies/MX",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Multidelays.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/modules",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "m-multidel.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/dependencies/MX",
				"patcherrelativepath" : "../dependencies/MX",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "MakeSomePings.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/modules",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "m-del.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/dependencies/MX",
				"patcherrelativepath" : "../dependencies/MX",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "m-lramp.maxpat",
				"bootpath" : "~/Workspace/Lechantdufilament/dependencies/MX",
				"patcherrelativepath" : "../dependencies/MX",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
