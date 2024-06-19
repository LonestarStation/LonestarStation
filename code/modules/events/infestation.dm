#define LOC_KITCHEN 0
#define LOC_ATMOS 1
#define LOC_CHAPEL 2
#define LOC_LIBRARY 3
#define LOC_HYDRO 4
#define LOC_VAULT 5
#define LOC_CARGO 6
#define LOC_TECH 7
#define LOC_GARDEN 8

#define VERM_MICE 	 0
#define VERM_LIZARDS 1
#define VERM_SPIDERS 2
#define VERM_SNAKES  3
#define VERM_FROGS	 4
#define VERM_ROACHES 5

/datum/event/infestation
	announceWhen = 10
	endWhen = 11
	var/location
	var/locstring
	var/vermin
	var/vermstring

/datum/event/infestation/start()

	location = rand(0,8)
	var/list/turf/simulated/floor/turfs = list()
	var/spawn_area_type
	switch(location)
		if(LOC_KITCHEN)
			spawn_area_type = /area/lonestar/bar/kitchen
			locstring = "the bar kitchen"
		if(LOC_ATMOS)
			spawn_area_type = /area/lonestar/engineering/atmos/storage
			locstring = "atmospherics storage"
		if(LOC_CHAPEL)
			spawn_area_type = /area/lonestar/medbay/clerical/worshiphall
			locstring = "the chapel"
		if(LOC_LIBRARY)
			spawn_area_type = /area/lonestar/civilian/range/shooting
			locstring = "the shooting range"
		if(LOC_HYDRO)
			spawn_area_type = /area/lonestar/ranch/crops
			locstring = "the ranch crops"
		if(LOC_VAULT)
			spawn_area_type = /area/lonestar/command/baron_armory
			locstring = "the Baron's personal armory"
		if(LOC_CARGO)
			spawn_area_type = /area/lonestar/cargobay/storage
			locstring = "cargo storage lock-up"
		if(LOC_TECH)
			spawn_area_type = /area/lonestar/garage/techstorage
			locstring = "tech storage"
		if(LOC_GARDEN)
			spawn_area_type = /area/lonestar/hallway/primary/floor_two/six
			locstring = "the diner's maintenance garden"

	for(var/areapath in typesof(spawn_area_type))
		var/area/A = locate(areapath)
		for(var/turf/simulated/floor/F in A.contents)
			if(turf_clear(F))
				turfs += F

	var/list/spawn_types = list()
	var/max_number
	vermin = rand(0,5)
	switch(vermin)
		if(VERM_MICE)
			spawn_types = list(/mob/living/simple_mob/animal/passive/mouse/gray, /mob/living/simple_mob/animal/passive/mouse/brown, /mob/living/simple_mob/animal/passive/mouse/white, /mob/living/simple_mob/animal/passive/mouse/black)
			max_number = 7
			vermstring = "mice"
		if(VERM_LIZARDS)
			spawn_types = list(/mob/living/simple_mob/animal/passive/lizard)
			max_number = 5
			vermstring = "lizards"
		if(VERM_SPIDERS)
			spawn_types = list(/obj/effect/spider/spiderling)
			max_number = 8
			vermstring = "spiders"
		if(VERM_SNAKES)
			spawn_types = list(/mob/living/simple_mob/animal/passive/snake, /mob/living/simple_mob/animal/passive/snake/rattle, /mob/living/simple_mob/animal/passive/snake/cobra)
			max_number = 6
			vermstring = "snakes"
		if(VERM_FROGS)
			spawn_types = list(/mob/living/simple_mob/animal/passive/frog, /mob/living/simple_mob/animal/passive/frog/large, /mob/living/simple_mob/animal/passive/frog/large/defensive)
			max_number = 9
			vermstring = "frogs"
		if(VERM_ROACHES)
			spawn_types = list(/obj/effect/roachling)
			max_number = 7
			vermstring = "cockroaches"

	spawn(0)
		var/num = rand(2,max_number)
		while(turfs.len > 0 && num > 0)
			var/turf/simulated/floor/T = pick(turfs)
			turfs.Remove(T)
			num--

			if(vermin == VERM_SPIDERS)
				var/obj/effect/spider/spiderling/S = new(T)
				S.amount_grown = 0
			else
				var/spawn_type = pick(spawn_types)
				new spawn_type(T)


/datum/event/infestation/announce()
	command_announcement.Announce("Bioscans indicate that [vermstring] have been breeding in [locstring]. Clear them out, before this starts to affect productivity.", "Vermin infestation")

#undef LOC_KITCHEN
#undef LOC_ATMOS
#undef LOC_CHAPEL
#undef LOC_LIBRARY
#undef LOC_HYDRO
#undef LOC_VAULT
#undef LOC_CARGO
#undef LOC_TECH
#undef LOC_GARDEN

#undef VERM_MICE
#undef VERM_LIZARDS
#undef VERM_SPIDERS
#undef VERM_SNAKES
#undef VERM_FROGS
#undef VERM_ROACHES
