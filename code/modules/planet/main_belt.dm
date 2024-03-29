var/global/datum/planet/main_belt/lonestar = null

/datum/planet/main_belt
	name = "Main Belt"

/datum/planet/main_belt
	name = "Main Belt"
	desc = "The Main Belt in Sol is home to a plethora of stations, ranging from simple mining outposts to galactic export centers. \
	Many of the humans in this area are used to hardship and confined spaces, and through traffic is high. Though Pluto is a common  \
	choice for interstellar transit, there are also options within the belt to gain flight clearance out of Sol." // Ripped straight from the wiki.
	current_time = new /datum/time/sif() // 32 hour clocks are nice.
//	expected_z_levels = list(1) // To be changed when real map is finished.
	planetary_wall_type = /turf/unsimulated/wall/planetary/sif

	sun_name = "Sol"

/datum/planet/main_belt/New()
	..()
	lonestar = src
	weather_holder = null //new /datum/weather_holder/main_belt(src) // Cold weather is also nice.

// This code is horrible.
/datum/planet/main_belt/update_sun()
	..()
	var/datum/time/time = current_time
	var/length_of_day = time.seconds_in_day / 10 / 60 / 60 // 32
	var/noon = length_of_day / 2
	var/distance_from_noon = abs(text2num(time.show_time("hh")) - noon)
	sun_position = distance_from_noon / noon
	sun_position = abs(sun_position - 1)

	var/low_brightness = null
	var/high_brightness = null

	var/low_color = null
	var/high_color = null
	var/min = 0

	switch(sun_position)
		if(0 to 0.40) // Night
			low_brightness = 0.2
			low_color = "#000066"

			high_brightness = 0.5
			high_color = "#66004D"
			min = 0

		if(0.40 to 0.50) // Twilight
			low_brightness = 0.6
			low_color = "#66004D"

			high_brightness = 0.8
			high_color = "#CC3300"
			min = 0.40

		if(0.50 to 0.70) // Sunrise/set
			low_brightness = 0.8
			low_color = "#CC3300"

			high_brightness = 0.9
			high_color = "#FF9933"
			min = 0.50

		if(0.70 to 1.00) // Noon
			low_brightness = 0.9
			low_color = "#DDDDDD"

			high_brightness = 1.0
			high_color = "#FFFFFF"
			min = 0.70

	var/interpolate_weight = (abs(min - sun_position)) * 4
	var/weather_light_modifier = 1
	if(weather_holder && weather_holder.current_weather)
		weather_light_modifier = weather_holder.current_weather.light_modifier

	var/new_brightness = (LERP(low_brightness, high_brightness, interpolate_weight) ) * weather_light_modifier

	var/new_color = null
	if(weather_holder && weather_holder.current_weather && weather_holder.current_weather.light_color)
		new_color = weather_holder.current_weather.light_color
	else
		var/list/low_color_list = rgb2num(low_color)
		var/low_r = low_color_list[1]
		var/low_g = low_color_list[2]
		var/low_b = low_color_list[3]

		var/list/high_color_list = rgb2num(high_color)
		var/high_r = high_color_list[1]
		var/high_g = high_color_list[2]
		var/high_b = high_color_list[3]

		var/new_r = LERP(low_r, high_r, interpolate_weight)
		var/new_g = LERP(low_g, high_g, interpolate_weight)
		var/new_b = LERP(low_b, high_b, interpolate_weight)

		new_color = rgb(new_r, new_g, new_b)

	spawn(1)
		update_sun_deferred(2, new_brightness, new_color)

//Weather definitions
/datum/weather_holder/main_belt
	temperature = T0C
	allowed_weather_types = list(
		WEATHER_CLEAR		= new /datum/weather/main_belt/clear()
		)
	roundstart_weather_chances = list(
		WEATHER_CLEAR		= 100
		)

/datum/weather/main_belt
	name = "belt base"
	temp_high = 0	// 10c
	temp_low = 0	// -10c

/datum/weather/main_belt/clear
	name = "clear"
	transition_chances = list(
		WEATHER_CLEAR = 55
		)
	transition_messages = list(
		"Space clears up.",
		"Space is visible.",
		"Space is calm."
		)
	sky_visible = TRUE
	observed_message = "Space is clear."