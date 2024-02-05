// This causes PoI maps to get 'checked' and compiled, when undergoing a unit test.
// This is so Travis can validate PoIs, and ensure future changes don't break PoIs, as PoIs are loaded at runtime and the compiler can't catch errors.
// When adding a new PoI, please add it to this list.

#if MAP_TEST
#include "bats1.dmm"
#include "bats2.dmm"
#include "bats3.dmm"
#include "bats4.dmm"
#include "bats5.dmm"
#include "bear1.dmm"
#include "buried_stash1.dmm"
#include "buried_stash2.dmm"
#include "buried_stash3.dmm"
#include "cavern1.dmm"
#include "cavern2.dmm"
#include "cliff1.dmm"
#include "cliff2.dmm"
#include "crystal1.dmm"
#include "crystal2.dmm"
#include "hidden_stash1.dmm"
#include "hive2.dmm"
#include "ice_cave1A.dmm"
#include "ice_cave1B.dmm"
#include "ice_cave1C.dmm"
#include "ice_floe.dmm"
#include "ice_junction"
#include "loose_caves.dmm"
#include "loot_stash1.dmm"
#include "loot_stash2.dmm"
#include "lost_prisoner.dmm"
#include "lost_ripley.dmm"
#include "miner_camp1.dmm"
#include "swimming_hole.dmm"
#include "traphouse.dmm"
#endif


// The 'Slammer' is one of the two mining z-levels, and has a lot of caves.
// POIs here spawn in two different sections, the top half and bottom half of the map.
// The top half should be fairly tame, with perhaps a few enviromental hazards.
// The bottom half is when things start getting dangerous, but the loot gets better.

/datum/map_template/space/slammer
	name = "Slammer Content"
	desc = "Don't pick up hitch hikers!"

// 'Normal' templates get used on the top half, and should be safer.
/datum/map_template/space/slammer/normal

// 'Deep' templates get used on the bottom half, and should be more dangerous and rewarding.
/datum/map_template/space/slammer/deep

/****************
 * Normal Caves *
 ****************/

/datum/map_template/space/slammer/normal/bats1
	name = "Bats 1"
	desc = "Just a regular cave passage with bats in it."
	mappath = 'maps/submaps/space_submaps/slammer/bats1.dmm'
	cost = 5

/datum/map_template/space/slammer/normal/bats2
	name = "Bats 2"
	desc = "Just a regular cave passage with bats in it."
	mappath = 'maps/submaps/space_submaps/slammer/bats2.dmm'
	cost = 5

/datum/map_template/space/slammer/normal/bats3
	name = "Bats 3"
	desc = "Just a regular cave passage with bats in it."
	mappath = 'maps/submaps/space_submaps/slammer/bats3.dmm'
	cost = 5

/datum/map_template/space/slammer/normal/cliff1
	name = "Cliff 1"
	desc = "A raised area of rock."
	mappath = 'maps/submaps/space_submaps/slammer/cliff1.dmm'
	cost = 5

/datum/map_template/space/slammer/normal/cliff2
	name = "Cliff 2"
	desc = "A raised area of rock."
	mappath = 'maps/submaps/space_submaps/slammer/cliff2.dmm'
	cost = 10

/datum/map_template/space/slammer/normal/cavern1
	name = "Cavern 1"
	desc = "An open area in the caves."
	mappath = 'maps/submaps/space_submaps/slammer/cavern1.dmm'
	cost = 10

/datum/map_template/space/slammer/normal/cavern2
	name = "Cavern 2"
	desc = "An open area in the caves."
	mappath = 'maps/submaps/space_submaps/slammer/cavern2.dmm'
	cost = 10

/datum/map_template/space/slammer/normal/crystal1
	name = "Crystals 1"
	desc = "A small cave with glowing gems and diamonds."
	mappath = 'maps/submaps/space_submaps/slammer/crystal1.dmm'
	cost = 5
	allow_duplicates = TRUE

/datum/map_template/space/slammer/normal/crystal2
	name = "Crystals 2"
	desc = "A moderate sized cave with glowing gems and diamonds."
	mappath = 'maps/submaps/space_submaps/slammer/crystal2.dmm'
	cost = 10
	allow_duplicates = TRUE

/datum/map_template/space/slammer/normal/loose_cave
	name = "Loose Cave"
	desc = "A honeycombed cave passage with bats in it."
	mappath = 'maps/submaps/space_submaps/slammer/loose_caves.dmm'
	cost = 5

/datum/map_template/space/slammer/normal/loot_stash1
	name = "Loot Stash 1"
	desc = "A cave that houses someone's ill gotten gains."
	mappath = 'maps/submaps/space_submaps/slammer/loot_stash1.dmm'
	cost = 10

/datum/map_template/space/slammer/normal/loot_stash2
	name = "Loot Stash 2"
	desc = "A cave that houses someone's ill gotten gains."
	mappath = 'maps/submaps/space_submaps/slammer/loot_stash2.dmm'
	cost = 15

/datum/map_template/space/slammer/normal/lost_prisoner
	name = "Lost Prisoner"
	desc = "The remains of a prisoner who rotted away ages ago, and their equipment."
	mappath = 'maps/submaps/space_submaps/slammer/lost_prisoner.dmm'
	cost = 5

/datum/map_template/space/slammer/normal/miner_camp1
	name = "Miner Camp 1"
	desc = "An abandoned minning tunnel from a lost money making effort."
	mappath = 'maps/submaps/space_submaps/slammer/miner_camp1.dmm'
	cost = 10

/datum/map_template/space/slammer/normal/swimming_hole
	name = "Swimming Hole"
	desc = "A large frozen lake... probably better for skating."
	mappath = 'maps/submaps/space_submaps/slammer/swimming_hole.dmm'
	cost = 15

/**************
 * Deep Caves *
 **************/

 /datum/map_template/space/slammer/deep/bats4
	name = "Bats 4"
	desc = "Just a regular cave passage with bats in it."
	mappath = 'maps/submaps/space_submaps/slammer/bats4.dmm'
	cost = 5

/datum/map_template/space/slammer/deep/bats5
	name = "Bats 5"
	desc = "Just a regular cave passage with bats in it."
	mappath = 'maps/submaps/space_submaps/slammer/bats5.dmm'
	cost = 5

 /datum/map_template/space/slammer/deep/bear1
	name = "Bear 1"
	desc = "Just a regular cave passage with a bear in it."
	mappath = 'maps/submaps/space_submaps/slammer/bear1.dmm'
	cost = 5

/datum/map_template/space/slammer/deep/buried_stash1
	name = "Buried Stash 1"
	desc = "A hole in the ground, who knows what might be inside!"
	mappath = 'maps/submaps/space_submaps/slammer/buried_stash1.dmm'
	cost = 10
	template_group = "Care Package"

/datum/map_template/space/slammer/deep/buried_stash2
	name = "Buried Stash 2"
	desc = "A hole in the ground, who knows what might be inside!"
	mappath = 'maps/submaps/space_submaps/slammer/buried_stash2.dmm'
	cost = 10
	template_group = "Care Package"

/datum/map_template/space/slammer/deep/buried_stash3
	name = "Buried Stash 3"
	desc = "A hole in the ground, who knows what might be inside!"
	mappath = 'maps/submaps/space_submaps/slammer/buried_stash3.dmm'
	cost = 10
	template_group = "Care Package"

/datum/map_template/space/slammer/deep/hidden_stash1
	name = "Hidden Stash 1"
	desc = "A little hideaway for someone with more time and money than sense."
	mappath = 'maps/submaps/space_submaps/slammer/hidden_stash1.dmm'
	cost = 15

/datum/map_template/space/slammer/deep/hive2
	name = "Xeno Hive 2"
	desc = "A cave, ripe with xenomorph eggs."
	mappath = 'maps/submaps/space_submaps/slammer/hive2.dmm'
	cost = 10
	discard_prob = 25

/datum/map_template/space/slammer/deep/ice_cave1A
	name = "Ice Path 1A"
	desc = "This cave's slippery ice makes it hard to navigate, but determined explorers will be rewarded."
	mappath = 'maps/submaps/space_submaps/slammer/ice_cave1A.dmm'
	cost = 10
	template_group = "Ice Cave"

/datum/map_template/space/slammer/deep/ice_cave1B
	name = "Ice Path 1B"
	desc = "This cave's slippery ice makes it hard to navigate, but determined explorers will be rewarded."
	mappath = 'maps/submaps/space_submaps/slammer/ice_cave1B.dmm'
	cost = 10
	template_group = "Ice Cave"

/datum/map_template/space/slammer/deep/ice_cave1C
	name = "Ice Path 1C"
	desc = "This cave's slippery ice makes it hard to navigate, but determined explorers will be rewarded."
	mappath = 'maps/submaps/space_submaps/slammer/ice_cave1C.dmm'
	cost = 10
	template_group = "Ice Cave"

/datum/map_template/space/slammer/deep/ice_floe
	name = "Ice Floe"
	desc = "A strange underground ice river."
	mappath = 'maps/submaps/space_submaps/slammer/ice_floe.dmm'
	cost = 20

/datum/map_template/space/slammer/deep/ice_junction
	name = "Ice Junction"
	desc = "A cave junction with an ice patch in the center."
	mappath = 'maps/submaps/space_submaps/slammer/ice_junction.dmm'
	cost = 5

/datum/map_template/space/slammer/deep/lost_ripley
	name = "Lost APLU-Ripley"
	desc = "Now how did that get there?"
	mappath = 'maps/submaps/space_submaps/slammer/lost_ripley.dmm'
	cost = 5

/datum/map_template/space/slammer/deep/traphouse
	name = "Traphouse"
	desc = "A drug den drilled into the side of the asteroid."
	mappath = 'maps/submaps/space_submaps/slammer/traphouse.dmm'
	cost = 10