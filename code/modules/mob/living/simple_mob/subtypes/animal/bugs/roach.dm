//TO-DO: big roaches burst into little roaches, little roaches grow up into big roaches over time
// more little roaches for how long theyve been alive, so its a bigger problem for pest control and so raccoons can roach ranch

/mob/living/simple_mob/animal/bug/roach
	name = "cockroach"
	desc = "dull brown carapace, it makes you shudder to look at it."
	tt_desc = "X Periplaneta robustus gigantus"

	icon_state = "cockroach"
	icon_living = "cockroach"
	icon_dead = "cockroach_dead"

	faction = "roaches"
	maxHealth = 50
	health = 50
	pass_flags = PASSTABLE
	movement_cooldown = 0
	poison_resist = 1
	density = 0

	see_in_dark = 10

	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "stomps on"

	organ_names = /decl/mob_organ_names/roach

	melee_damage_lower = 3
	melee_damage_upper = 6

	ai_holder_type = /datum/ai_holder/simple_mob/melee/small_roach

	meat_amount = 1
	meat_type = /obj/item/reagent_containers/food/snacks/xenomeat

	say_list_type = null

	tame_items = list(
	/obj/item/reagent_containers/food/snacks/xenomeat = 10,
	/obj/item/reagent_containers/food/snacks/meat/crab = 40,
	/obj/item/reagent_containers/food/snacks/meat = 20
	)

	butchery_loot = list(\
		/obj/item/stack/material/chitin = 1\
		)


/mob/living/simple_mob/animal/bug/roach/big
	name = "oversized cockroach"
	desc = "dull black carapace, it makes you shudder to look at it. This one has deep red eyes."
	tt_desc = "X Periplaneta robustus gigantus"

	icon_state = "radroach"
	icon_living = "radroach"
	icon_dead = "radroach_dead"

	faction = "roaches"
	maxHealth = 150
	health = 150
	pass_flags = PASSTABLE
	movement_cooldown = 0
	movement_sound = 'sound/effects/spider_loop.ogg'
	poison_resist = 1

	see_in_dark = 10

	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "punches"

	organ_names = /decl/mob_organ_names/roach


	melee_damage_lower = 10
	melee_damage_upper = 20
	attack_sharp = 1
	attack_edge = 1
	attack_sound = 'sound/weapons/bite.ogg'

	ai_holder_type = /datum/ai_holder/simple_mob/melee/rad_roach

	speak_emote = list("chitters")

	meat_amount = 3
	meat_type = /obj/item/reagent_containers/food/snacks/xenomeat

	say_list_type = /datum/say_list/spider

	butchery_loot = list(\
		/obj/item/stack/material/chitin = 2\
		)

/decl/mob_organ_names/roach
	hit_zones = list("cephalothorax", "abdomen", "left forelegs", "right forelegs", "left hind legs", "right hind legs", "antenae", "mouthparts")