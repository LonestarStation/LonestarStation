//TO-DO: big roaches burst into little roaches, little roaches grow up into big roaches over time
// more little roaches for how long theyve been alive, so its a bigger problem for pest control and so raccoons can roach ranch

/mob/living/simple_mob/animal/space/roach
	name = "oversized cockroach"
	desc = "dull brown carapace, it makes you shudder to look at it."
	tt_desc = "X Periplaneta robustus gigantus"

	icon_state = "roach"
	icon_living = "roach"
	icon_dead = "roach_dead"

	faction = "roaches"
	maxHealth = 100
	health = 100
	pass_flags = PASSTABLE
	movement_cooldown = 0
	movement_sound = 'sound/effects/spider_loop.ogg'

	see_in_dark = 10

	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "stomps on"

	organ_names = /decl/mob_organ_names/roach

	melee_damage_lower = 10
	melee_damage_upper = 20
	attack_sharp = TRUE
	attack_edge = TRUE
	attack_sound = 'sound/weapons/bite.ogg'

	ai_holder_type = /datum/ai_holder/simple_mob/melee

	speak_emote = list("chitters")

	meat_amount = 3
	meat_type =/obj/item/reagent_containers/food/snacks/xenomeat/roachmeat

	say_list_type = /datum/say_list/spider

	tame_items = list(
	/obj/item/reagent_containers/food/snacks/xenomeat = 10,
	/obj/item/reagent_containers/food/snacks/meat/crab = 40,
	/obj/item/reagent_containers/food/snacks/meat = 20
	)

	butchery_loot = list(\
		/obj/item/stack/material/chitin = 2\
		)

	var/roachling_count = 0
	var/roachling_type = /obj/effect/roachling
	var/mutation_type = /mob/living/simple_mob/animal/space/roach/stunted
	var/mutation_faction = "roaches"
	var/mutation_prob = 5 // Odds that a spiderling will be a swarmling instead.


/mob/living/simple_mob/animal/space/roach/stunted
	name = "stunted cockroach"
	desc = "With it's pale carapace, it makes you shudder to look at it. You can almost see the organs underneath..."

	icon_state = "roachlet"
	icon_living = "roachlet"
	icon_dead = "roachlet_dead"

	maxHealth = 40
	health = 40

	melee_damage_lower = 5
	melee_damage_upper = 10
	attack_sharp = FALSE
	attack_edge = FALSE
	attack_sound = 'sound/weapons/bite.ogg'

	meat_amount = 1
	butchery_loot = list(\
		/obj/item/stack/material/chitin = 1\
		)

/decl/mob_organ_names/roach
	hit_zones = list("cephalothorax", "abdomen", "left forelegs", "right forelegs", "left hind legs", "right hind legs", "antenae", "mouthparts")

/mob/living/simple_mob/animal/space/roach/Initialize()
	roachling_count = rand(3, 7)
	adjust_scale(1.2)
	return ..()

/mob/living/simple_mob/animal/space/roach/death()
	visible_message(span("warning", "\The [src]'s abdomen splits as it rolls over, smaller roaches crawling from the wound.") )
	spawn(1)
		var/list/new_roaches = list()
		for(var/i = 1 to roachling_count)
			if(prob(mutation_prob) && src)
				var/mob/living/simple_mob/animal/space/roach/mutation = new mutation_type(src.loc)
				var/mut_health = FLOOR(mutation.maxHealth * 0.4, 1)
				var/mut_dam_lower = FLOOR(melee_damage_lower * 0.4, 1)
				var/mut_dam_upper = FLOOR(melee_damage_upper * 0.4, 1)
				mutation.name = "cockroach"
				mutation.maxHealth = mut_health
				mutation.health = mut_health
				mutation.melee_damage_lower = mut_dam_lower
				mutation.melee_damage_upper = mut_dam_upper
				mutation.faction = mutation_faction
				mutation.adjust_scale(0.75)
				new_roaches += mutation
			else if(src)
				var/obj/effect/roachling/child = new roachling_type(src.loc)
				child.skitter()
			else // We might've gibbed or got deleted.
				break
		// Transfer our player to their new body, if RNG provided one.
		if(new_roaches.len && client)
			var/mob/living/simple_mob/animal/space/roach/new_body = pick(new_roaches)
			new_body.key = src.key
	return ..()