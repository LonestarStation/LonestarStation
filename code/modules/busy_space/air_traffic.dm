//Cactus, Speedbird, Dynasty, oh my

var/global/datum/lore/atc_controller/atc = new/datum/lore/atc_controller

/datum/lore/atc_controller
	var/delay_min = 25 MINUTES			//How long between ATC traffic, min.  Default is 25 mins.
	var/delay_max = 40 MINUTES			//How long between ATC traffic, max.  Default is 40 mins.
	var/backoff_delay = 5 MINUTES		//How long to back off if we can't talk and want to.  Default is 5 mins.
	var/next_message					//When the next message should happen in world.time
	var/force_chatter_type				//Force a specific type of messages

	var/squelched = 0					//If ATC is squelched currently

/datum/lore/atc_controller/New()
	spawn(10 SECONDS) //Lots of lag at the start of a shift.
		msg("New shift beginning, resuming traffic control.")
	next_message = world.time + rand(delay_min,delay_max)
	process()

/datum/lore/atc_controller/process()
	if(world.time >= next_message)
		if(squelched)
			next_message = world.time + backoff_delay
		else
			next_message = world.time + rand(delay_min,delay_max)
			random_convo()

	spawn(1 MINUTE) //We don't really need high-accuracy here.
		process()

/datum/lore/atc_controller/proc/msg(var/message,var/sender)
	ASSERT(message)
	global_announcer.autosay("[message]", sender ? sender : "[using_map.station_short] Traffic Control")

/datum/lore/atc_controller/proc/reroute_traffic(var/yes = 1)
	if(yes)
		if(!squelched)
			msg("Reroutin' traffic away from [using_map.station_name].")
		squelched = 1
	else
		if(squelched)
			msg("Resumin' normal traffic routin'round [using_map.station_name].")
		squelched = 0

/datum/lore/atc_controller/proc/shift_ending(var/evac = 0)
	msg("Automated Shuttle departin' [using_map.station_name] fer [using_map.dock_name] on routine transfer route.","Lonestar Automated Shuttle")
	sleep(5 SECONDS)
	msg("Automated Shuttle, cleared to complete routine transfer from [using_map.station_name] to [using_map.dock_name].")

/datum/lore/atc_controller/proc/random_convo()
	var/datum/lore/organization/source = loremaster.organizations[pick(loremaster.organizations)]

	//get the relevant mission string from our org.
	//will also give us a new ship name
	var/mission_text = source.generate_mission()

	//Let's get some mission parameters

	var/combined_name = "[source.short_name] [source.current_ship]"
	var/alt_atc_names = list("[using_map.station_short] TraCon","[using_map.station_short] Control","[using_map.station_short] ATC","[using_map.station_short] Airspace")
	var/wrong_atc_names = list("Sol Command","Solar StarCon", "Main Belt TraCon", "[using_map.dock_name]")
	var/request_verb = list("requesting","calling for","asking for")

	//First response is 'yes', second is 'no'
	var/requests = list("[using_map.station_short] transit clearance" = list("permission fer transit granted", "permission fer transit denied, contact regional on 953.5"),
						"planetary flight rules" = list("authorizin' asteroid flight rules", "denyin' asteroid flight rules right now due t'traffic"),
						"special flight rules" = list("authorizin' special flight rules", "denyin' special flight rules, not allowed fer your traffic class"),
						"current solar weather information" = list("sendin' the relevant info via tightbeam", "cannot fulfill your request at the moment"),
						"current local weather information" = list("sendin' local weather info now", "local weather data unavailable, call up regional on 953.5"),
						"nearby traffic info" = list("sendin' you current traffic info", "ain't no available info in yer area, compadre"),
						"remote telemetry data" = list("sendin' telemetry now", "no uplink from your ship, you tried turnin' it off an' on again"),
						"refueling information" = list("sendin' refuelin' info now", "no fuel fer your ship class in this sector"),
						"a current system time sync" = list("sendin' time sync ping to y'all now", "that there ship ain't compatible with our time sync, gonna have to set time manually"),
						"current system starcharts" = list("transmittin' current starcharts", "your request is queued, little busy here"),
						"permission to engage FTL" = list("permission to engage FTL granted, good day", "permission denied, wait fer current traffic to pass"),
//						"permission to depart Sif atmosphere" = list("permission to depart granted, good day", "permission denied, wait for current traffic to pass"),
//						"permission to enter Sif atmosphere" = list("good day, permission to enter granted", "permission denied, wait for current traffic to pass"),
						)

	//Random chance things for variety
	var/chatter_type = "normal"
	if(force_chatter_type)
		chatter_type = force_chatter_type
	else
		chatter_type = pick(2;"emerg",5;"wrong_freq","normal") //Be nice to have wrong_lang...

	var/yes = prob(source.legit) //Chance for them to say yes vs no

	var/request = pick(requests)
	var/callname = pick(alt_atc_names)
	var/response = requests[request][yes ? 1 : 2] //1 is yes, 2 is no

	var/full_request
	var/full_response
	var/full_closure

	switch(chatter_type)
		if("wrong_freq")
			callname = pick(wrong_atc_names)
			full_request = "[callname], this is [source.short_name] [mission_text], [pick(request_verb)] [request]."
			full_response = "[combined_name], this here is [using_map.station_short] TraCon, wrong frequency. Switch on over to [rand(700,999)].[rand(1,9)]."
			full_closure = "[using_map.station_short] TraCon, understood, apologies."
		if("wrong_lang")
			//Can't implement this until autosay has language support
		if("emerg")
			var/problem = pick("hull breaches on multiple decks","unknown life forms on board","a drive about to go critical","lost attitude control","asteroids impacting the hull","an engine on fire","a total loss of engine power","a malfunctioning bluespace drive","people trying to board the ship","instrument failure and zero visibility", "Skathari on board", "a malfunctioning core intelligence")
			full_request = "This is [combined_name] declaring an emergency! We have [problem]!"
			full_response = "[combined_name], this is [using_map.station_short] TraCon, copy. Forward request on emergency responder channel [rand(700,999)].[rand(1,9)]."
			full_closure = pick("[using_map.station_short] TraCon, okay, switching now!", "Roger, [using_map.station_short] TraCon!", "Switching!", "...")
		else
			full_request = "[callname], this is [source.short_name] [mission_text], [pick(request_verb)] [request]."
			full_response = "Howdy, [combined_name], this here's [using_map.station_short] TraCon, [response]." //Station TraCon always calls themselves TraCon
			full_closure = "[using_map.station_short] TraCon, [yes ? "thank you" : "understood"], good day." //They always copy what TraCon called themselves in the end when they realize they said it wrong
			if(source.motto && prob(source.annoying) && yes)
				full_closure += " " + source.motto

	//Ship sends request to ATC
	msg(full_request,"[source.current_ship]")
	sleep(5 SECONDS)
	//ATC sends response to ship
	msg(full_response)
	sleep(5 SECONDS)
	//Ship sends response to ATC
	msg(full_closure,"[source.current_ship]")
	return