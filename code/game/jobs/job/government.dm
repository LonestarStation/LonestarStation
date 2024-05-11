//var/datum/announcement/minor/governor_announcement = new(do_newscast = 1)

//////////////////////////////////
//			Governor
//////////////////////////////////

/datum/job/governor
	title = "Lonestar Governor"
	flag = GOVERNOR
	departments = list(DEPARTMENT_GOVERNMENT)
	sorting_order = 3 // Above everyone.
	departments_managed = list(DEPARTMENT_GOVERNMENT)
	department_flag = GOVLAW
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Board of Directors and the Lonestar Populace."
	selection_color = "#1D1D4F"
	req_admin_notify = 1
	no_shuttle = TRUE
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 14
	economic_modifier = 25

	minimum_character_age = 35
	min_age_by_species = list(SPECIES_HUMAN_VATBORN = 16)
	ideal_character_age = 70 // Old geezer captains ftw
	ideal_age_by_species = list(SPECIES_HUMAN_VATBORN = 55) /// Vatborn live shorter, no other race eligible for captain besides human/skrell
	banned_job_species = list(SPECIES_SKRELL, SPECIES_UNATHI, SPECIES_TAJ, SPECIES_TESHARI, SPECIES_DIONA, SPECIES_PROMETHEAN, SPECIES_ZADDAT, SPECIES_VOX, "mechanical", "digital")

	outfit_type = /decl/hierarchy/outfit/job/governor

	job_description = "The Governor stands at the top of the political order of Lonestar Station, kept in\
						check only by the citizens of Lonestar. Their day to day includes running the station\
						and making sure Solgov doesn't hear the worst of what Lonestar is up to."

/datum/job/governor/get_access()
	return get_all_centcom_access()+get_all_station_access()

//////////////////////////////////
//			Solgov Advisor
//////////////////////////////////

/datum/job/soladvisor
	title = "Solgov Advisor"
	flag = SOLADVISOR
	departments = list(DEPARTMENT_GOVERNMENT)
	sorting_order = 1
	department_flag = GOVLAW
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Solgov."
	selection_color = "#0F0F6F"
	req_admin_notify = 1
	no_shuttle = TRUE
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 14
	economic_modifier = 20

	minimum_character_age = 25
	min_age_by_species = list(SPECIES_HUMAN_VATBORN = 10)
	ideal_character_age = 50
	ideal_age_by_species = list(SPECIES_HUMAN_VATBORN = 30) /// Vatborn live shorter, no other race eligible for captain besides human/skrell
	banned_job_species = list(SPECIES_UNATHI, SPECIES_TAJ, SPECIES_TESHARI, SPECIES_DIONA, SPECIES_PROMETHEAN, SPECIES_ZADDAT, SPECIES_VOX, "mechanical", "digital")

	outfit_type = /decl/hierarchy/outfit/job/soladvisor

	job_description = "The Solgov Advisor's job is to make sure the government of Lonestar is abiding by Solgov\
						laws and not overstepping their bounds within that order. Obviously, this is a full-time\
						job with a high turn over rate due to cowboy induced stress factors. They have no real\
						authority, but their reports to Solgov could have serious consequences for Lonestar Station."

//	alt_titles = list("Crew Resources Officer" = /datum/alt_title/cro)

// HOP Alt Titles
//datum/alt_title/cro
//	title = "Crew Resources Officer"

/datum/job/soladvisor/get_access()
	return access + get_all_station_access()

//////////////////////////////////
//		Lonestar Ranger
//////////////////////////////////
/datum/job/ranger
	title = "Lonestar Ranger"
	flag = RANGER
	departments = list(DEPARTMENT_GOVERNMENT)
	sorting_order = 1
	department_flag = GOVLAW
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "Ranger Command."
	selection_color = "#0F0F6F"
	req_admin_notify = 1
	no_shuttle = TRUE
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 10
	economic_modifier = 15

	minimum_character_age = 25
	min_age_by_species = list(SPECIES_UNATHI = 70, SPECIES_TESHARI = 20, "mechanical" = 10, SPECIES_HUMAN_VATBORN = 14)
	ideal_character_age = 40
	ideal_age_by_species = list(SPECIES_UNATHI = 140, SPECIES_TESHARI = 27, "mechanical" = 20, SPECIES_HUMAN_VATBORN = 20)
	banned_job_species = list(SPECIES_SKRELL, SPECIES_UNATHI, SPECIES_TAJ, SPECIES_TESHARI, SPECIES_DIONA, SPECIES_PROMETHEAN, SPECIES_ZADDAT, SPECIES_VOX, "mechanical", "digital")


	outfit_type = /decl/hierarchy/outfit/job/ranger

	job_description = "Lonestar Rangers keep watch over Lonestar Station as the closest thing it has to a federal police force. Their duties include\
						search and rescue, diplomatic relations and more. It is required of all Rangers to be versatile field agents, as they aren't\
						typically seen in large groups often. If you see a large unit of Lonestar Rangers, the fan must be caked in it."

//	alt_titles = list("Crew Resources Officer" = /datum/alt_title/cro)

// HOP Alt Titles
//datum/alt_title/cro
//	title = "Crew Resources Officer"

/datum/job/ranger/get_access()
	return get_all_centcom_access()+get_all_station_access()

//////////////////////////////////
//		Lonestar Baron
//////////////////////////////////
/datum/job/baron
	title = "Baron of Vima"
	flag = BARON
	departments_managed = list(DEPARTMENT_COMMAND)
	departments = list(DEPARTMENT_GOVERNMENT)
	sorting_order = 0
	department_flag = GOVLAW
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Governor."
	selection_color = "#2F2F7F"
	req_admin_notify = 1
	no_shuttle = TRUE
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 10
	economic_modifier = 25

	minimum_character_age = 25
	min_age_by_species = list(SPECIES_HUMAN_VATBORN = 14)
	ideal_character_age = 40
	ideal_age_by_species = list(SPECIES_HUMAN_VATBORN = 20)
	banned_job_species = list(SPECIES_SKRELL, SPECIES_UNATHI, SPECIES_TAJ, SPECIES_TESHARI, SPECIES_DIONA, SPECIES_PROMETHEAN, SPECIES_ZADDAT, SPECIES_VOX, "mechanical", "digital")


	outfit_type = /decl/hierarchy/outfit/job/baron

	job_description = "Lonestar Rangers keep watch over Lonestar Station as the closest thing it has to a federal police force. Their duties include\
						search and rescue, diplomatic relations and more. It is required of all Rangers to be versatile field agents, as they aren't\
						typically seen in large groups often. If you see a large unit of Lonestar Rangers, the fan must be caked in it."

//	alt_titles = list("Crew Resources Officer" = /datum/alt_title/cro)

// HOP Alt Titles
//datum/alt_title/cro
//	title = "Crew Resources Officer"

/datum/job/baron/get_access()
	return get_all_centcom_access()+get_all_station_access()

//////////////////////////////////
//		Sugeon General
//////////////////////////////////
/datum/job/surgeongeneral
	title = "Lonestar Surgeon General"
	flag = SURGEONGENERAL
	departments_managed = list(DEPARTMENT_MEDICAL)
	departments = list(DEPARTMENT_GOVERNMENT)
	sorting_order = 2
	department_flag = GOVLAW
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Governor."
	selection_color = "#0F0F6F"
	req_admin_notify = 1
	no_shuttle = TRUE
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 10
	economic_modifier = 25

	minimum_character_age = 40
	min_age_by_species = list(SPECIES_HUMAN_VATBORN = 20)
	ideal_character_age = 60
	ideal_age_by_species = list(SPECIES_HUMAN_VATBORN = 40)
	banned_job_species = list(SPECIES_SKRELL, SPECIES_UNATHI, SPECIES_TAJ, SPECIES_TESHARI, SPECIES_DIONA, SPECIES_PROMETHEAN, SPECIES_ZADDAT, SPECIES_VOX, "mechanical", "digital")


	outfit_type = /decl/hierarchy/outfit/job/surgeongeneral

	job_description = "The Lonestar Surgeon General is in charge of Lonestar medical practice. This includes the various\
					medical bays across the station as well as the search and rescue response teams."

//	alt_titles = list("Crew Resources Officer" = /datum/alt_title/cro)

// HOP Alt Titles
//datum/alt_title/cro
//	title = "Crew Resources Officer"

/datum/job/suegeongeneral/get_access()
	return get_all_centcom_access()+get_all_station_access()

//////////////////////////////////
//	Lonestar Board of Directors
//////////////////////////////////
/datum/job/board
	title = "Board Member" //the lonestar gorosei
	flag = BOARD
	departments = list(DEPARTMENT_GOVERNMENT)
	sorting_order = 3
	department_flag = GOVLAW
	faction = "Station"
	total_positions = 5
	spawn_positions = 5
	supervisors = "The rest of the Board."
	selection_color = "#1D1D4F"
	req_admin_notify = 1
	no_shuttle = TRUE
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 10
	economic_modifier = 30

	minimum_character_age = 40
	min_age_by_species = list(SPECIES_HUMAN_VATBORN = 20)
	ideal_character_age = 60
	ideal_age_by_species = list(SPECIES_HUMAN_VATBORN = 40)
	banned_job_species = list(SPECIES_SKRELL, SPECIES_UNATHI, SPECIES_TAJ, SPECIES_TESHARI, SPECIES_DIONA, SPECIES_PROMETHEAN, SPECIES_ZADDAT, SPECIES_VOX, "mechanical", "digital")


	outfit_type = /decl/hierarchy/outfit/job/board

	job_description = "The Lonestar Board of Directors Chairperson."

	alt_titles = list("Board Chairperson" = /datum/alt_title/boardchair,
						"Board Treasury Officer" = /datum/alt_title/boardtreasurer,
						"Board Executive Officer" = /datum/alt_title/boardxo,
						"Board Research Director" = /datum/alt_title/boardrd,
						"Board Crew Relations" = /datum/alt_title/boardpr)

/datum/alt_title/boardchair
	title = "Board Chairperson"
	title_blurb = "The Lonestar Board of Directors Chairperson."

/datum/alt_title/boardtreasurer
	title = "Board Treasury Officer"
	title_blurb = "The Lonestar Board of Directors Treasurer."

/datum/alt_title/boardxo
	title = "Board Executive Officer"
	title_blurb = "The Lonestar Board of Directors Executive Officer."

/datum/alt_title/boardrd
	title = "Board Research Director"
	title_blurb = "The Lonestar Board of Directors Chairperson."

/datum/alt_title/boardpr
	title = "Board Crew Relations"
	title_blurb = "The Lonestar Board of Directors Chairperson."


/datum/job/board/get_access()
	return get_all_centcom_access()+get_all_station_access()

