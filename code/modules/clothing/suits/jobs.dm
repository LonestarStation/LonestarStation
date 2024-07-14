/*
 * Job related
 */

//Botanist
/obj/item/clothing/suit/storage/apron
	name = "apron"
	desc = "A basic blue apron."
	icon_state = "apron"
	item_state_slots = list(slot_r_hand_str = "overalls", slot_l_hand_str = "overalls")
	blood_overlay_type = "armor"
	body_parts_covered = 0
	allowed = list (/obj/item/reagent_containers/spray/plantbgone, /obj/item/analyzer/plant_analyzer, /obj/item/seeds,
	/obj/item/reagent_containers/glass/bottle, /obj/item/material/minihoe)

/obj/item/clothing/suit/storage/apron/white
	name = "white apron"
	desc = "A basic white apron."
	icon_state = "apron_white"
	item_state_slots = list(slot_r_hand_str = "apronchef", slot_l_hand_str = "apronchef")

//Captain
/obj/item/clothing/suit/captunic
	name = "site manager's parade tunic"
	desc = "Worn by a Site Manager to show their class."
	icon_state = "captunic"
	body_parts_covered = UPPER_TORSO|ARMS
	flags_inv = HIDEJUMPSUIT|HIDETIE|HIDEHOLSTER

/obj/item/clothing/suit/captunic/capjacket
	name = "site manager's uniform jacket"
	desc = "A less formal jacket for everyday Site Manager use."
	icon_state = "capjacket"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	flags_inv = HIDEHOLSTER

//Chaplain
/obj/item/clothing/suit/storage/hooded/chaplain_hoodie
	name = "chaplain hoodie"
	desc = "This suit says to you \"Hush\"!"
	icon_state = "chaplain_hoodie"
	item_state_slots = list(slot_r_hand_str = "suit_black", slot_l_hand_str = "suit_black")
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	flags_inv = HIDEHOLSTER
	hoodtype = /obj/item/clothing/head/chaplain_hood
	allowed = list (/obj/item/storage/bible)

//Chaplain but spookier
/obj/item/clothing/suit/storage/hooded/chaplain_hoodie/whiteout
	name = "white robe"
	desc = "A long, flowing white robe. It looks comfortable, but not very warm."
	icon_state = "whiteout_robe"
	item_state_slots = list(slot_r_hand_str = "suit_white", slot_l_hand_str = "suit_white")
	flags_inv = HIDETIE|HIDEHOLSTER
	hoodtype = /obj/item/clothing/head/chaplain_hood/whiteout

//Chaplain
/obj/item/clothing/suit/nun
	name = "nun robe"
	desc = "Maximum piety in this star system."
	icon_state = "nun"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	flags_inv = HIDESHOES|HIDEJUMPSUIT|HIDETIE|HIDEHOLSTER

//Chef
/obj/item/clothing/suit/chef
	name = "chef's apron"
	desc = "An apron used by a high class chef."
	icon_state = "chef"
	gas_transfer_coefficient = 0.90
	permeability_coefficient = 0.50
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	flags_inv = HIDETIE|HIDEHOLSTER
	allowed = list (/obj/item/material/knife)

//Chef
/obj/item/clothing/suit/chef/classic
	name = "classic chef's apron"
	desc = "A basic, dull, white chef's apron."
	icon_state = "apronchef"
	blood_overlay_type = "armor"
	body_parts_covered = 0
	flags_inv = 0

//Security
/obj/item/clothing/suit/security/navyofficer
	name = "security officer's jacket"
	desc = "This jacket is for those special occasions when a security officer actually feels safe."
	icon_state = "officerbluejacket"
	item_state_slots = list(slot_r_hand_str = "suit_navy", slot_l_hand_str = "suit_navy")
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	flags_inv = HIDEHOLSTER

/obj/item/clothing/suit/security/navywarden
	name = "warden's jacket"
	desc = "Perfectly suited for the warden that wants to leave an impression of style on those who visit the brig."
	icon_state = "wardenbluejacket"
	item_state_slots = list(slot_r_hand_str = "suit_navy", slot_l_hand_str = "suit_navy")
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	flags_inv = HIDEHOLSTER

/obj/item/clothing/suit/security/navyhos
	name = "head of security's jacket"
	desc = "This piece of clothing was specifically designed for asserting superior authority."
	icon_state = "hosbluejacket"
	item_state_slots = list(slot_r_hand_str = "suit_navy", slot_l_hand_str = "suit_navy")
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	flags_inv = HIDEHOLSTER

/obj/item/clothing/suit/storage/sheriff_coat
	name = "\improper Sheriff's trenchcoat"
	desc = "A rugged canvas trenchcoat, designed and created for the Sheriffs of Lonestar Station. The coat is externally impact resistant and has an interior lead layer for slight rad protection!"
	icon_state = "sheriff_coat"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	flags_inv = HIDEHOLSTER
	allowed = list(/obj/item/tank/emergency/oxygen, /obj/item/flashlight, /obj/item/gun/energy, /obj/item/gun/projectile, /obj/item/ammo_magazine,
	/obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/handcuffs, /obj/item/storage/fancy/cigarettes, /obj/item/flame/lighter,
	/obj/item/taperecorder)
	armor = list(melee = 50, bullet = 40, laser = 40, energy = 15, bomb = 15, bio = 5, rad = 5)

//Detective
/obj/item/clothing/suit/storage/det_trench
	name = "brown trenchcoat"
	desc = "A rugged canvas trenchcoat, designed and created by TX Fabrication Corp. The coat is externally impact resistant - perfect for your next act of autodefenestration!"
	icon_state = "detective"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS
	flags_inv = HIDEHOLSTER
	allowed = list(/obj/item/tank/emergency/oxygen, /obj/item/flashlight, /obj/item/gun/energy, /obj/item/gun/projectile, /obj/item/ammo_magazine,
	/obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/handcuffs, /obj/item/storage/fancy/cigarettes, /obj/item/flame/lighter,
	/obj/item/taperecorder, /obj/item/uv_light)
	armor = list(melee = 10, bullet = 10, laser = 15, energy = 10, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/det_trench/grey
	name = "grey trenchcoat"
	icon_state = "detective2"
	item_state_slots = list(slot_r_hand_str = "leather_jacket", slot_l_hand_str = "leather_jacket")
	flags_inv = HIDEHOLSTER

//Forensics
/obj/item/clothing/suit/storage/forensics
	name = "forensics windbreaker"
	desc = "A forensics technician jacket."
	body_parts_covered = UPPER_TORSO|ARMS
	flags_inv = HIDEHOLSTER
	allowed = list(/obj/item/tank/emergency/oxygen, /obj/item/flashlight, /obj/item/gun/energy, /obj/item/gun/projectile, /obj/item/ammo_magazine,
	/obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/handcuffs, /obj/item/storage/fancy/cigarettes, /obj/item/flame/lighter,
	/obj/item/taperecorder, /obj/item/uv_light)
	armor = list(melee = 10, bullet = 10, laser = 15, energy = 10, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/forensics/red
	name = "red forensics windbreaker"
	desc = "A red forensics technician jacket."
	icon_state = "forensics_red"
	item_state_slots = list(slot_r_hand_str = "suit_red", slot_l_hand_str = "suit_red")

/obj/item/clothing/suit/storage/forensics/red/long
	name = "long red forensics windbreaker"
	desc = "A long red forensics technician jacket."
	icon_state = "forensics_red_long"

/obj/item/clothing/suit/storage/forensics/blue
	name = "blue forensics windbreaker"
	desc = "A blue forensics technician jacket."
	icon_state = "forensics_blue"
	item_state_slots = list(slot_r_hand_str = "suit_navy", slot_l_hand_str = "suit_navy")

/obj/item/clothing/suit/storage/forensics/blue/long
	name = "long blue forensics windbreaker."
	desc = "A long blue forensics technician jacket."
	icon_state = "forensics_blue_long"

//Engineering
/obj/item/clothing/suit/storage/hazardvest
	name = "hazard vest"
	desc = "A high-visibility vest used in work zones."
	icon_state = "hazard"
	blood_overlay_type = "armor"
	allowed = list (/obj/item/analyzer, /obj/item/flashlight, /obj/item/multitool, /obj/item/pipe_painter, /obj/item/radio, /obj/item/t_scanner,
	/obj/item/tool/crowbar, /obj/item/tool/screwdriver, /obj/item/weldingtool, /obj/item/tool/wirecutters, /obj/item/tool/wrench, /obj/item/tank/emergency/oxygen,
	/obj/item/clothing/mask/gas, /obj/item/taperoll/engineering)
	body_parts_covered = UPPER_TORSO
	var/open = 0	//0 is closed, 1 is open, -1 means it won't be able to toggle

/obj/item/clothing/suit/storage/hazardvest/verb/Toggle()
	set name = "Toggle Hazard Vest"
	set category = "Object"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return 0
	if(open == 1)
		open = 0
		icon_state = initial(icon_state)
		to_chat(usr, "You fasten up the [src]].")
	else if(open == 0)
		open = 1
		icon_state = "[icon_state]_open"
		to_chat(usr, "You unfasten the [src]].")
	else
		to_chat(usr, "You attempt to button-up the velcro on your [src], before promptly realising how silly you are.")
		return
	update_clothing_icon()

/obj/item/clothing/suit/storage/hazardvest/blue
	name = "blue hazard vest"
	desc = "A high-visibility vest used in work zones. This one is blue!"
	icon_state = "hazard_b"

/obj/item/clothing/suit/storage/hazardvest/green
	name = "green hazard vest"
	desc = "A high-visibility vest used by emergency responders. This one is green!"
	icon_state = "hazard_g"

/obj/item/clothing/suit/storage/hazardvest/white
	name = "white hazard vest"
	desc = "A high-visibility vest used in work zones. This one is white!"
	icon_state = "hazard_w"

//Lawyer
/obj/item/clothing/suit/storage/toggle/lawyer/bluejacket
	name = "blue suit jacket"
	desc = "A snappy dress jacket."
	icon_state = "suitjacket_blue"
	item_state_slots = list(slot_r_hand_str = "suit_blue", slot_l_hand_str = "suit_blue")
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS

/obj/item/clothing/suit/storage/toggle/lawyer/purpjacket
	name = "purple suit jacket"
	desc = "A snappy dress jacket."
	icon_state = "suitjacket_purp"
	item_state_slots = list(slot_r_hand_str = "suit_purple", slot_l_hand_str = "suit_purple")
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS

//Internal Affairs
/obj/item/clothing/suit/storage/toggle/internalaffairs
	name = "black suit jacket"
	desc = "A smooth black jacket."
	icon_state = "ia_jacket"
	item_state_slots = list(slot_r_hand_str = "suit_black", slot_l_hand_str = "suit_black")
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS

//Medical
/obj/item/clothing/suit/storage/toggle/fr_jacket
	name = "first responder jacket"
	desc = "A high-visibility jacket worn by medical first responders."
	icon_state = "fr_jacket"
	item_state_slots = list(slot_r_hand_str = "fr_jacket", slot_l_hand_str = "fr_jacket")
	blood_overlay_type = "armor"
	allowed = list(/obj/item/stack/medical, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/hypospray, /obj/item/reagent_containers/syringe,
	/obj/item/healthanalyzer, /obj/item/flashlight, /obj/item/radio, /obj/item/tank/emergency/oxygen)
	body_parts_covered = UPPER_TORSO|ARMS

/obj/item/clothing/suit/storage/toggle/fr_jacket/ems
	name = "\improper EMS jacket"
	desc = "A dark blue, martian-pattern, EMS jacket. It sports high-visibility reflective stripes and a star of life on the back."
	icon_state = "ems_jacket"
	item_state_slots = list(slot_r_hand_str = "ems_jacket", slot_l_hand_str = "ems_jacket")

/obj/item/clothing/suit/surgicalapron
	name = "surgical apron"
	desc = "A sterile blue apron for performing surgery."
	icon_state = "surgical"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	allowed = list(/obj/item/stack/medical, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/hypospray, /obj/item/reagent_containers/syringe, \
	/obj/item/healthanalyzer, /obj/item/flashlight, /obj/item/radio, /obj/item/tank/emergency/oxygen,/obj/item/surgical/scalpel,/obj/item/surgical/retractor,/obj/item/surgical/hemostat, \
	/obj/item/surgical/cautery,/obj/item/surgical/bonegel,/obj/item/surgical/FixOVein)

//Mime
/obj/item/clothing/suit/suspenders
	name = "suspenders"
	desc = "They suspend the illusion of the mime's play."
	icon = 'icons/obj/clothing/belts.dmi'
	icon_state = "suspenders"
	blood_overlay_type = "armor" //it's the less thing that I can put here
	body_parts_covered = 0
