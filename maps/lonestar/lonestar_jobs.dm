//turns out we saved this file for the raccoon first of all, not planetary jobs


/datum/job/emergent_animal
	title = "Raccoon"
//	departments = list(DEPARTMENT_CIVILIAN)
//	department_flag = CIVILIAN
	flag = RACCOON
	selection_color = "#6085a8"
	total_positions = 4
	spawn_positions = 2
	faction = "Station"
	supervisors = "your conscience"
	economic_modifier = 1
	access = list()
	minimal_access = list()
//	outfit_type = /decl/hierarchy/outfit/siffet //gonna need to raid the closet from mario 3
	job_description = "Are raccoons supposed to get this big?"
	assignable = FALSE
	has_headset = FALSE
	account_allowed = FALSE
	offmap_spawn = TRUE
	announce_arrival_and_despawn = FALSE
//	banned_job_species = null

	alt_titles = list(
		"Scavenger" = /datum/alt_title/raccoon/scavenger //the racc with the pack
	)

/datum/alt_title/raccoon
	title = "Raccoon"
	title_blurb = "A number of the bolder folks in Sif's anomalous region have partially domesticated some of the local wildlife as working animals."
	var/raccoon_type = /mob/living/carbon/human/raccoon

/datum/alt_title/raccoon/scavenger
	title = "Raccoon"
	title_blurb = "The Cynosure Xenobiology department has spearheaded an effort to train some of the intelligent local wildlife to assist with Exploration field operations."
	raccoon_type = /mob/living/carbon/human/raccoon

/datum/job/emergent_animal/handle_nonhuman_mob(var/mob/living/carbon/human/player, var/alt_title)

	var/datum/alt_title/raccoon/raccoon_setup = alt_titles[alt_title] || /datum/alt_title/raccoon
	var/raccoon_type = istype(raccoon_setup) ? raccoon_setup.raccoon_type : initial(raccoon_setup.raccoon_type)
	var/mob/living/critter = new raccoon_type(player.loc)

	// Copy over some prefs.
	if(player.client && player.client.prefs)

		// Set various strings and preference-loaded values.
		var/datum/preferences/P = player.client.prefs
		critter.gender = P.identifying_gender
		critter.flavor_text = LAZYACCESS(P.flavor_texts, "general")

		if(player.mind)
			critter.name = player.mind.name
			critter.real_name = critter.name

		// Transfer over key.
		if(player.mind)
			player.mind.transfer_to(critter)
			critter.mind.original = critter
		else
			critter.key = player.key
		qdel(player)

		// Pass the mob back.
		prompt_rename(critter)
		return critter


/datum/job/emergent_animal/proc/prompt_rename(var/mob/player)

	set waitfor = FALSE
	sleep(1 SECOND)
	if(QDELETED(player))
		return

	// Let them customize their name in case they wanted something lowercase or nonstandard beyond what the prefs panel allowed.
	var/new_name = sanitize(input(player, "Would you like to customize your name?", "Raccoon Name", player.real_name), MAX_NAME_LEN)
	if(!new_name || QDELETED(player))
		return

	player.real_name = new_name
	player.name = player.real_name
	if(player.mind)
		player.mind.name = player.real_name

/obj/item/storage/backpack/raccpack
	name = "scavenger pack"
	desc = "This bag seems to have been made by tiny unskilled hands... It also happens to be somewhat small."
	icon_state = "duffle_syndie"
	max_w_class = ITEMSIZE_NORMAL
/*
/datum/crafting_recipe/raccpack
	name = "Scavenger Pack"
	result = /obj/item/storage/backpack/raccpack
	reqs = list(list(/obj/item/storage/belt/utility = 1),
				list(/obj/item/storage/belt/fannypack = 1),
				list(/obj/item/taperoll = 1,
				/obj/item/tape_roll = 1)
				)

	parts = list(/obj/item/taperoll = 1,
				/obj/item/tape_roll = 1)
	time = 30
	category = CAT_CLOTHING
	subcategory = CAT_CLOTHING
*/
/*
/mob/living/carbon/human/monkey/raccoon
	player_msg = {"You are a <b>Lonestar Raccoon</b>, your people have lived on this asteroid for generations. <b>Be be careful. The humans cannot be trusted easily.</b>")
You can pick up <b>belts or fanny packs</b> to store the <b>tools</b> you'll need on your quest for(on <span class = 'danger'>snacks</span>). Be helpful to your fellow <b>raccoons</b>, beyond this your goals are left up to you."}
*/