/*
/datum/shuttle/multi_shuttle/mercenary
	name = "Mercenary"
	warmup_time = 0
	can_cloak = TRUE
	cloaked = TRUE
	origin = /area/syndicate_station/start
	interim = /area/syndicate_station/transit
	start_location = "Mercenary Ship"
	destinations = list(
		"Northwest of First Deck" = /area/syndicate_station/firstdeck,
		"Northeast of the Second deck" = /area/syndicate_station/seconddeck,
		"Southeast of Third deck" = /area/syndicate_station/thirddeck,
		"Planetside" = /area/syndicate_station/planet,
		"Docking Port" = /area/syndicate_station/arrivals_dock,
		)
	docking_controller_tag = "merc_shuttle"
	destination_dock_targets = list(
		"Forward Operating Base" = "merc_base",
		"Docking Port" = "nuke_shuttle_dock_airlock",
		)
	announcer = "Southern Cross Docking Computer"

/datum/shuttle/multi_shuttle/mercenary/New()
	arrival_message = "Attention, vessel docking with the Southern Cross."
	departure_message = "Attention, vessel docking with the Southern Cross."
	..()
*/

/obj/machinery/computer/shuttle_control/web/syndicate
	name = "mercenary shuttle control console"
	req_access = list(access_syndicate)
	shuttle_tag = "Mercenary"

/datum/shuttle/autodock/web_shuttle/syndicate
	name = "Mercenary"
	visible_name = "Unknown Vessel"
	warmup_time = 0
	can_cloak = TRUE
	cloaked = TRUE
	shuttle_area = /area/syndicate_station/start
	current_location = "syndie_start"
	docking_controller_tag = "merc_shuttle"
	web_master_type = /datum/shuttle_web_master/syndie
	flight_time_modifier = 2	// Assumption that 'larger ship + few engines = slower'

/datum/shuttle_web_master/syndie
	destination_class = /datum/shuttle_destination/syndie
	starting_destination = /datum/shuttle_destination/syndie/root



/datum/shuttle_destination/syndie/root
	name = "Mercenary Asteroid"
	my_landmark = "syndie_start"
	preferred_interim_tag = "syndie_transit"

	// dock_target = "merc_base"

	routes_to_make = list(
		/datum/shuttle_destination/syndie/orbit = 1.5 MINUTES,
	)

/datum/shuttle_destination/syndie/orbit
	name = "Orbit over Lonestar"
	my_landmark = "syndie_orbit"
	preferred_interim_tag = "syndie_transit"

	routes_to_make = list(
		/datum/shuttle_destination/syndie/outside_LS_1d = 30 SECONDS,
		/datum/shuttle_destination/syndie/outside_LS_2d = 30 SECONDS,
		/datum/shuttle_destination/syndie/outside_LS_3d = 30 SECONDS,
		/datum/shuttle_destination/syndie/carls = 30 SECONDS,
		/datum/shuttle_destination/syndie/root = 1.5 MINUTES
	)

/datum/shuttle_destination/syndie/outside_LS_1d
	name = "Vima LS - Off First Deck"
	my_landmark = "syndie_firstdeck"
	preferred_interim_tag = "syndie_transit"

	routes_to_make = list(
		/datum/shuttle_destination/syndie/outside_LS_2d = 0,
		/datum/shuttle_destination/syndie/outside_LS_3d = 0,
		/datum/shuttle_destination/syndie/docked_LS = 0
	)

/datum/shuttle_destination/syndie/outside_LS_2d
	name = "Vima LS - Off Second Deck"
	my_landmark = "syndie_seconddeck"
	preferred_interim_tag = "syndie_transit"

	routes_to_make = list(
		/datum/shuttle_destination/syndie/outside_LS_1d = 0,
		/datum/shuttle_destination/syndie/outside_LS_3d = 0,
		/datum/shuttle_destination/syndie/docked_LS = 0
	)

/datum/shuttle_destination/syndie/outside_LS_3d
	name = "Vima LS - Off Third Deck"
	my_landmark = "syndie_thirddeck"
	preferred_interim_tag = "syndie_transit"

	routes_to_make = list(
		/datum/shuttle_destination/syndie/outside_LS_1d = 0,
		/datum/shuttle_destination/syndie/outside_LS_2d = 0,
		/datum/shuttle_destination/syndie/docked_LS = 0
	)

/datum/shuttle_destination/syndie/docked_LS
	name = "LS Dock 3-B"
	my_landmark = "syndie_arrivals_dock"
	preferred_interim_tag = "syndie_transit"

	// dock_target = "nuke_shuttle_dock_airlock"
	announcer = "Lonestar Docking Computer"

/datum/shuttle_destination/syndie/docked_LS/get_arrival_message()
	return "Attention, [master.my_shuttle.visible_name] has arrived to the Arrivals Dock."

/datum/shuttle_destination/syndie/docked_LS/get_departure_message()
	return "Attention, [master.my_shuttle.visible_name] has departed the Arrivals Dock."

/datum/shuttle_destination/syndie/sky
	name = "Skies of Sif"
	my_landmark = "syndie_sky"
	preferred_interim_tag = "syndie_sky_transit"


/datum/shuttle_destination/syndie/carls
	name = "LSF Carl's Corner II"
	my_landmark = "syndie_carls"
	preferred_interim_tag = "syndie_transit"
	radio_announce = 1
	announcer = "Truckstop Automated ATC"

/datum/shuttle_destination/syndie/carls_corner/get_arrival_message()
	return "Attention, [master.my_shuttle.visible_name] has arrived at Carl's Corner."

/datum/shuttle_destination/syndie/carls_corner/get_departure_message()
	return "Attention, [master.my_shuttle.visible_name] has departed Carl's Corner."
