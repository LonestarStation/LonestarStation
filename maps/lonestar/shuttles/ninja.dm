///////////////////////
//Mysterious Stranger//
///////////////////////

/obj/machinery/computer/shuttle_control/web/stranger
	name = "stealth shuttle control console"
	req_access = list(access_stranger)
	shuttle_tag = "Stranger"

/datum/shuttle/autodock/web_shuttle/stranger
	name = "Strange Vessel"
	visible_name = "Unknown Vessel"
	warmup_time = 0
	can_cloak = TRUE
	cloaked = TRUE
	shuttle_area = /area/mysterious/shuttle_start
	current_location = "stranger_start"
	docking_controller_tag = "stranger_shuttle"
	web_master_type = /datum/shuttle_web_master/stranger
	flight_time_modifier = 0.5	// Lonestar silver.

/datum/shuttle_web_master/stranger
	destination_class = /datum/shuttle_destination/stranger
	starting_destination = /datum/shuttle_destination/stranger/root

/datum/shuttle_destination/stranger/root
	name = "Mysterious Dojo"
	my_landmark = "stranger_start"
	preferred_interim_tag = "stranger_transit"

	routes_to_make = list(
		/datum/shuttle_destination/stranger/orbit = 60 SECONDS,
	)

/datum/shuttle_destination/stranger/orbit
	name = "Orbit of Lonestar"
	my_landmark = "stranger_orbit"
	preferred_interim_tag = "stranger_transit"

	routes_to_make = list(
		/datum/shuttle_destination/stranger/outside_LS_1d = 60 SECONDS,
		/datum/shuttle_destination/stranger/outside_LS_2d = 60 SECONDS,
		/datum/shuttle_destination/stranger/outside_LS_3d = 60 SECONDS,
		/datum/shuttle_destination/stranger/carls = 60 SECONDS,
		/datum/shuttle_destination/stranger/root = 60 SECONDS,
	)

/datum/shuttle_destination/stranger/outside_LS_1d
	name = "LSF Neo Vima - off First Deck"
	my_landmark = "stranger_firstdeck"
	preferred_interim_tag = "stranger_transit"

	routes_to_make = list(
		/datum/shuttle_destination/stranger/outside_LS_2d = 0,
		/datum/shuttle_destination/stranger/outside_LS_3d = 0,
		/datum/shuttle_destination/stranger/docked_LS = 0
	)

/datum/shuttle_destination/stranger/outside_LS_2d
	name = "LSF Neo Vima - off Second Deck"
	my_landmark = "stranger_seconddeck"
	preferred_interim_tag = "stranger_transit"

	routes_to_make = list(
		/datum/shuttle_destination/stranger/outside_LS_1d = 0,
		/datum/shuttle_destination/stranger/outside_LS_3d = 0,
		/datum/shuttle_destination/stranger/docked_LS = 0,
		/datum/shuttle_destination/stranger/cave
	)

/datum/shuttle_destination/stranger/outside_LS_3d
	name = "LSF Neo Vima - off Third Deck"
	my_landmark = "stranger_thirddeck"
	preferred_interim_tag = "stranger_transit"

	routes_to_make = list(
		/datum/shuttle_destination/stranger/outside_LS_1d = 0,
		/datum/shuttle_destination/stranger/outside_LS_2d = 0,
		/datum/shuttle_destination/stranger/docked_LS = 0
	)


/datum/shuttle_destination/stranger/docked_LS
	name = "LS Dock 4-B"
	my_landmark = "stranger_arrivals_dock"
	preferred_interim_tag = "stranger_transit"

	announcer = "Lonestar Station Docking Computer"

/datum/shuttle_destination/syndie/docked_LS/get_arrival_message()
	return "Attention, [master.my_shuttle.visible_name] has arrived to the Arrivals Dock."

/datum/shuttle_destination/syndie/docked_LS/get_departure_message()
	return "Attention, [master.my_shuttle.visible_name] has departed the Arrivals Dock."

/datum/shuttle_destination/stranger/cave
	name = "Hidden Lonestar Cave"
	my_landmark = "stranger_cave"
	preferred_interim_tag = "stranger_transit"

	routes_to_make = list(
		/datum/shuttle_destination/stranger/outside_LS_2d = 0 SECONDS
	)

/datum/shuttle_destination/stranger/sky
	name = "Skies of Sif"
	my_landmark = "stranger_sky"
	preferred_interim_tag = "stranger_sky_transit"


/datum/shuttle_destination/stranger/carls
	name = "\improper Carl's Corner"
	my_landmark = "stranger_carls"
	preferred_interim_tag = "stranger_transit"

	routes_to_make = list(
		/datum/shuttle_destination/stranger/orbit = 60 SECONDS
	)
/*
/datum/shuttle_web_master/stranger
	destination_class = /datum/shuttle_destination/stranger
	autopath_class = /datum/shuttle_autopath/stranger
	starting_destination = /datum/shuttle_destination/stranger/root

/datum/shuttle_autopath/stranger/to_facility
	start = /datum/shuttle_destination/stranger/root

	path_nodes = list(
		/datum/shuttle_destination/stranger/station_orbit,
		/datum/shuttle_destination/stranger/outside_LS,
		/datum/shuttle_destination/stranger/docked_LS
	)

/datum/shuttle_autopath/stranger/to_home
	start = /datum/shuttle_destination/stranger/docked_LS

	path_nodes = list(
		/datum/shuttle_destination/stranger/outside_LS,
		/datum/shuttle_destination/stranger/station_orbit,
		/datum/shuttle_destination/stranger/root
	)

/datum/shuttle_destination/stranger/root
	name = "Mysterious Outpost"
	my_landmark = "stranger_home"
	preferred_interim_tag = "stranger_transit"

	radio_announce = 1
	announcer = "Mysterious Docking Computer"

	routes_to_make = list(
		/datum/shuttle_destination/stranger/outside_LS = 0,
	)

/datum/shuttle_destination/stranger/root/get_arrival_message()
	return "Attention, [master.my_shuttle.visible_name] has arrived at the D-t'ch'xzzzz--..."

/datum/shuttle_destination/stranger/root/get_departure_message()
	return "Attention, [master.my_shuttle.visible_name] has departed the D-t'b'xzzzz--..."

/datum/shuttle_destination/stranger/outside_LS
	name = "Outside of Vima LS"
	my_landmark = "stranger_seconddeck"
	preferred_interim_tag = "stranger_transit"

	routes_to_make = list(
		/datum/shuttle_destination/stranger/station_orbit = 30 SECONDS,
		/datum/shuttle_destination/stranger/docked_LS = 0
	)

/datum/shuttle_destination/stranger/docked_LS
	name = "Lonestar Station Docking Port"
	my_landmark = "stranger_arrivals_dock"
	preferred_interim_tag = "stranger_transit"

	radio_announce = 1
	announcer = "Lonestar Station Docking Computer"

/datum/shuttle_destination/stranger/docked_LS/get_arrival_message()
	return "Attention, [master.my_shuttle.visible_name] has arrived to Arrivals Dock 4-B."

/datum/shuttle_destination/stranger/docked_LS/get_departure_message()
	return "Attention, [master.my_shuttle.visible_name] has departed Arrivals Dock 4-B."

/datum/shuttle_destination/stranger/station_orbit
	name = "Lonestar Orbit"
	my_landmark = "stranger_orbit"
	preferred_interim_tag = "stranger_transit"

	routes_to_make = list(
		/datum/shuttle_destination/stranger/carls_corner = 15 SECONDS,
//		/datum/shuttle_destination/stranger/the_slammer = 15 SECONDS
	)

/datum/shuttle_destination/stranger/carls_corner
	name = "LSF Carl's Corner III"
	my_landmark = "stranger_roids"
	preferred_interim_tag = "stranger_transit"

	radio_announce = 1
	announcer = "Carl's Automated Docking Computer"

/datum/shuttle_destination/stranger/carls_corner/get_arrival_message()
	return "Attention, [master.my_shuttle.visible_name] has arrived at Carl's Corner."

/datum/shuttle_destination/stranger/carls_corner/get_departure_message()
	return "Attention, [master.my_shuttle.visible_name] has departed Carl's Corner."

*/