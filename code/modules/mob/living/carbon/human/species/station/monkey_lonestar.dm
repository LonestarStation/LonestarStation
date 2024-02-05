/datum/species/lonestar_raccoon
	name = SPECIES_MONKEY_LONESTAR
	name_plural = "Raccoons"
	blurb = "Your snacks or your life."
	catalogue_data = list(/datum/category_item/catalogue/fauna/lonestar_raccoon)

	icobase = 'icons/mob/human_races/r_raccoon.dmi'
	deform = 'icons/mob/human_races/r_raccoon.dmi'
	damage_overlays = 'icons/mob/human_races/masks/dam_monkey.dmi'
	damage_mask = 'icons/mob/human_races/masks/dam_mask_monkey.dmi'
	blood_mask = 'icons/mob/human_races/masks/blood_monkey.dmi'
	language = null
	default_language = "Raccoon"

	minimum_breath_pressure = 0.1 //able to vent crawl when they need to, but not to run around in space willy nilly

	body_temperature = 280.15	//rrripped from our larger fuzzy friends, the tajarans

	cold_level_1 = 200 //Default 260
	cold_level_2 = 140 //Default 200
	cold_level_3 = 80  //Default 120

	breath_cold_level_1 = 180	//Default 240 - Lower is better
	breath_cold_level_2 = 100	//Default 180
	breath_cold_level_3 = 60	//Default 100

	heat_level_1 = 330 //Default 360
	heat_level_2 = 380 //Default 400
	heat_level_3 = 800 //Default 1000

	breath_heat_level_1 = 360	//Default 380 - Higher is better
	breath_heat_level_2 = 430	//Default 450
	breath_heat_level_3 = 1000	//Default 1250

//	greater_form = NULL
	move_trail = /obj/effect/decal/cleanable/blood/tracks/paw

	heat_discomfort_level = 292
	heat_discomfort_strings = list(
		"Your fur prickles in the heat.",
		"You feel uncomfortably warm.",
		"Your overheated skin itches."
		)

	cold_discomfort_level = 215

	mob_size = MOB_SMALL
	blood_volume = 400 //smaller than a person
	bloodloss_rate = 0.75 // we want blood thick like corn syrup
	has_fine_manipulation = 1
	show_ssd = "fast asleep"
	health_hud_intensity = 2
	taste_sensitivity = TASTE_SENSITIVE

	gibbed_anim = "gibbed-m"
	dusted_anim = "dust-m"
	death_message = "lets out a faint chitter as it collapses and stops moving..."
	tail = "racctail"
	fire_icon_state = "small"

	unarmed_types = list(/datum/unarmed_attack/bite, /datum/unarmed_attack/claws)
	inherent_verbs = list(/mob/living/proc/ventcrawl, /mob/living/proc/hide)
	darksight = 9
	slowdown = -0.5
	snow_movement = -1		//Ignores half of light snow
	item_slowdown_mod = 2 //remember what they say about greed kids
	flash_mod = 1.5	//the mask is supposed to absorb light, but it seems like a somewhat intuitive weakness to build in
	metabolic_rate = 1.3
	hud_type = /datum/hud_data/monkey
	meat_type = /obj/item/reagent_containers/food/snacks/meat/raccoon

	rarity_value = 0.1
	total_health = 75
	brute_mod = 0.8
	burn_mod = 0.5

	//spawn_flags = SPECIES_IS_RESTRICTED

	bump_flag = MONKEY
	swap_flags = MONKEY|SLIME|SIMPLE_ANIMAL
	push_flags = MONKEY|SLIME|SIMPLE_ANIMAL|ALIEN

	pass_flags = PASSTABLE

	has_limbs = list(
		BP_TORSO =  list("path" = /obj/item/organ/external/chest),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin),
		BP_HEAD =   list("path" = /obj/item/organ/external/head/no_eyes),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right)
		)

	dexterity = MOB_DEXTERITY_COMPLEX_TOOLS



/datum/category_item/catalogue/fauna/lonestar_raccoon
	name = "Solar Fauna - Common Lonestar Raccoon"
	desc = {"Classification: procyon solustellar
<br><br>
The common Lonestar raccoon, a descendant of the Earth based species, is a small omnivorous pack rodent that was first sighted on the Comanche asteroid in 2157. Since their discovery they have been found to function comfortably in small groups, typically hiding and scavenging in uninhabited areas. The Lonestar raccoon exhibits above average intelligence, having been seen displaying a clear understanding of complex tool use. Additionally, they are larger and thicker than their Earth based cousins. They are currently thriving in countless social groups in the disused maintenance tunnels of their asteroid home.
<br><br>
The Lonestar raccoon can behave in wildly unpredictable ways when cornered, some have even been seen to employ the use of objects as weapons to fend off would be attackers. While they share the omnivorous metabolism of their cousins, they have developed apart from them in a phoron rich environment. This has caused a variety of mutations in the species.
<br><br>
They are generally considered a type of pest to the citizens of Lonestar, their disposition being generally skittish around the human residents. Some communities on Lonestar insist that they are harmless and make lasting friendships.
<br><br>
Limited studies suggest analytical abilities beyond standard examples of Earth born raccoons, but their ability to escape from or sabotage most holding cells makes laboratory testing inadvisable at best."}
	value = CATALOGUER_REWARD_EASY