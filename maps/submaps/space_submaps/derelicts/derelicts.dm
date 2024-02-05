// This causes PoI maps to get 'checked' and compiled, when undergoing a unit test.
// This is so Travis can validate PoIs, and ensure future changes don't break PoIs, as PoIs are loaded at runtime and the compiler can't catch errors.
// When adding a new PoI, please add it to this list.

#if MAP_TEST
#include "containment1.dmm"
#include "containment2.dmm"
#include "containment3.dmm"
#include "containment4.dmm"
#include "containment5.dmm"
#include "crystal_growth.dmm"
#include "decoupled_engine.dmm"
#include "dropped_supplies.dmm"
#include "escape_pods1.dmm"
#include "escape_pods2.dmm"
#include "escape_pods3.dmm"
#include "escape_pods4.dmm"
#include "grease_pile1.dmm"
#include "grease_pile2.dmm"
#include "grease_pile3.dmm"
#include "grease_pile4.dmm"
#include "grease_pile5.dmm"
#include "medical1.dmm"
#include "medical2.dmm"
#include "mercenary1.dmm"
#include "mercenary2.dmm"
#include "mercenary3.dmm"
#include "rodeo_pit.dmm"
#endif

// The 'derelicts' are the salvage z-level, and has a lot of broken ships and shuttles.
// POIs here should range between dangerous and mundane, and include appropriate loot quality based on ease of availability.
// All ships with an AI should be tagged with the template group: "Possible Intelligence"

/datum/map_template/space/derelicts
	name = "Wrecking Yard Content"
	desc = "Careful what you might awaken!"

/****************
 * Ship with AI *
 ****************/

///cost = 15

/********************
 * Ships without AI *
 ********************/

/datum/map_template/space/derelicts/containment1
	name = "Containment Shuttle 1"
	desc = "The remains of a severely damaged military shuttle, it could still have some cargo."
	mappath = 'maps/submaps/space_submaps/derelicts/containment1.dmm'
	cost = 10
	template_group = "Containment Shuttle"

/datum/map_template/space/derelicts/containment2
	name = "Containment Shuttle 2"
	desc = "The remains of a severely damaged military shuttle, it could still have some cargo."
	mappath = 'maps/submaps/space_submaps/derelicts/containment2.dmm'
	cost = 10
	template_group = "Containment Shuttle"

/datum/map_template/space/derelicts/containment3
	name = "Containment Shuttle 3"
	desc = "The remains of a severely damaged military shuttle, it could still have some cargo."
	mappath = 'maps/submaps/space_submaps/derelicts/containment3.dmm'
	cost = 10
	template_group = "Containment Shuttle"

/datum/map_template/space/derelicts/containment4
	name = "Containment Shuttle 4"
	desc = "The remains of a severely damaged military shuttle, it could still have some cargo."
	mappath = 'maps/submaps/space_submaps/derelicts/containment4.dmm'
	cost = 10
	template_group = "Containment Shuttle"

/datum/map_template/space/derelicts/containment5
	name = "Containment Shuttle 5"
	desc = "The remains of a severely damaged military shuttle, it could still have some cargo."
	mappath = 'maps/submaps/space_submaps/derelicts/containment5.dmm'
	cost = 10
	template_group = "Containment Shuttle"

/datum/map_template/space/derelicts/decoupled_engine
	name = "Decoupled Engine Section"
	desc = "A damaged fission engine jettisoned from a starship long ago."
	mappath = 'maps/submaps/space_submaps/derelicts/decoupled_engine.dmm'
	cost = 10

/datum/map_template/space/derelicts/medical1
	name = "Medical Shuttle 1"
	desc = "The remains of a severely damaged medical shuttle, it could still have some cargo."
	mappath = 'maps/submaps/space_submaps/derelicts/medical1.dmm'
	cost = 10
	template_group = "Medical Shuttle"

/datum/map_template/space/derelicts/medical2
	name = "Medical Shuttle 2"
	desc = "The remains of a severely damaged medical shuttle, it could still have some cargo."
	mappath = 'maps/submaps/space_submaps/derelicts/medical2.dmm'
	cost = 10
	template_group = "Medical Shuttle"

/datum/map_template/space/derelicts/mercenary1
	name = "Mercenary Shuttle 1"
	desc = "A ship Lonestar managed to buy at a discount... because of the bodies."
	mappath = 'maps/submaps/space_submaps/derelicts/mercenary1.dmm'
	cost = 10
	template_group = "Mercenary Shuttle"

/datum/map_template/space/derelicts/mercenary2
	name = "Mercenary Shuttle 2"
	desc = "A ship Lonestar managed to buy at a discount... because of the bodies."
	mappath = 'maps/submaps/space_submaps/derelicts/mercenary2.dmm'
	cost = 10
	template_group = "Mercenary Shuttle"

/datum/map_template/space/derelicts/mercenary3
	name = "Mercenary Shuttle 3"
	desc = "A ship Lonestar managed to buy at a discount... because of the bodies."
	mappath = 'maps/submaps/space_submaps/derelicts/mercenary3.dmm'
	cost = 10
	template_group = "Mercenary Shuttle"


/********************
 * Not Ships At All *
 ********************/

/datum/map_template/space/derelicts/crystal_growth
	name = "Crystal Growth"
	desc = "There are crystrals growing out of the ground here."
	mappath = 'maps/submaps/space_submaps/derelicts/crystal_growth.dmm'
	cost = 5

/datum/map_template/space/derelicts/dropped_supplies
	name = "Dropped Supplies"
	desc = "This used to be someone's life-line out here in the cold of space. Now just Trash."
	mappath = 'maps/submaps/space_submaps/derelicts/dropped_supplies.dmm'
	cost = 5

/datum/map_template/space/derelicts/escape_pods1
	name = "Escape Pods 1"
	desc = "A group of vacant Emergency pods, maybe somebody left their personal effects behind."
	mappath = 'maps/submaps/space_submaps/derelicts/escape_pods1.dmm'
	cost = 5
	template_group = "Escape Pods"

/datum/map_template/space/derelicts/escape_pods2
	name = "Escape Pods 2"
	desc = "A group of vacant Emergency pods, maybe somebody left their personal effects behind."
	mappath = 'maps/submaps/space_submaps/derelicts/escape_pods2.dmm'
	cost = 5
	template_group = "Escape Pods"

/datum/map_template/space/derelicts/escape_pods3
	name = "Escape Pods 3"
	desc = "A group of vacant Emergency pods, maybe somebody left their personal effects behind."
	mappath = 'maps/submaps/space_submaps/derelicts/escape_pods3.dmm'
	cost = 5
	template_group = "Escape Pods"

/datum/map_template/space/derelicts/escape_pods4
	name = "Escape Pods 4"
	desc = "A group of vacant Emergency pods, maybe somebody left their personal effects behind."
	mappath = 'maps/submaps/space_submaps/derelicts/escape_pods4.dmm'
	cost = 5
	template_group = "Escape Pods"

/datum/map_template/space/derelicts/grease_pile1
	name = "Grease Pile 1"
	desc = "A pile of grease."
	mappath = 'maps/submaps/space_submaps/derelicts/grease_pile1.dmm'
	cost = 5

/datum/map_template/space/derelicts/grease_pile2
	name = "Grease Pile 2"
	desc = "A pile of grease."
	mappath = 'maps/submaps/space_submaps/derelicts/grease_pile2.dmm'
	cost = 5

/datum/map_template/space/derelicts/grease_pile3
	name = "Grease Pile 3"
	desc = "A pile of grease."
	mappath = 'maps/submaps/space_submaps/derelicts/grease_pile3.dmm'
	cost = 5

/datum/map_template/space/derelicts/grease_pile4
	name = "Grease Pile 4"
	desc = "A pile of grease."
	mappath = 'maps/submaps/space_submaps/derelicts/grease_pile4.dmm'
	cost = 5

/datum/map_template/space/derelicts/grease_pile5
	name = "Grease Pile 5"
	desc = "A pile of grease."
	mappath = 'maps/submaps/space_submaps/derelicts/grease_pile5.dmm'
	cost = 5

/datum/map_template/space/derelicts/rodeo_pit
	name = "Rodeo Pit"
	desc = "Looks more like it's supposed to be for a demolition derby..."
	mappath = 'maps/submaps/space_submaps/derelicts/rodeo_pit.dmm'
	cost = 5

