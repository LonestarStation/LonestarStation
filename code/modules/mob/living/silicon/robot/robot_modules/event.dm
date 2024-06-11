/* Other, unaffiliated modules */

// The module that borgs on the surface have.  Generally has a lot of useful tools in exchange for questionable loyalty to the crew.
/obj/item/robot_module/robot/lost
	name = "lost robot module"
	display_name = "Unregistered"
	module_category = ROBOT_MODULE_TYPE_FLYING
	unavailable_by_default = TRUE
	hide_on_manifest = TRUE
	sprites = list(
					"Drone" = "drone-lost"
	)
	modules = list(
		/obj/item/melee/baton/shocker/robot,
		/obj/item/handcuffs/cyborg,
		/obj/item/borg/combat/shield,
		/obj/item/healthanalyzer,
		/obj/item/reagent_containers/borghypo/lost,
		/obj/item/weldingtool/electric/mounted,
		/obj/item/tool/screwdriver/cyborg,
		/obj/item/tool/wrench/cyborg,
		/obj/item/tool/wirecutters/cyborg,
		/obj/item/multitool,
		/obj/item/robotanalyzer,
		/obj/item/stack/cable_coil/cyborg
	)
	emag = /obj/item/gun/energy/retro/mounted
	synths = list(
		/datum/matter_synth/wire
	)

/obj/item/robot_module/robot/lost/finalize_synths()
	. = ..()
	var/datum/matter_synth/wire/wire = locate() in synths
	var/obj/item/stack/cable_coil/cyborg/C = locate() in modules
	C.synths = list(wire)

/obj/item/robot_module/robot/gravekeeper
	name = "gravekeeper robot module"
	display_name = "Gravekeeper"
	unavailable_by_default = TRUE
	hide_on_manifest = TRUE
	sprites = list(
					"Gravekeeper" = "sleek-gravekeeper"
	)
	modules = list(
		/obj/item/melee/baton/shocker/robot,
		/obj/item/borg/combat/shield,
		/obj/item/weldingtool/electric/mounted,
		/obj/item/tool/screwdriver/cyborg,
		/obj/item/tool/wrench/cyborg,
		/obj/item/material/minihoe,
		/obj/item/material/knife/machete/hatchet,
		/obj/item/analyzer/plant_analyzer,
		/obj/item/storage/bag/plants,
		/obj/item/robot_harvester,
		/obj/item/shovel,
		/obj/item/gripper/gravekeeper
	)
	emag = /obj/item/gun/energy/retro/mounted
	synths = list(
		/datum/matter_synth/wood = 25000
	)

/obj/item/robot_module/robot/gravekeeper/finalize_synths()
	. = ..()
	var/datum/matter_synth/wood/wood = locate() in synths
	var/obj/item/stack/material/cyborg/wood/W = locate() in modules
	W.synths = list(wood)
	src.modules += W

//Lonestar Ed.
//booze bot
/obj/item/robot_module/robot/booze_bot
	display_name = "Boozebot"
	sprites = list(
		"Waiter" = "Service2",
		"Waitress" = "Service",
		"Bro" = "Brobot",
		"Rich" = "maximillion",
		"Red Dress" = "rowtree-lucy",
	)

	modules = list(
		/obj/item/gripper/omni,
		/obj/item/reagent_containers/glass/bucket,
		/obj/item/storage/bag/plants,
		/obj/item/material/knife,
		/obj/item/tool/wrench/cyborg,
		/obj/item/pen/robopen,
		/obj/item/multitool,
		/obj/item/reagent_containers/dropper/industrial,
		/obj/item/tray/robotray,
		/obj/item/reagent_containers/borghypo/service,
		/obj/item/flame/lighter/zippo,
		/obj/item/rsf,
		/obj/item/handcuffs/cyborg
	)
	emag = /obj/item/reagent_containers/food/drinks/bottle/small/beer

/obj/item/robot_module/robot/booze_bot/finalize_emag()
	. = ..()
	if(!emag.reagents)
		emag.create_reagents(50)
	else
		emag.reagents.clear_reagents()
	emag.reagents.add_reagent("beer2", 50)
	emag.name = "Mickey Finn's Special Brew"

/obj/item/robot_module/robot/clerical/butler/finalize_equipment()
	. = ..()
	var/obj/item/rsf/M = locate() in modules
	M.stored_matter = 30
	var/obj/item/flame/lighter/zippo/L = locate() in modules
	L.lit = TRUE

/*
/obj/item/robot_module/robot/booze_bot
	name = "booze bot module"
	display_name = "Boozebot"
	unavailable_by_default = TRUE
	hide_on_manifest = TRUE
	sprites = list(
					"Waiter" = "Service2",
					"Waitress" = "Service",
					"Frat Bot" = "Brobot",
					"Rich Tastes" = "maximillion",
					"Classy Lady" = "rowtree-lucy",
				)

/obj/item/robot_module/robot/booze_bot/New()
	..()
	src.modules += new /obj/item/gripper/omni(src)
	src.modules += new /obj/item/pen/robopen(src)
	src.modules += new /obj/item/storage/bag/plants(src)
	src.modules += new /obj/item/tool/wrench/cyborg(src)
	src.modules += new /obj/item/material/knife(src)
	src.modules += new /obj/item/multitool(src) //to freeze trays

	var/obj/item/rsf/M = new /obj/item/rsf(src)
	M.stored_matter = 30
	src.modules += M

	src.modules += new /obj/item/reagent_containers/dropper/industrial(src)

	var/obj/item/flame/lighter/zippo/L = new /obj/item/flame/lighter/zippo(src)
	L.lit = 1
	src.modules += L

	src.modules += new /obj/item/tray/robotray(src)
	src.modules += new /obj/item/reagent_containers/borghypo/service(src)
	src.emag = new /obj/item/handcuffs/cyborg(src)
	src.emag = new /obj/item/gun/energy/retro/mounted(src)
	src.emag = new /obj/item/reagent_containers/food/drinks/bottle/small/beer(src)

	var/datum/reagents/R = new/datum/reagents(50)
	src.emag.reagents = R
	R.my_atom = src.emag
	R.add_reagent("beer2", 50)
	src.emag.name = "Mickey Finn's Special Brew"
*/