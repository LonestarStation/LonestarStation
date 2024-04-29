/datum/gear/contraband
	display_name = "ambrosia box"
	description = "A box of a familiar plant."
	path = /obj/item/storage/box/ambrosia_grown
	cost = 1
	sort_category = "Contraband"

/datum/gear/contraband/pills
	display_name = "unlabeled pill bottle"
	description = "A pill bottle of more... recreational sorts."
	path = /obj/item/storage/pill_bottle
	cost = 2

/datum/gear/contraband/pills/New()
	..()
	var/drug_type = list()
	drug_type["Bliss"] = /obj/item/storage/pill_bottle/bliss
	drug_type["Snowflake"] = /obj/item/storage/pill_bottle/snowflake
	drug_type["Royale"] = /obj/item/storage/pill_bottle/royale
	drug_type["Sinkhole"] = /obj/item/storage/pill_bottle/sinkhole
	drug_type["Colorspace"] = /obj/item/storage/pill_bottle/colorspace
	drug_type["Schnappi"] = /obj/item/storage/pill_bottle/schnappi
	gear_tweaks += new/datum/gear_tweak/path(drug_type)

/datum/gear/contraband/rollingpaper
	display_name = "rolling papers"
	description = "Paper for rolling various smokeables. Now you just need something to roll up inside..."
	path = /obj/item/storage/rollingpapers
	cost = 1

/datum/gear/contraband/rollingpaper/New()
	..()
	var/paperselect = list("rolling papers" = /obj/item/storage/rollingpapers,
							"blunt wrappers" = /obj/item/storage/rollingpapers/blunt)
	gear_tweaks += new/datum/gear_tweak/path(paperselect)

/datum/gear/contraband/pepperspray
	display_name = "personal pepper spray"
	description = "A smaller bottle of pepper spray, it's less powerful than the security standard issue."
	path = /obj/item/reagent_containers/spray/pepper/small
	cost = 2

/datum/gear/contraband/phasepistol
	display_name = "phase pistol"
	description = "A phase pistol designed for handling the typical wildlife found on Sif. Not particularly effective against anything else..."
	path = /obj/item/gun/energy/phasegun/pistol
	cost = 2

/datum/gear/contraband/knives /// Steel by default
	display_name = "knife selection"
	description = "Steel knives in various designs."
	path = /obj/item/material/knife
	cost = 2

/datum/gear/contraband/knives/New()
	..()
	var/knife = list()
	knife["boot knife"] = /obj/item/material/knife/tacknife/boot
	knife["butterfly knife"] = /obj/item/material/butterfly
	knife["switchblade"] = /obj/item/material/butterfly/switchblade
	knife["boxcutter"] = /obj/item/material/butterfly/boxcutter
	knife["survival knife"] = /obj/item/material/knife/tacknife/survival
	gear_tweaks += new/datum/gear_tweak/path(knife)

/*
/datum/gear/contraband/zipgun
	display_name = "zip gun"
	description = "A single shot gun. You can't quite remember what ammo it used..." /// It randomizes from a list of (potentially shitty) ammunition.
	path = /obj/item/gun/projectile/pirate
	cost = 10
*/

/datum/gear/contraband/handgun
	display_name = "hand gun selection"
	description = "A small firearm."
	path = /obj/item/gun/projectile
	cost = 5

/datum/gear/contraband/handgun/New()
	..()
	var/gun_type = list()
	gun_type[".45 Pistol"] = /obj/item/gun/projectile/colt/empty
	gun_type["Compact Pistol"] = /obj/item/gun/projectile/pistol/empty
	gun_type["Derringer"] = /obj/item/gun/projectile/derringer/empty
	gun_type["Jindal T15 Chooha"] = /obj/item/gun/projectile/luger/empty
	gun_type["9mm Pistol"] = /obj/item/gun/projectile/p92x/empty
	gun_type["Revolver"] = /obj/item/gun/projectile/revolver/empty
	gun_type["Patrol Revolver"] = /obj/item/gun/projectile/revolver/webley/empty
	gear_tweaks += new/datum/gear_tweak/path(gun_type)