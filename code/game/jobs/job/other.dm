///888cba

//////////////////////////////////
//		Mercenary Captain
//////////////////////////////////
/datum/job/mercboss
	title = "Mercenary Captain"
	flag = MERCBOSS
	departments = list(DEPARTMENT_ANTAGONIST)
	sorting_order = 2
	department_flag = BADGUY
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Governor."
	selection_color = "#888cba"
	req_admin_notify = 1
	no_shuttle = TRUE
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 10
	economic_modifier = 20


	outfit_type = /decl/hierarchy/outfit/job/mercboss

	job_description = "Blank."

//	alt_titles = list("Mercenary Commander" = /datum/alt_title/merccom)

// Alt Titles
//datum/alt_title/merccom
//	title = "Mercenary Commander"

/datum/job/mercboss/get_access()
	return get_all_centcom_access()

//////////////////////////////////
//		Figure in Black
//////////////////////////////////
/datum/job/blackhat
	title = "Black Hat"
	flag = BLACKHAT
	departments = list(DEPARTMENT_ANTAGONIST)
	sorting_order = 2
	department_flag = BADGUY
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Can anyone really tell a stray dog what to do?"
	selection_color = "#888cba"
	req_admin_notify = 1
	no_shuttle = TRUE
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 10
	economic_modifier = 13

	outfit_type = /decl/hierarchy/outfit/job/blackhat

	job_description = "Blank."

//	alt_titles = list("Mercenary Commander" = /datum/alt_title/merccom)

// Alt Titles
//datum/alt_title/merccom
//	title = "Mercenary Commander"

/datum/job/mercboss/get_access()
	return get_all_centcom_access()

//////////////////////////////////
//		Shadow Master
//////////////////////////////////
/datum/job/shadowmaster
	title = "Stealth Ops Lead"
	flag = SHADOWMASTER
	departments = list(DEPARTMENT_ANTAGONIST)
	sorting_order = 2
	department_flag = BADGUY
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Board of Directors."
	selection_color = "#888cba"
	req_admin_notify = 1
	no_shuttle = TRUE
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 10
	economic_modifier = 13

	outfit_type = /decl/hierarchy/outfit/job/shadowmaster

	job_description = "Blank."

//	alt_titles = list("Mercenary Commander" = /datum/alt_title/merccom)

// Alt Titles
//datum/alt_title/merccom
//	title = "Mercenary Commander"

/datum/job/shadowmaster/get_access()
	return get_all_centcom_access()

//////////////////////////////////
//		Spiritual Leader
//////////////////////////////////
/datum/job/spiritleader
	title = "Spiritual Leader"
	flag = SPIRITLEADER
	departments = list(DEPARTMENT_ANTAGONIST)
	sorting_order = 2
	department_flag = BADGUY
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Can anyone really tell a stray dog what to do?"
	selection_color = "#888cba"
	req_admin_notify = 1
	no_shuttle = TRUE
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 10
	economic_modifier = 13

	outfit_type = /decl/hierarchy/outfit/job/spiritleader

	job_description = "Blank."

//	alt_titles = list("Mercenary Commander" = /datum/alt_title/merccom)

// Alt Titles
//datum/alt_title/merccom
//	title = "Mercenary Commander"

//////////////////////////////////
//		Tradeship Manager
//////////////////////////////////
/datum/job/trademanager
	title = "Tradeship Manager"
	flag = TRADEMANAGER
	departments = list(DEPARTMENT_ANTAGONIST)
	department_flag = BADGUY
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The need to move frieght."
	selection_color = "#888cba"
	req_admin_notify = 1
	no_shuttle = TRUE
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 10
	economic_modifier = 20


	outfit_type = /decl/hierarchy/outfit/job/trademanager

	job_description = "Blank."

//	alt_titles = list("Mercenary Commander" = /datum/alt_title/merccom)

// Alt Titles
//datum/alt_title/merccom
//	title = "Mercenary Commander"

/datum/job/mercboss/get_access()
	return get_all_centcom_access()

