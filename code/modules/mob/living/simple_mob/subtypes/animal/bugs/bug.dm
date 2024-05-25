/mob/living/simple_mob/animal/bug
	min_oxy = 0
	max_oxy = 0
	min_tox = 0
	max_tox = 0
	min_co2 = 0
	max_co2 = 0
	min_n2 = 0
	max_n2 = 0
	minbodytemp = 0

/datum/ai_holder/simple_mob/melee/small_roach
	can_flee = TRUE
	flee_when_dying = TRUE
	dying_threshold = 0.7
	flee_when_outmatched = TRUE
	outmatched_threshold = 100

	can_breakthrough = FALSE
	violent_breakthrough = FALSE

	cooperative = TRUE
	call_distance = 5

/datum/ai_holder/simple_mob/melee/rad_roach
	cooperative = TRUE
	call_distance = 15