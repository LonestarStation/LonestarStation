/obj/item/clothing/apply_accessories_to_worn_overlay(var/image/standing)
	if(LAZYLEN(accessories))
		for(var/obj/item/clothing/accessory/A in accessories)
			standing.add_overlay(A.get_mob_overlay())
	return standing

/obj/item/clothing/apply_blood_to_worn_overlay(var/image/standing)
	if(blood_DNA && blood_sprite_state && ishuman(loc))
		var/mob/living/carbon/human/H = loc
		var/image/bloodsies	= image(icon = H.species.get_blood_mask(H), icon_state = blood_sprite_state)
		bloodsies.color		= blood_color
		standing.add_overlay(bloodsies)
	return standing

//UNIFORM: Always appends "_s" to iconstate, stupidly.
/obj/item/clothing/under/get_worn_icon_state(var/slot_name)
	return "[..()]_s"

//HELMET: May have a lighting overlay
/obj/item/clothing/head/get_worn_overlay(var/mob/living/wearer, var/body_type, var/slot_name, var/inhands, var/default_icon, var/default_layer, var/icon/clip_mask)
	var/image/standing = ..()
	if(standing && on && slot_name == slot_head_str)
		var/cache_key = "[light_overlay][LAZYACCESS(sprite_sheets,body_type) ? "_[body_type]" : ""]"
		if(light_overlay_cache[cache_key])
			standing.add_overlay(light_overlay_cache[cache_key])
	return standing

//SUIT: Blood state is slightly different
/obj/item/clothing/suit/apply_blood_to_worn_overlay(var/image/standing)
	if(blood_DNA && blood_sprite_state && ishuman(loc))
		var/mob/living/carbon/human/H = loc
		blood_sprite_state = "[blood_overlay_type]blood"
		var/image/bloodsies	= image(icon = H.species.get_blood_mask(H), icon_state = blood_sprite_state)
		bloodsies.color		= blood_color
		standing.add_overlay(bloodsies)
	return standing
