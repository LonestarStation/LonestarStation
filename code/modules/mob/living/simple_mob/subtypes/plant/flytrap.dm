/mob/living/simple_mob/flytrap
	name = "Man Eating Plant"
	desc = "It's a horrifyingly enormous Venus Flytrap! It hungers for more than flys now!"
	tt_desc = "Muscipula abominable"
	icon_state = "venus_human_trap"
	icon_living = "venus_human_trap"
	icon_dead = "venus_human_trap_dead"

	mob_class = MOB_CLASS_PLANT

	faction = "plants"
	maxHealth = 75
	health = 75

	response_help  = "prods"
	response_disarm = "pushes aside"
	response_harm   = "smacks"

	organ_names = /decl/mob_organ_names/flytrap

	harm_intent_damage = 5
	melee_damage_upper = 15
	melee_damage_lower = 5
	attacktext = list("mauled")

	attack_sharp = TRUE

	ai_holder_type = /datum/ai_holder/simple_mob/melee

	meat_type = null

/decl/mob_organ_names/flytrap
	hit_zones = list("flesh", "leaf", "mouth")