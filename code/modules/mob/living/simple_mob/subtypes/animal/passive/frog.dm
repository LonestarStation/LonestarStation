/mob/living/simple_mob/animal/passive/frog
	name = "frog"
	desc = "A cute, tiny frog."
	tt_desc = "Rana tigrina"

	icon_state = "frog"
	icon_living = "frog"
	icon_dead = "frog_dead"

	health = 5
	maxHealth = 5
	mob_size = MOB_MINISCULE

	response_help  = "pets"
	response_disarm = "shoos"
	response_harm   = "stomps on"

	attacktext = list("bitten")
	melee_damage_lower = 1
	melee_damage_upper = 2

	speak_emote = list("croaks")

	say_list_type = /datum/say_list/frog

	faction = "lizard"

	tame_items = list(
	/obj/item/reagent_containers/food/snacks/carpmeat/fish = 20,
	/obj/item/holder/mouse = 20
	)

	meat_amount = 1
	meat_type =/obj/item/reagent_containers/food/snacks/meat/frog

	special_attack_min_range = 2
	special_attack_max_range = 5
	special_attack_cooldown = 5 SECONDS

	var/leap_warmup = 1 SECOND // How long the leap telegraphing is.
	var/leap_sound = 'sound/weapons/spiderlunge.ogg'

// Multiplies damage if the victim is stunned in some form, including a successful leap.
/mob/living/simple_mob/animal/passive/frog/apply_bonus_melee_damage(atom/A, damage_amount)
	if(isliving(A))
		var/mob/living/L = A
		if(L.incapacitated(INCAPACITATION_DISABLED))
			return damage_amount * 1.5
	return ..()


// The actual leaping attack.
/mob/living/simple_mob/animal/passive/frog/do_special_attack(atom/A)
	set waitfor = FALSE
	set_AI_busy(TRUE)

	// Telegraph, since getting stunned suddenly feels bad.
	do_windup_animation(A, leap_warmup)
	sleep(leap_warmup) // For the telegraphing.

	// Do the actual leap.
	status_flags |= LEAPING // Lets us pass over everything.
	visible_message(span("danger","\The [src] leaps at \the [A]!"))
	throw_at(get_step(get_turf(A), get_turf(src)), special_attack_max_range+1, 1, src)
	playsound(src, leap_sound, 75, 1)

	sleep(5) // For the throw to complete. It won't hold up the AI ticker due to waitfor being false.

	if(status_flags & LEAPING)
		status_flags &= ~LEAPING // Revert special passage ability.

	var/turf/T = get_turf(src) // Where we landed. This might be different than A's turf.

	. = FALSE

	// Now for the stun.
	var/mob/living/victim = null
	for(var/mob/living/L in T) // So player-controlled spiders only need to click the tile to stun them.
		if(L == src)
			continue

		if(ishuman(L))
			var/mob/living/carbon/human/H = L
			if(H.check_shields(damage = 0, damage_source = src, attacker = src, def_zone = null, attack_text = "the leap"))
				continue // We were blocked.

		victim = L
		break

	if(victim)
		victim.Weaken(2)
		victim.visible_message(span("danger","\The [src] knocks down \the [victim]!"))
		to_chat(victim, span("critical", "\The [src] jumps on you!"))
		. = TRUE

	set_AI_busy(FALSE)

/mob/living/simple_mob/animal/passive/frog/large
	name = "large frog"
	desc = "A cute, big frog."
	maxHealth = 20
	health = 20

	melee_damage_lower = 5
	melee_damage_upper = 15

	meat_amount = 2

	ai_holder_type = /datum/ai_holder/simple_mob/retaliate/cooperative

/mob/living/simple_mob/animal/passive/frog/large/Initialize()
	. = ..()
	adjust_scale(rand(12, 20) / 10)

/mob/living/simple_mob/animal/passive/frog/large/defensive
	desc = "An aggressive, big frog."
	maxHealth = 20
	health = 20

	ai_holder_type = /datum/ai_holder/simple_mob/melee/hunter_spider
