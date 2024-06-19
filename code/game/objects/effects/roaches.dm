//generic procs copied from obj/effect/alien
/obj/effect/roachling
	name = "cockroach"
	desc = "it's a nasty little bug"
	icon = 'icons/effects/effects.dmi'
	density = 0
	var/health = 5
	icon_state = "cockroach"
	anchored = 0
	layer = HIDING_LAYER
	var/last_itch = 0
	var/amount_grown = 0
	var/obj/machinery/atmospherics/unary/vent_pump/entry_vent
	var/travelling_in_vent = 0
	var/list/grow_as = list(/mob/living/simple_mob/animal/space/roach)

	var/stunted = FALSE

/obj/effect/roachling/attack_generic(mob/user)
	if(isanimal(user))
		var/mob/living/simple_mob/animal/critter = user
		if(critter.melee_damage_lower > 0)
			critter.do_attack_animation(src)
			critter.setClickCooldown(critter.base_attack_cooldown)
			visible_message(SPAN_WARNING("\The [src] has been [pick(critter.attacktext)] by \the [critter]!"))
			health -= rand(critter.melee_damage_lower, critter.melee_damage_upper)
			healthcheck()
			return TRUE
	. = ..()

/obj/effect/roachling/attackby(var/obj/item/W, var/mob/user)
	user.setClickCooldown(user.get_attack_speed(W))

	if(W.attack_verb.len)
		visible_message("<span class='warning'>\The [src] has been [pick(W.attack_verb)] with \the [W][(user ? " by [user]." : ".")]</span>")
	else
		visible_message("<span class='warning'>\The [src] has been attacked with \the [W][(user ? " by [user]." : ".")]</span>")

	var/damage = W.force / 4.0

	if(istype(W, /obj/item/weldingtool))
		var/obj/item/weldingtool/WT = W

		if(WT.remove_fuel(0, user))
			damage = 15
			playsound(src, W.usesound, 100, 1)

	health -= damage
	healthcheck()

/obj/effect/roachling/attack_hand(mob/living/user)
	user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
	user.do_attack_animation(src)
	if(prob(20))
		visible_message("<span class='warning'>\The [user] tries to stomp on \the [src], but misses!</span>")
		var/list/nearby = oview(2, src)
		if(length(nearby))
			walk_to(src, pick(nearby), 2)
			return
	visible_message("<span class='warning'>\The [user] stomps \the [src] dead!</span>")
	die()

/obj/effect/roachling/bullet_act(var/obj/item/projectile/Proj)
	..()
	health -= Proj.get_structure_damage()
	healthcheck()

/obj/effect/roachling/proc/die()
	qdel(src)

/obj/effect/roachling/proc/healthcheck()
	if(health <= 0)
		die()

/obj/effect/roachling/fire_act(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	if(exposed_temperature > 300 + T0C)
		health -= 5
		healthcheck()

/mob/living/simple_mob/animal/space/roach/proc/make_roachling()
	adjust_scale(icon_scale_x * 0.7, icon_scale_y * 0.7)
	maxHealth = round(maxHealth * 0.5)
	health = round(health * 0.5)
	melee_damage_lower *= 0.7
	melee_damage_upper *= 0.7

/obj/effect/roachling/Initialize(var/ml, var/atom/parent)
	pixel_x = rand(6,-6)
	pixel_y = rand(6,-6)
	START_PROCESSING(SSobj, src)
	//50% chance to grow up
	if(amount_grown != -1 && prob(50))
		amount_grown = 1
	get_light_and_color(parent)
	. = ..(ml)

/obj/effect/roachling/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/effect/roachling/Bump(atom/user)
	if(istype(user, /obj/structure/table))
		src.loc = user.loc
	else
		..()

/obj/effect/roachling/die()
	visible_message("<span class='alert'>[src] dies!</span>")
	new /obj/effect/decal/cleanable/cockroach_remains(src.loc)
	..()

/obj/effect/roachling/healthcheck()
	if(health <= 0)
		die()

/obj/effect/roachling/process()
	healthcheck()
	if(travelling_in_vent)
		if(istype(src.loc, /turf))
			travelling_in_vent = 0
			entry_vent = null
	else if(entry_vent)
		if(get_dist(src, entry_vent) <= 1)
			if(entry_vent.network && entry_vent.network.normal_members.len)
				var/list/vents = list()
				for(var/obj/machinery/atmospherics/unary/vent_pump/temp_vent in entry_vent.network.normal_members)
					vents.Add(temp_vent)
				if(!vents.len)
					entry_vent = null
					return
				var/obj/machinery/atmospherics/unary/vent_pump/exit_vent = pick(vents)
				/*if(prob(50))
					src.visible_message("<B>[src] scrambles into the ventillation ducts!</B>")*/

				spawn(rand(20,60))
					loc = exit_vent
					var/travel_time = round(get_dist(loc, exit_vent.loc) / 2)
					spawn(travel_time)

						if(!exit_vent || exit_vent.welded)
							loc = entry_vent
							entry_vent = null
							return

						if(prob(50))
							src.visible_message("<span class='notice'>You hear something squeezing through the ventilation ducts.</span>",2)
						sleep(travel_time)

						if(!exit_vent || exit_vent.welded)
							loc = entry_vent
							entry_vent = null
							return
						loc = exit_vent.loc
						entry_vent = null
						var/area/new_area = get_area(loc)
						if(new_area)
							new_area.Entered(src)
			else
				entry_vent = null

	//=================

	if(isturf(loc))
		skitter()

	else if(isorgan(loc))
		if(amount_grown < 0) amount_grown = 1
		var/obj/item/organ/external/O = loc
		if(!O.owner || O.owner.stat == DEAD || amount_grown > 80)
			O.implants -= src
			src.loc = O.owner ? O.owner.loc : O.loc
			src.visible_message("<span class='warning'>\A [src] makes its way out of [O.owner ? "[O.owner]'s [O.name]" : "\the [O]"]!</span>")
			if(O.owner)
				O.owner.apply_damage(1, BRUTE, O.organ_tag)
		else if(prob(1))
			O.owner.apply_damage(1, TOX, O.organ_tag)
			if(world.time > last_itch + 30 SECONDS)
				last_itch = world.time
				to_chat(O.owner, "<span class='notice'>Your [O.name] itches...</span>")
	else if(prob(1))
		src.visible_message("<span class='notice'>\The [src] skitters.</span>")

	if(amount_grown >= 0)
		amount_grown += rand(0,2)

/obj/effect/roachling/proc/skitter()
	if(isturf(loc))
		if(prob(25))
			var/list/nearby = trange(5, src) - loc
			if(nearby.len)
				var/target_atom = pick(nearby)
				walk_to(src, target_atom, 5)
				if(prob(25))
					src.visible_message("<span class='notice'>\The [src] skitters[pick(" away"," around","")].</span>")
		else if(prob(5))
			//vent crawl!
			for(var/obj/machinery/atmospherics/unary/vent_pump/v in view(7,src))
				if(!v.welded)
					entry_vent = v
					walk_to(src, entry_vent, 5)
					break
		if(amount_grown >= 100)
			var/spawn_type = pick(grow_as)
			var/mob/living/simple_mob/animal/space/roach/GS = new spawn_type(src.loc, src)
			if(stunted)
				spawn(2)
					GS.make_roachling()
			qdel(src)

/obj/effect/roachling/stunted
	stunted = TRUE

	grow_as = list(/mob/living/simple_mob/animal/space/roach/stunted)

/obj/effect/roachling/non_growing
	amount_grown = -1

/obj/effect/decal/cleanable/cockroach_remains
	name = "cockroach remains"
	desc = "A dead bug."
	icon = 'icons/effects/effects.dmi'
	icon_state = "cockroach_dead"
