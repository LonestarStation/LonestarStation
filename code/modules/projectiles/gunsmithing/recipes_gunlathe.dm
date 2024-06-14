/*
//
//This is how you bake a pretty cake:
//
/datum/gun_recipe/example
	reagents = list("sodiumchloride" = 2, "goop" = 5)
	items = list(
		/obj/item/gun_part_list,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/gun_part_last
	)
	result = /obj/item/gun/projectile/pea_shooter
//
//Thats the way you do it.
//

//Obviously don't uncomment the above.
*/

/datum/recipe/pistol_colt
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/pistol/colt,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/slide,
		/obj/item/gun_parts/trigger/semi_auto,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/colt

/datum/recipe/pistol_sec
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/pistol/sec,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/slide,
		/obj/item/gun_parts/trigger/semi_auto,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/colt

/datum/recipe/pistol_deagle
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/pistol/deagle,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/slide,
		/obj/item/gun_parts/trigger/semi_auto,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/deagle

/datum/recipe/pistol_compact
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/pistol/compact,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/slide,
		/obj/item/gun_parts/trigger/semi_auto,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/compact

/datum/recipe/derringer
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/pistol/derringer,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/derringer

/datum/recipe/pistol_luger
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/pistol/luger,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/trigger/semi_auto,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/luger

/datum/recipe/pistol_p92x
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/pistol/p92x,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/slide,
		/obj/item/gun_parts/trigger/semi_auto,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/p92x

/datum/recipe/compact_45
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/pistol/compact_45,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/slide,
		/obj/item/gun_parts/trigger/semi_auto,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/compact_45

/datum/recipe/mini_uzi
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/pistol/mini_uzi,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/slide,
		/obj/item/gun_parts/trigger/automatic,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/mini_uzi

/datum/recipe/revolver_colt
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/revolver/colt,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/cylinder,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/revolver_colt

/datum/recipe/revolver_gold
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/revolver/gold,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/cylinder,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/gold,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/revolver_gold

/datum/recipe/mateba
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/revolver/mateba,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/cylinder,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/mateba

/datum/recipe/deckard
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/revolver/deckard,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/cylinder,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/deckard

/datum/recipe/judge
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/revolver/judge,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/cylinder,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/judge

/datum/recipe/lemat
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/revolver/lemat,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/cylinder,
		/obj/item/gun_parts/cylinder,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/lemat

/datum/recipe/revolver_webley
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/revolver/webley,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/cylinder,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/webley

/datum/recipe/revolver_auto
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/revolver/auto,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/cylinder,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/webley_auto

/datum/recipe/revolver_heavy
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/revolver/heavy,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/cylinder,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/webley_auto

/datum/recipe/revolver_magnetic
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/revolver/magnetic,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/cylinder,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stock_parts/capacitor,
		/obj/item/stack/material/plasteel,
		/obj/item/stack/material/plasteel,
		/obj/item/stack/material/plasteel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/webley_magnetic

/datum/recipe/contender
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/revolver/contender,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/cylinder,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/contender

/datum/recipe/dartgun
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/dart/dartgun,
		/obj/item/gun_parts/barrel/short,
		/obj/item/stock_parts/scanning_module,
		/obj/item/gun_parts/trigger/semi_auto,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/glass,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/dartgun

/datum/recipe/proto_dartgun
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/dart/prototype,
		/obj/item/gun_parts/barrel/short,
		/obj/item/stock_parts/scanning_module/phasic,
		/obj/item/gun_parts/trigger/semi_auto,
		/obj/item/stack/material/plasteel,
		/obj/item/stack/material/glass,
		/obj/item/stack/material/glass,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/proto_dartgun

//Scatterguns VVV (shotguns)

/datum/recipe/pumpshotgun
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/shotgun/pump,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/stock_wood,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/fuel/wood,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/pumpshotgun

/datum/recipe/combatshotgun
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/shotgun/combat,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/stock_steel,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/combatshotgun

/datum/recipe/doublebarrel
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/shotgun/doublebarrel,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/stock_wood,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/doublebarrelshotgun

/datum/recipe/sawn
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/shotgun/sawn,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/sawnshotgun

/datum/recipe/semishotgun
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/shotgun/semi,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/trigger/semi_auto,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/stock_wood,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/fuel/wood,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/semishotgun

/datum/recipe/autoshotgun
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/shotgun/auto,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short, //6
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short,
		/obj/item/gun_parts/barrel/short, //12, yes twelve. the drum even vanishes after you finish it I'm sure. TO-DO
		/obj/item/gun_parts/trigger/automatic,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/stock_steel,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/autoshotgun

//Longarms VVV (rifles)

/datum/recipe/boltactionrifle
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/rifle/bolt,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/bolt,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/stock_wood,
		/obj/item/stack/material/fuel/wood,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/boltaction

/datum/recipe/practice_boltaction
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/rifle/practice,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/bolt,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/stock_wood,
		/obj/item/stack/material/fuel/wood,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/practice_boltaction

/datum/recipe/ceremonial_boltaction
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/rifle/ceremonial,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/bolt,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/stock_wood,
		/obj/item/stack/material/fuel/wood,
		/obj/item/stack/material/fuel/wood,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/ceremonial

/datum/recipe/leveractionrifle
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/rifle/lever,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/stock_wood,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/fuel/wood,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/leveraction

/datum/recipe/brushgun
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/rifle/brushgun,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/bolt,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/stock_wood,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/fuel/wood,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/brushgun

/datum/recipe/garand
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/rifle/garand,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/bolt,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/stock_wood,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/fuel/wood,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/garand

/datum/recipe/revolvingrifle
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/rifle/revolvingrifle,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/cylinder,
		/obj/item/gun_parts/trigger/single,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/stock_wood,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/fuel/wood,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/revolvingrifle

/datum/recipe/SVD
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/rifle/SVD,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/bolt,
		/obj/item/gun_parts/trigger/semi_auto,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/stock_wood,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/fuel/wood,
		/obj/item/stack/material/fuel/wood,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/SVD

/*

//Ammo Eaters VVV (automatic weapons)

/datum/recipe/advanced_smg
	appliance = GUN_LATHE
	items = list(
		/obj/item/gunschematic/rifle/advanced_smg,
		/obj/item/gun_parts/barrel/long,
		/obj/item/gun_parts/bolt,
		/obj/item/gun_parts/trigger/semi_auto,
		/obj/item/gun_parts/hammer_pin,
		/obj/item/gun_parts/stock_wood,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/steel,
		/obj/item/stack/material/fuel/wood,
		/obj/item/stack/material/fuel/wood,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring,
		/obj/item/stock_parts/spring
	)
	result = /obj/item/unfinished_gun/advanced_smg

/obj/item/gunschematic/automatic/advanced_smg
	name = "advanced SMG"
	desc = "An advanced submachine gun with a reflective laser optic that makes burst fire less inaccurate than other SMGs. Uses 9mm rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Sheet (2), Spring (6)."
	gun_brand = "Unknown"

/obj/item/gunschematic/automatic/c20r
	name = "submachine gun"
	desc = "The C-20r is a lightweight and rapid firing SMG, for when you REALLY need someone dead. It has 'Scarborough Arms - Per falcis, per pravitas', inscribed on the stock. Uses 10mm rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (4), Spring (4)."
	gun_brand = "Scarborough Arms"

/obj/item/gunschematic/automatic/sts35
	name = "assault rifle"
	desc = "The rugged Jindal Arms STS-35 is a durable automatic weapon of a make popular on the frontier worlds. Uses 5.45mm rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (4), Spring (4)."
	gun_brand = "Jindal Arms"

/obj/item/gunschematic/automatic/wt550
	name = "machine pistol"
	desc = "The WT550 Saber is a cheap self-defense weapon mass-produced by Ward-Takahashi for paramilitary and private use. Uses 9mm rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (2), Spring (4)."
	gun_brand = "Ward-Takahashi"

/obj/item/gunschematic/automatic/z8
	name = "battle rifle"
	desc = "The Z8 Bulldog is an older model battle rifle, made by the now defunct Zendai Foundries. Makes you feel like an old-school badass when you hold it, even though it can only hold 10 round magazines. Uses 7.62mm rounds and has an under barrel grenade launcher."
	description_fluff = "Requires: Schematic, Long Barrel, Short Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (4), Spring (6)."
	gun_brand = "Hephaestus Industries"

/obj/item/gunschematic/automatic/l6_saw
	name = "light machine gun"
	desc = "A rather sturdily made L6 SAW with a reassuringly ergonomic pistol grip. 'Hephaestus Industries' is engraved on the reciever. Uses 5.45mm rounds. It's also compatible with magazines from STS-35 assault rifles."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (6), Spring (6)."
	gun_brand = "Hephaestus Industries"

/obj/item/gunschematic/automatic/p90
	name = "personal defense weapon"
	desc = "The H90K is a compact, large capacity submachine gun produced by MarsTech. Despite its fierce reputation, it still manages to feel like a toy. Uses 9mm rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (4), Spring (4)."
	gun_brand = "Unknown"

/obj/item/gunschematic/automatic/pearlshield
	name = "\improper Tajaran PDW"
	desc = "A century old Rhemazar military weapon adapted to use human-standard cartridges, the PCA-A9 Karik has been the standard submachine gun of the Pearlshield military since 2549. Uses 9mm rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (4), Spring (4)."

/obj/item/gunschematic/automatic/tommygun
	name = "\improper Tommy Gun"
	desc = "This weapon was made famous by gangsters in the 20th century. Cybersun Industries is currently reproducing these for a target market of historic gun collectors and classy criminals. Uses .45 rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (6), Spring (6)."
	gun_brand = "Unknown"

/obj/item/gunschematic/automatic/combatsmg
	name = "\improper PP3 Ten"
	desc = "The Bishamonten PP3 Ten personal defense weapon is a rare design much sought after - though more for its looks than its functionality. Uses 9mm rounds."
	description_fluff = "Parts List."
	gun_brand = "Requires: Schematic, Short Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (4), Plastic Sheet (2), Spring (6)."
*/

