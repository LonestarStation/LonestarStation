//Cargo
//////////////////////////////////
//			Quartermaster
//////////////////////////////////
/datum/job/qm
	title = "Quartermaster"
	flag = QUARTERMASTER
	departments = list(DEPARTMENT_CARGO)
	sorting_order = 1 // QM is above the cargo techs, but below the HoP.
	departments_managed = list(DEPARTMENT_CARGO)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Head of Personnel"
	selection_color = "#9b633e"
	economic_modifier = 5
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)

	ideal_character_age = 40

	outfit_type = /decl/hierarchy/outfit/job/cargo/qm
	job_description = "The Quartermaster manages the Cargo Bay, checking supply orders and ensuring frieght gets moved."
	alt_titles = list("Supply Chief" = /datum/alt_title/supply_chief)

// Quartermaster Alt Titles
/datum/alt_title/supply_chief
	title = "Supply Chief"

//////////////////////////////////
//			Cargo Tech
//////////////////////////////////
/datum/job/cargo_tech
	title = "Cargo Technician"
	flag = CARGOTECH
	departments = list(DEPARTMENT_CARGO)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 4
	spawn_positions = 2
	supervisors = "the Quartermaster and the Head of Personnel"
	selection_color = "#7a4f33"
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_cargo, access_cargo_bot, access_mailsorting)

	outfit_type = /decl/hierarchy/outfit/job/cargo/cargo_tech
	job_description = "A Cargo Technician fills and delivers cargo orders. They are encouraged to return delivered crates to the Cargo Shuttle, \
						because Central Command gives a partial refund."

/datum/department/planetside
	name = DEPARTMENT_PLANET
	color = "#555555"
	sorting_order = 2 // Same as cargo in importance.

//////////////////////////////////
//			Delivery Pilot
//////////////////////////////////
/datum/job/pilot
	title = "Delivery Pilot"
	flag = PILOT
	departments = list(DEPARTMENT_CARGO)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the Quartermaster and the Head of Personnel"
	selection_color = "#7a4f33"
	economic_modifier = 3
	access = list(access_pilot, access_cargo, access_mining, access_mining_station)
	minimal_access = list(access_pilot, access_cargo, access_mining, access_mining_station)

	outfit_type = /decl/hierarchy/outfit/job/cargo/pilot
	job_description = "A Delivery Pilot flies one of the shuttles to make deliveries or ferry salvage teams into the asteroid belt."