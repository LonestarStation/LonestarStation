// This causes PoI maps to get 'checked' and compiled, when undergoing a unit test.
// This is so Travis can validate PoIs, and ensure future changes don't break PoIs, as PoIs are loaded at runtime and the compiler can't catch errors.
// When adding a new PoI, please add it to this list.

#if MAP_TEST
#include "asteroidl01.dmm"
#include "asteroidl02.dmm"
#include "asteroidl03.dmm"
#include "asteroidl04.dmm"
#include "asteroidl05.dmm"
#include "asteroidl06.dmm"
#include "asteroidl07.dmm"
#include "asteroidl08.dmm"
#include "asteroidl09.dmm"
#include "asteroidl10.dmm"
#include "asteroid01.dmm"
#include "asteroid02.dmm"
#include "asteroid03.dmm"
#include "asteroid04.dmm"
#include "asteroid05.dmm"
#include "asteroid06.dmm"
#include "asteroid07.dmm"
#include "asteroid08.dmm"
#include "asteroid09.dmm"
#include "asteroids10.dmm"
#include "asteroids01.dmm"
#include "asteroids02.dmm"
#include "asteroids03.dmm"
#include "asteroids04.dmm"
#include "asteroids05.dmm"
#include "asteroids06.dmm"
#include "asteroids07.dmm"
#include "asteroids08.dmm"
#include "asteroids09.dmm"
#include "asteroids10.dmm"
#include "blasteroid.dmm"
#include "boxing_champ.dmm"
#include "carpnest1.dmm"
#include "carpnest2.dmm"
#include "dumpster.dmm"
#include "ice_rock1.dmm"
#include "lonely_shard.dmm"
#include "lost_wallet.dmm"
#include "mysterious_ship.dmm"
#include "rock_base1.dmm"
#include "space_bar.dmm"
#include "space_geode1.dmm"
#include "space_geode2.dmm"
#include "tech_junk.dmm"
#include "trash_pile1.dmm"
#include "trash_pile2.dmm"
#include "trash_pile3.dmm"
#include "undropped_supplies.dmm"
#endif
/*
// The 'roids' is the mining z-level, and has a lot of asteroids.
// POIs here spawn in two different sections, the top half and bottom half of the map.
// The bottom half should be fairly tame, with perhaps a few enviromental hazards.
// The top half is when things start getting dangerous, but the loot gets better.
*/


/datum/map_template/space/roids
	name = "Roids Content"
	desc = "get you some!"

// 'Close' templates get used on the bottom half, and should be safer.
/datum/map_template/space/roids/close

// 'Far' templates get used on the top half, and should be more dangerous and rewarding.
/datum/map_template/space/roids/far


// To be added: Templates for cave exploration when they are made.

/****************
 * Close Space *
 ****************/

//asteroids
/datum/map_template/space/roids/close/asteroid/small1
	name = "Small Asteroid 1"
	desc = "A small asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroids01.dmm'
	cost = 5
	allow_duplicates = TRUE

/datum/map_template/space/roids/close/asteroid/small2
	name = "Small Asteroid 2"
	desc = "A small asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroids02.dmm'
	cost = 5
	allow_duplicates = TRUE

/datum/map_template/space/roids/close/asteroid/small3
	name = "Small Asteroid 3"
	desc = "A small asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroids03.dmm'
	cost = 5
	allow_duplicates = TRUE

/datum/map_template/space/roids/close/asteroid/small4
	name = "Small Asteroid 4"
	desc = "A small asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroids04.dmm'
	cost = 5
	allow_duplicates = TRUE

/datum/map_template/space/roids/close/asteroid/small5
	name = "Small Asteroid 5"
	desc = "A small asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroids05.dmm'
	cost = 5
	allow_duplicates = TRUE

/datum/map_template/space/roids/close/asteroid/small6
	name = "Small Asteroid 5"
	desc = "A small asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroids06.dmm'
	cost = 5
	//allow_duplicates = nah dawg this one is pretty unique

/datum/map_template/space/roids/close/asteroid/small7
	name = "Small Asteroid 5"
	desc = "A small asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroids07.dmm'
	cost = 5
	//allow_duplicates = nah dawg this one is pretty unique

/datum/map_template/space/roids/close/asteroid/small8
	name = "Small Asteroid 5"
	desc = "A small asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroids08.dmm'
	cost = 5
	//allow_duplicates = nah dawg this one is pretty unique

/datum/map_template/space/roids/close/asteroid/small9
	name = "Small Asteroid 5"
	desc = "A small asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroids09.dmm'
	cost = 5
	//allow_duplicates = nah dawg this one is pretty unique

/datum/map_template/space/roids/close/asteroid/small0
	name = "Small Asteroid 5"
	desc = "A small asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroids10.dmm'
	cost = 5
	//allow_duplicates = nah dawg this one is pretty unique

/datum/map_template/space/roids/close/asteroid/ice1
	name = "Ice Asteroid 1"
	desc = "A frozen asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/ice_rock1.dmm'
	cost = 5

//other stuff
/datum/map_template/space/roids/close/dumpster
	name = "Dumspter"
	desc = "Some space trash, complete with bottom feeder."
	mappath = 'maps/submaps/space_submaps/belt/dumpster.dmm'
	cost = 5

/datum/map_template/space/roids/close/lost_wallet
	name = "Lost Wallet"
	desc = "Looks like some idiot had to throw his wallet to avoid death in space."
	mappath = 'maps/submaps/space_submaps/belt/lost_wallet.dmm'
	cost = 5

/datum/map_template/space/roids/close/tech_junk
	name = "Tech Junk"
	desc = "This is junk. In the technical sense."
	mappath = 'maps/submaps/space_submaps/belt/tech_junk.dmm'
	cost = 5
	allow_duplicates = TRUE


/datum/map_template/space/roids/close/trash_pile1
	name = "Trash Pile 1"
	desc = "A pile of trash, ripe with scavengers."
	mappath = 'maps/submaps/space_submaps/belt/trash_pile1.dmm'
	cost = 5

/datum/map_template/space/roids/close/trash_pile2
	name = "Trah Pile 2"
	desc = "A pile of trash, ripe with scavengers."
	mappath = 'maps/submaps/space_submaps/belt/trash_pile2.dmm'
	cost = 5

/datum/map_template/space/roids/close/trash_pile3
	name = "Trash Pile 3"
	desc = "A pile of trash, ripe with scavengers."
	mappath = 'maps/submaps/space_submaps/belt/trash_pile3.dmm'
	cost = 5

/**************
 * Far Space *
 **************/

//asteroids
/datum/map_template/space/roids/far/asteroid/large1
	name = "Large Asteroid 1"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroidl01.dmm'
	cost = 10

/datum/map_template/space/roids/far/asteroid/large2
	name = "Large Asteroid 2"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroidl02.dmm'
	cost = 10

/datum/map_template/space/roids/far/asteroid/large3
	name = "Large Asteroid 3"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroidl03.dmm'
	cost = 10

/datum/map_template/space/roids/far/asteroid/large4
	name = "Large Asteroid 4"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroidl04.dmm'
	cost = 10

/datum/map_template/space/roids/far/asteroid/large5
	name = "Large Asteroid 5"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroidl05.dmm'
	cost = 10

/datum/map_template/space/roids/far/asteroid/large6
	name = "Large Asteroid 6"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroidl06.dmm'
	cost = 15

/datum/map_template/space/roids/far/asteroid/large7
	name = "Large Asteroid 7"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroidl07.dmm'
	cost = 15

/datum/map_template/space/roids/far/asteroid/large8
	name = "Large Asteroid 8"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroidl08.dmm'
	cost = 15

/datum/map_template/space/roids/far/asteroid/large9
	name = "Large Asteroid 9"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroidl09.dmm'
	cost = 15

/datum/map_template/space/roids/far/adteroid/large0
	name = "Large Asteroid 10"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroidl10.dmm'
	cost = 15

/datum/map_template/space/roids/far/asteroid/type1
	name = "Asteroid 1"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroid01.dmm'
	cost = 10
	allow_duplicates = TRUE

/datum/map_template/space/roids/far/asteroid/type2
	name = "Asteroid 2"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroid02.dmm'
	cost = 10
	allow_duplicates = TRUE

/datum/map_template/space/roids/far/asteroid/type3
	name = "Asteroid 3"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroid03.dmm'
	cost = 10
	allow_duplicates = TRUE

/datum/map_template/space/roids/far/asteroid/type4
	name = "Asteroid 4"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroid04.dmm'
	cost = 10
	allow_duplicates = TRUE

/datum/map_template/space/roids/far/asteroid/type5
	name = "Asteroid 5"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroid05.dmm'
	cost = 10
	allow_duplicates = TRUE

/datum/map_template/space/roids/far/asteroid/type6
	name = "Asteroid 6"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroid06.dmm'
	cost = 10

/datum/map_template/space/roids/far/adteroid/type7
	name = "Asteroid 7"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroid07.dmm'
	cost = 10

/datum/map_template/space/roids/far/asteroid/type8
	name = "Asteroid 8"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroid08.dmm'
	cost = 10

/datum/map_template/space/roids/far/asteroid/type9
	name = "Asteroid 9"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroid09.dmm'
	cost = 10

/datum/map_template/space/roids/far/asteroid/type0
	name = "Asteroid 10"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/asteroid10.dmm'
	cost = 10

//other stuff
/datum/map_template/space/roids/far/asteroid/blast
	name = "Asteroid 10"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/blasteroid.dmm'
	cost = 5

/datum/map_template/space/roids/far/boxing_champ
	name = "Boxing Champ"
	desc = "If only he'd heard of Super Turbo Turkey Puncher."
	mappath = 'maps/submaps/space_submaps/belt/boxing_champ.dmm'
	cost = 5

/datum/map_template/space/roids/far/carpking
	name = "Carp King"
	desc = "An asteroid, ripe with space carp."
	mappath = 'maps/submaps/space_submaps/belt/carpking.dmm'
	cost = 5
	discard_prob = 75

/datum/map_template/space/roids/far/carpnest1
	name = "Carp Nest 1"
	desc = "An asteroid, ripe with space carp."
	mappath = 'maps/submaps/space_submaps/belt/carpnest1.dmm'
	cost = 5

/datum/map_template/space/roids/far/carpnest2
	name = "Carp Nest 2"
	desc = "An asteroid, ripe with space carp."
	mappath = 'maps/submaps/space_submaps/belt/carpnest2.dmm'
	cost = 5

/datum/map_template/space/roids/far/lonely_shard
	name = "Soul Stone Shard"
	desc = "How did this get here... you know what, maybe don't tell me."
	mappath = 'maps/submaps/space_submaps/belt/lonely_shard.dmm'
	cost = 5
	discard_prob = 50

/datum/map_template/space/roids/far/mysterious_ship
	name = "UFO"
	desc = "A flying saucer that still seems to be running..."
	mappath = 'maps/submaps/space_submaps/belt/mysterious_ship.dmm'
	cost = 10
	discard_prob = 50

/datum/map_template/space/roids/far/rock_base1
	name = "Rock Base 1"
	desc = "Someones asteroid-based hidey hole."
	mappath = 'maps/submaps/space_submaps/belt/rock_base1.dmm'
	cost = 10

/datum/map_template/space/roids/far/space_bar
	name = "Space Bar"
	desc = "It's free real estate."
	mappath = 'maps/submaps/space_submaps/belt/space_bar.dmm'
	cost = 5

/datum/map_template/space/roids/far/asteroid/geode1
	name = "Space Geode 1"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/space_geode1.dmm'
	cost = 10

/datum/map_template/space/roids/far/adteroid/geode2
	name = "Space Geode 2"
	desc = "A large asteroid, ripe with minerals."
	mappath = 'maps/submaps/space_submaps/belt/space_geode2.dmm'
	cost = 10

/datum/map_template/space/roids/far/supplies
	name = "Undropped Supply Drop"
	desc = "This box will never make it to the intended destination."
	mappath = 'maps/submaps/space_submaps/belt/undropped_supplies.dmm'
	cost = 5
	allow_duplicates = TRUE

//UNUSED FOR VARIOUS REASONS:

/*
/datum/map_template/space/roids/far/hive1
	name = "Xeno Hive 1"
	desc = "An asteroid, ripe with xenomorph eggs."
	mappath = 'maps/submaps/space_submaps/belt/hive1.dmm'
	cost = 5
	discard_prob = 25
*/