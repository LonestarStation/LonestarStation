/mob/living/simple_mob/animal/passive/snake
	name = "snake"
	desc = "A slithery snake. These legless reptiles are the bane of mice and cowpokes alike."
	tt_desc = "Reptilia Serpentes"

	icon_state = "snake"
	icon_living = "snake"
	icon_dead = "snake_dead"

	faction = "snake"

	speak_emote = list("hisses")

	health = 20
	maxHealth = 20
	mob_size = MOB_SMALL
	pass_flags = PASSTABLE
	can_pull_size = ITEMSIZE_TINY
	can_pull_mobs = MOB_PULL_NONE
	layer = MOB_LAYER
	density = 0


	response_help  = "pets"
	response_disarm = "shoos"
	response_harm   = "stomps on" // no steppy u_u

	attacktext = list("bitten")
	melee_damage_lower = 5
	melee_damage_upper = 6

	attack_sharp = TRUE

	holder_type = /obj/item/holder/snake
//	meat_type = /obj/item/reagent_containers/food/snacks/meat/snake
//	butchery_loot = list(/obj/item/stack/material/snakeskin = 1)

	speak_emote = list("hisses")

	say_list_type = /datum/say_list/lizard

	tame_items = list(
	/obj/item/reagent_containers/food/snacks/egg = 20,
	/obj/item/holder/mouse = 20
	)

	var/poison_type = "toxin"	// The reagent that gets injected when it attacks.
	var/poison_chance = 50			// Chance for injection to occur.
	var/poison_per_bite = 5			// Amount added per injection.

	ai_holder_type = /datum/ai_holder/simple_mob/retaliate/cooperative

/mob/living/simple_mob/animal/passive/snake/Initialize()
	. = ..()

	verbs += /mob/living/proc/ventcrawl
	verbs += /mob/living/proc/hide

	if(name == initial(name))
		name = "[name] ([rand(1, 1000)])"
	real_name = name

/mob/living/simple_mob/animal/passive/snake/apply_melee_effects(var/atom/A)
	if(isliving(A))
		var/mob/living/L = A
		if(L.reagents)
			var/target_zone = pick(BP_TORSO,BP_TORSO,BP_TORSO,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_HEAD)
			if(L.can_inject(src, null, target_zone))
				inject_poison(L, target_zone)

// Does actual poison injection, after all checks passed.
/mob/living/simple_mob/animal/passive/snake/proc/inject_poison(mob/living/L, target_zone)
	if(prob(poison_chance))
		to_chat(L, "<span class='warning'>You feel the snake bite enter your veins.</span>")
		L.reagents.add_reagent(poison_type, poison_per_bite)

/*

/mob/living/simple_mob/animal/snake
	name = "snake"
	desc = "A slithery snake. These legless reptiles are the bane of mice and cowpokes alike."
	tt_desc = "Reptilia Serpentes"
	icon_state = "snake"
	icon_living = "snake"
	icon_dead = "snake_dead"

	faction = "goat"

	health = 40
	maxHealth = 40

	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "kicks"

	melee_damage_lower = 1
	melee_damage_upper = 5
	attacktext = list("kicked")

	say_list_type = /datum/say_list/goat
	ai_holder_type = /datum/ai_holder/simple_mob/retaliate

	meat_amount = 4
	meat_type = /obj/item/reagent_containers/food/snacks/meat

*/

/mob/living/simple_mob/animal/passive/snake/cobra
	name = "cobra"
	desc = "A slithery snake. These legless reptiles are the bane of mice and cowpokes alike. This one is a cobra."
	tt_desc = "Reptilia Serpentes"

	icon_state = "cobra"
	icon_living = "cobra"
	icon_dead = "cobra_dead"

	poison_chance = 70
	poison_per_bite = 10

	ai_holder_type = /datum/ai_holder/simple_mob/melee/stand