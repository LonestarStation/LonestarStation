/mob/living/simple_mob/animal/passive/dog
	name = "dog"
	real_name = "dog"
	desc = "It's a dog."
	tt_desc = "E Canis lupus familiaris"
	icon_state = "corgi"
	icon_living = "corgi"
	icon_dead = "corgi_dead"
	faction = "neutral"
	ai_holder_type = /datum/ai_holder/simple_mob/retaliate

	health = 50
	maxHealth = 50
	melee_damage_lower = 4
	melee_damage_upper = 12

	response_help  = "pets"
	response_disarm = "bops"
	response_harm   = "kicks"

	mob_size = MOB_SMALL

	has_langs = list("Dog")

	say_list_type = /datum/say_list/dog

	meat_amount = 3
	meat_type = /obj/item/reagent_containers/food/snacks/meat/corgi

	var/obj/item/inventory_head
	var/obj/item/inventory_back


/mob/living/simple_mob/animal/passive/dog/attackby(var/obj/item/O as obj, var/mob/user as mob)
	if(istype(O, /obj/item/newspaper))
		if(!stat)
			for(var/mob/M in viewers(user, null))
				if ((M.client && !( M.blinded )))
					M.show_message("<font color='blue'>[user] baps [name] on the nose with the rolled up [O]</font>")
			spawn(0)
				for(var/i in list(1,2,4,8,4,2,1,2))
					set_dir(i)
					sleep(1)
	else
		..()

/mob/living/simple_mob/animal/passive/dog/regenerate_icons()
	cut_overlays()

	if(inventory_head)
		var/head_icon_state = inventory_head.icon_state
		if(health <= 0)
			head_icon_state += "2"

		var/icon/head_icon = image('icons/mob/corgi_head.dmi',head_icon_state)
		if(head_icon)
			add_overlay(head_icon)

	if(inventory_back)
		var/back_icon_state = inventory_back.icon_state
		if(health <= 0)
			back_icon_state += "2"

		var/icon/back_icon = image('icons/mob/corgi_back.dmi',back_icon_state)
		if(back_icon)
			add_overlay(back_icon)

	return


/obj/item/reagent_containers/food/snacks/meat/corgi
	name = "corgi meat"
	desc = "Tastes like... well, you know..."

/datum/say_list/dog
	speak = list("YAP", "Woof!", "Bark!", "AUUUUUU")
	emote_hear = list("barks", "woofs", "yaps","pants")
	emote_see = list("shakes its head", "shivers")

// This exists so not every type of dog has to be a subtype of corgi, and in case we get more dog sprites
/mob/living/simple_mob/animal/passive/dog/corgi
	name = "corgi"
	real_name = "corgi"
	desc = "It's a corgi."
	tt_desc = "E Canis lupus familiaris"
	icon_state = "corgi"
	icon_living = "corgi"
	icon_dead = "corgi_dead"
	organ_names = /decl/mob_organ_names/corgi

/mob/living/simple_mob/animal/passive/dog/corgi/puppy
	name = "corgi puppy"
	real_name = "corgi"
	desc = "It's a corgi puppy."
	icon_state = "puppy"
	icon_living = "puppy"
	icon_dead = "puppy_dead"

//pupplies cannot wear anything.
/mob/living/simple_mob/animal/passive/dog/corgi/puppy/Topic(href, href_list)
	if(href_list["remove_inv"] || href_list["add_inv"])
		to_chat(usr, "<font color='red'>You can't fit this on [src]</font>")
		return
	..()

/mob/living/simple_mob/animal/passive/dog/corgi/puppy/Bockscar
	name = "Bockscar"
	real_name = "Bockscar"

//IAN! SQUEEEEEEEEE~
/mob/living/simple_mob/animal/passive/dog/corgi/Ian
	name = "Ian"
	real_name = "Ian"	//Intended to hold the name without altering it.
	gender = MALE
	desc = "It's a corgi."
	icon_state = "ian"
	icon_living = "ian"
	icon_dead = "ian_dead"
	var/turns_since_scan = 0
	var/obj/movement_target
	var/moving_to_lunch = FALSE

/mob/living/simple_mob/animal/passive/dog/corgi/Ian/proc/move_to_lunch()
	set waitfor = FALSE
	if(!movement_target || moving_to_lunch)
		return
	moving_to_lunch = TRUE
	step_to(src,movement_target,1)
	sleep(3)
	if(QDELETED(src) || !movement_target || incapacitated())
		moving_to_lunch = FALSE
		return
	step_to(src,movement_target,1)
	sleep(3)
	if(QDELETED(src) || !movement_target || incapacitated())
		moving_to_lunch = FALSE
		return
	step_to(src,movement_target,1)
	if(QDELETED(src) || !movement_target || incapacitated())
		moving_to_lunch = FALSE
		return
	moving_to_lunch = FALSE

	if(movement_target)		//Not redundant due to sleeps, Item can be gone in 6 decisecomds
		if (movement_target.loc.x < src.x)
			set_dir(WEST)
		else if (movement_target.loc.x > src.x)
			set_dir(EAST)
		else if (movement_target.loc.y < src.y)
			set_dir(SOUTH)
		else if (movement_target.loc.y > src.y)
			set_dir(NORTH)
		else
			set_dir(SOUTH)

		if(isturf(movement_target.loc) )
			UnarmedAttack(movement_target)
		else if(ishuman(movement_target.loc) && prob(20))
			visible_emote("stares at the [movement_target] that [movement_target.loc] has with sad puppy eyes.")

/mob/living/simple_mob/animal/passive/dog/corgi/Ian/proc/dance()
	set waitfor = FALSE
	visible_emote(pick("dances around","chases their tail"))
	for(var/i in list(1,2,4,8,4,2,1,2,4,8,4,2,1,2,4,8,4,2))
		set_dir(i)
		sleep(1)

/mob/living/simple_mob/animal/passive/dog/corgi/Ian/Life()
	..()

	//Not replacing with SA FollowTarget mechanics because Ian behaves... very... specifically.

	//Feeding, chasing food, FOOOOODDDD
	if(!stat && !resting && !buckled)
		turns_since_scan++
		if(turns_since_scan > 5)
			turns_since_scan = 0
			if((movement_target) && !(isturf(movement_target.loc) || ishuman(movement_target.loc) ))
				movement_target = null
			if( !movement_target || !(movement_target.loc in oview(src, 3)) )
				movement_target = null
				for(var/obj/item/reagent_containers/food/snacks/S in oview(src,3))
					if(isturf(S.loc) || ishuman(S.loc))
						movement_target = S
						break
			if(movement_target)
				move_to_lunch()

		if(prob(1))
			dance()

//LISA! SQUEEEEEEEEE~
/mob/living/simple_mob/animal/passive/dog/corgi/Lisa
	name = "Lisa"
	real_name = "Lisa"
	gender = FEMALE
	desc = "It's a corgi with a cute pink bow."
	icon_state = "lisa"
	icon_living = "lisa"
	icon_dead = "lisa_dead"
	response_help  = "pets"
	response_disarm = "bops"
	response_harm   = "kicks"
	var/turns_since_scan = 0
	var/puppies = 0

//Lisa already has a cute bow!
/mob/living/simple_mob/animal/passive/dog/corgi/Lisa/Topic(href, href_list)
	if(href_list["remove_inv"] || href_list["add_inv"])
		to_chat(usr, "<font color='red'>[src] already has a cute bow!</font>")
		return
	..()

/mob/living/simple_mob/animal/passive/dog/corgi/Lisa/Life()
	..()

	if(!stat && !resting && !buckled)
		turns_since_scan++
		if(turns_since_scan > 15)
			turns_since_scan = 0
			var/alone = TRUE
			var/ian = FALSE
			for(var/mob/M in oviewers(7, src))
				if(istype(M, /mob/living/simple_mob/animal/passive/dog/corgi/Ian))
					if(M.client)
						alone = FALSE
						break
					else
						ian = M
				else
					alone = FALSE
					break
			if(alone && ian && puppies < 4)
				if(near_camera(src) || near_camera(ian))
					return
				new /mob/living/simple_mob/animal/passive/dog/corgi/puppy(loc)

		if(prob(1))
			visible_emote(pick("dances around","chases her tail"))
			spawn(0)
				for(var/i in list(1,2,4,8,4,2,1,2,4,8,4,2,1,2,4,8,4,2))
					set_dir(i)
					sleep(1)

// Tamaskans

/mob/living/simple_mob/animal/passive/dog/tamaskan
	name = "tamaskan"
	real_name = "tamaskan"
	desc = "It's a tamaskan."
	icon_state = "tamaskan"
	icon_living = "tamaskan"
	icon_dead = "tamaskan_dead"

/mob/living/simple_mob/animal/passive/dog/tamaskan/Spice
	name = "Spice"
	real_name = "Spice"	//Intended to hold the name without altering it.
	gender = FEMALE
	desc = "It's a tamaskan, the name Spice can be found on its collar."

// Brittany Spaniel

/mob/living/simple_mob/animal/passive/dog/brittany
	name = "brittany"
	real_name = "brittany"
	desc = "It's a brittany spaniel."
	icon_state = "brittany"
	icon_living = "brittany"
	icon_dead = "brittany_dead"

/mob/living/simple_mob/animal/passive/dog/brittany/Dolly
	name = "Dolly"
	real_name = "Dolly"	//Intended to hold the name without altering it.
	gender = FEMALE
	desc = "It's a brittany spaniel, the name Dolly can be found on her old collar. She has a lovely singing voice."

// German Shepherd

/mob/living/simple_mob/animal/passive/dog/german
	name = "german shepherd"
	real_name = "german shepherd"
	desc = "It's a german shepherd."
	icon_state = "german"
	icon_living = "german"
	icon_dead = "german_dead"

/mob/living/simple_mob/animal/passive/dog/german/columbo
	desc = "It's a german shepherd. This one is wearing a security vest."
	icon_state = "columbo"
	icon_living = "columbo"
	icon_dead = "columbo_dead"
	gender = MALE

/mob/living/simple_mob/animal/passive/dog/german/Hank
	name = "Deputy Hank"
	real_name = "Deputy Hank" //Intended to hold the name without altering it.
	desc = "It's Deputy Hank. He's wearing a security vest."
	icon_state = "columbo"
	icon_living = "columbo"
	icon_dead = "columbo_dead"
	gender = MALE
	taser_kill = FALSE
	resistance = 5

// Pug

/mob/living/simple_mob/animal/passive/dog/pug
	name = "pug"
	real_name = "pug"
	desc = "It's a pug."
	icon_state = "pug"
	icon_living = "pug"
	icon_dead = "pug_dead"

/mob/living/simple_mob/animal/passive/dog/pug/Mack
	name = "Mack"
	real_name = "Mack"	//Intended to hold the name without altering it.
	gender = MALE
	desc = "It's a little pug, the name MACK can be found on his collar."

// Bull Terrier

mob/living/simple_mob/animal/passive/dog/bullterrier
	name = "bull terrier"
	real_name = "bull terrier"
	desc = "It's a bull terrier."
	icon_state = "bullterrier"
	icon_living = "bullterrier"
	icon_dead = "bullterrier_dead"

/mob/living/simple_mob/animal/passive/dog/bullterrier/Rocko
	name = "Rocko"
	real_name = "Rocko"	//Intended to hold the name without altering it.
	gender = MALE
	desc = "It's a bull terrier, the name Rocko can be found on his collar."

// Pomeranian

mob/living/simple_mob/animal/passive/dog/pomeranian
	name = "pomeranian"
	real_name = "pomeranian"
	desc = "It's a pomeranian."
	icon_state = "pom"
	icon_living = "pom"
	icon_dead = "pom_dead"

/mob/living/simple_mob/animal/passive/dog/pomeranian/Princess
	name = "Princess"
	real_name = "Princess"	//Intended to hold the name without altering it.
	gender = FEMALE
	desc = "It's a pomeranian, the name Princess can be found on her expenstive looking collar."

// Chihuahua

mob/living/simple_mob/animal/passive/dog/chihuahua
	name = "chihuahua"
	real_name = "chihuahua"
	desc = "It's a ra- no wait, that's a chihuahua."
	icon_state = "chihuahua"
	icon_living = "chihuahua"
	icon_dead = "chihuahua_dead"

/mob/living/simple_mob/animal/passive/dog/chihuahua/Penny
	name = "Penny"
	real_name = "Penny"	//Intended to hold the name without altering it.
	gender = FEMALE
	desc = "It's a chihuahua, the name Penny can be found on her collar."

/decl/mob_organ_names/corgi
	hit_zones = list("head", "body", "left foreleg", "right foreleg", "left hind leg", "right hind leg", "tail", "heart") //You monster.
