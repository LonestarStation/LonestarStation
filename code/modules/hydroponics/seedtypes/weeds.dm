/datum/seed/weeds
	name = "weeds"
	seed_name = "weed"
	display_name = "weeds"

/datum/seed/weeds/New()
	..()
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,1)
	set_trait(TRAIT_YIELD,-1)
	set_trait(TRAIT_POTENCY,-1)
	set_trait(TRAIT_IMMUTABLE,-1)
	set_trait(TRAIT_PRODUCT_ICON,"flower4")
	set_trait(TRAIT_PRODUCT_COLOUR,"#FCEB2B")
	set_trait(TRAIT_PLANT_COLOUR,"#59945A")
	set_trait(TRAIT_PLANT_ICON,"bush6")

/datum/seed/weeds/killer
	name = "killerweeds"
	seed_name = "killer weeds"
	display_name = "killer weeds"
	mutants = null
	can_self_harvest = 1
	has_mob_product = /mob/living/simple_mob/flytrap

/datum/seed/weeds/killer/New()
	..()
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_PRODUCT_COLOUR,"#528648")