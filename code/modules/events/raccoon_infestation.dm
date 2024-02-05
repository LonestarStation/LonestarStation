/*
/datum/event/raccoon_infestation

/datum/event/raccoon_infestation
	name = "raccoon infestation"
	event_class = "raccoons"
	departments = list(DEPARTMENT_SECURITY, DEPARTMENT_MEDICAL, DEPARTMENT_ENGINEERING)
	chaos = 5
	chaotic_threshold = EVENT_CHAOS_THRESHOLD_LOW_IMPACT
	event_type = /datum/event2/event/ghost_pod_spawner/raccoon_infestation
	regions = list(EVENT_REGION_PLAYER_MAIN_AREA)

/datum/event/raccoon_infestation/get_weight()
	. = 30
	. += metric.count_people_in_department(DEPARTMENT_SECURITY) * 20
	. += metric.count_people_in_department(DEPARTMENT_MEDICAL) * 20
	. += metric.count_people_in_department(DEPARTMENT_ENGINEERING) * 20

/datum/event/raccoon_infestation/get_weight()
//	if(istype(ticker.mode, /datum/game_mode/extended) && !safe_for_extended)
//		return 0

	var/engineering = metric.count_people_in_department(DEPARTMENT_ENGINEERING)
	var/everyone = metric.count_people_in_department(DEPARTMENT_EVERYONE) - engineering
	var/ghost_activity = metric.assess_all_dead_mobs() / 100

	return ( (engineering * 20) + (everyone * 2) ) * ghost_activity

/datum/event2/event/ghost_pod_spawner/raccoon_infestation
	pod_type = /obj/structure/ghost_pod/ghost_activated/trash_pile
	announce_delay_lower_bound = 15 MINUTES
	announce_delay_upper_bound = 30 MINUTES
//	var/antag_type = MODE_STOWAWAY
	var/announce_odds = 20

/datum/event2/event/ghost_pod_spawner/raccoon_infestation/post_pod_creation(obj/structure/ghost_pod/ghost_activated/trash_pile/pod)
//	pod.make_antag = antag_type
	pod.occupant_type = "[pod.occupant_type]"

	say_dead_object("[span("notice", pod.occupant_type)] pod is now available in \the [get_area(pod)].", pod)

/datum/event2/event/ghost_pod_spawner/raccoon_infestation/announce()
	if(prob(announce_odds))
		if(atc?.squelched)
			return
		atc.msg("Unidentified lifesigns detected coming aboard \the [location_name()]. \
	Secure any exterior access, including ducting and ventilation.", "Lifesign Alert", new_sound = 'sound/AI/aliens.ogg')

*/