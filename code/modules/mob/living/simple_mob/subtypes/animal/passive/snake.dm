/mob/living/simple_mob/animal/passive/snake
	name = "snake"
	desc = "A slithery snake. These legless reptiles are the bane of mice and cowpokes alike."
	tt_desc = "Reptilia Serpentes"

	icon_state = "snake"
	icon_living = "snake"
	icon_dead = "snake_dead"
	organ_names = /decl/mob_organ_names/snake

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

	movement_cooldown = 5


	response_help  = "pets"
	response_disarm = "shoos"
	response_harm   = "stomps on" // no steppy u_u

	attacktext = list("bitten")
	melee_damage_lower = 1
	melee_damage_upper = 4

	attack_sharp = TRUE

	holder_type = /obj/item/holder/snake
	meat_type = /obj/item/reagent_containers/food/snacks/meat/snake
//	butchery_loot = list(/obj/item/stack/material/snakeskin = 1)

	speak_emote = list("hisses")

	say_list_type = /datum/say_list/snake

	tame_items = list(
	/obj/item/reagent_containers/food/snacks/egg = 30,
	/obj/item/holder/mouse = 30
	)

	var/poison_type = "toxin"	// The reagent that gets injected when it attacks.
	var/poison_chance = 50			// Chance for injection to occur.
	var/poison_per_bite = 15			// Amount added per injection.

	ai_holder_type = /datum/ai_holder/simple_mob/melee/stand

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

//cobra
/mob/living/simple_mob/animal/passive/snake/cobra
	name = "cobra"
	desc = "A slithery snake. These legless reptiles are the bane of mice and cowpokes alike. This one is a cobra."
	tt_desc = "Reptilia Serpentes"

	icon_state = "cobra"
	icon_living = "cobra"
	icon_dead = "cobra_dead"

	poison_chance = 85
	poison_per_bite = 50

	ai_holder_type = /datum/ai_holder/simple_mob/melee/stand
	holder_type = /obj/item/holder/snake/cobra
/*
//rattlesnake
/mob/living/simple_mob/animal/passive/snake/rattle
	name = "rattlesnake"
	desc = "A slithery snake. These legless reptiles are the bane of mice and cowpokes alike. This one is a rattlesnake."
	tt_desc = "Reptilia Serpentes"

	icon_state = "rattle_snake"
	icon_living = "rattle_snake"
	icon_dead = "rattle_snake_dead"

	poison_chance = 85
	poison_per_bite = 30

	ai_holder_type = /datum/ai_holder/simple_mob/melee/stand
	holder_type = /obj/item/holder/snake/rattle
*/
//CMO's pet snake
/mob/living/simple_mob/animal/passive/snake/danger
	name = "Danger"
	desc = "A slithery snake. These legless reptiles are the bane of mice and cowpokes alike. This one has a little eye patch."
	tt_desc = "Reptilia Serpentes"

	icon_state = "danger_noodle"
	icon_living = "danger_noodle"
	icon_dead = "danger_noodle_dead"

	health = 60
	maxHealth = 60
	poison_chance = 100
	poison_per_bite = 20

	faction = "neutral"
	holder_type = /obj/item/holder/snake/danger

/mob/living/simple_mob/animal/passive/snake/danger/Initialize()
	. = ..()
	// Change my name back, don't want to be named Danger (666)
	name = initial(name)

/decl/mob_organ_names/snake
	hit_zones = list("head", "body", "tail")

/* //TODO snek wants to eat mice
/mob/living/simple_mob/animal/passive/snake/ListTargets(atom/the_target)
	. = oview(vision_range, targets_from) //get list of things in vision range
	var/list/living_mobs = list()
	var/list/mice = list()
	for (var/HM in .)
		//Yum a tasty mouse
		if(istype(HM, /mob/living/simple_mob/animal/passive/mouse))
			mice += HM
		if(isliving(HM))
			living_mobs += HM

	// if no tasty mice to chase, lets chase any living mob enemies in our vision range
	if(length(mice) == 0)
		//Filter living mobs (in range mobs) by those we consider enemies (retaliate behaviour)
		return  living_mobs & enemies
	return mice

/mob/living/simple_mob/animal/passive/snake/AttackingTarget()
        if(istype(target, /mob/living/simple_mob/animal/passive/mouse))
                visible_message("<span class='notice'>[name] consumes [target] in a single gulp!</span>", "<span class='notice'>You consume [target] in a single gulp!</span>")
                QDEL_NULL(target)
                adjustBruteLoss(-2)
        else
                return ..()
*/