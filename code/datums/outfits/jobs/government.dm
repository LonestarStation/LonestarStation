//lonestar gov jobs
//solar advisor
//lonestar rangers
//board of directors


/decl/hierarchy/outfit/job/governor
	name = OUTFIT_JOB_NAME("Lonestar Governor")
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/suit_jacket/charcoal
	head = /obj/item/clothing/head/cowboy_hat
	l_ear = /obj/item/radio/headset/heads/captain
	shoes = /obj/item/clothing/shoes/boots/cowboy/classic
	backpack = /obj/item/storage/backpack/captain
	satchel_one = /obj/item/storage/backpack/satchel/cap
	messenger_bag = /obj/item/storage/backpack/messenger/com
	id_type = /obj/item/card/id/gold
	pda_type = /obj/item/pda/captain

/decl/hierarchy/outfit/job/governor/post_equip(var/mob/living/carbon/human/H)
	..()
	if(H.age>49)
		// Since we can have something other than the default uniform at this
		// point, check if we can actually attach the medal
		var/obj/item/clothing/uniform = H.w_uniform
		if(uniform)
			var/obj/item/clothing/accessory/medal/gold/captain/medal = new()
			if(uniform.can_attach_accessory(medal))
				uniform.attach_accessory(null, medal)
			else
				qdel(medal)

/decl/hierarchy/outfit/job/soladvisor
	name = OUTFIT_JOB_NAME("Sol Advisor")
	l_ear = /obj/item/radio/headset/heads/hop
	shoes = /obj/item/clothing/shoes/black
	id_type = /obj/item/card/id/centcom
	pda_type = /obj/item/pda/captain

/decl/hierarchy/outfit/job/soladvisor/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.gender == FEMALE)
		uniform = /obj/item/clothing/under/suit_jacket/female/skirt
	else
		uniform = /obj/item/clothing/under/suit_jacket/charcoal

/decl/hierarchy/outfit/job/ranger
	name = OUTFIT_JOB_NAME("Lonestar Ranger")
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	l_ear = /obj/item/radio/headset/heads/hos
//	head = /obj/item/clothing/head/soft/sec/corp
	gloves = /obj/item/clothing/gloves/black
	uniform = /obj/item/clothing/under/det/black_alt
	id_type = /obj/item/card/id/centcom/ERT
	pda_type = /obj/item/pda/heads/hos
	shoes = /obj/item/clothing/shoes/boots/duty
	backpack = /obj/item/storage/backpack/security
	satchel_one = /obj/item/storage/backpack/satchel/sec
	backpack_contents = list(/obj/item/handcuffs = 1)
	messenger_bag = /obj/item/storage/backpack/messenger/sec

/decl/hierarchy/outfit/job/ceo
	name = OUTFIT_JOB_NAME("Transtellar CEO")
	l_ear = /obj/item/radio/headset/heads/hop
	shoes = /obj/item/clothing/shoes/black
	id_type = /obj/item/card/id/centcom/vip
	pda_type = /obj/item/pda/captain

/decl/hierarchy/outfit/job/ceo/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.gender == FEMALE)
		uniform = /obj/item/clothing/under/suit_jacket/female/skirt
	else
		uniform = /obj/item/clothing/under/suit_jacket/charcoal

/decl/hierarchy/outfit/job/baron
	name = OUTFIT_JOB_NAME("Lonestar Baron")
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/suit_jacket/charcoal
	head = /obj/item/clothing/head/cowboy_hat
	l_ear = /obj/item/radio/headset/heads/captain
	shoes = /obj/item/clothing/shoes/boots/cowboy/classic
	backpack = /obj/item/storage/backpack/captain
	satchel_one = /obj/item/storage/backpack/satchel/cap
	messenger_bag = /obj/item/storage/backpack/messenger/com
	id_type = /obj/item/card/id/gold
	pda_type = /obj/item/pda/captain

/decl/hierarchy/outfit/job/baron/post_equip(var/mob/living/carbon/human/H)
	..()
	if(H.age>49)
		// Since we can have something other than the default uniform at this
		// point, check if we can actually attach the medal
		var/obj/item/clothing/uniform = H.w_uniform
		if(uniform)
			var/obj/item/clothing/accessory/medal/gold/captain/medal = new()
			if(uniform.can_attach_accessory(medal))
				uniform.attach_accessory(null, medal)
			else
				qdel(medal)

/decl/hierarchy/outfit/job/surgeongeneral
	name = OUTFIT_JOB_NAME("Lonestar Surgeon General")
	l_ear = /obj/item/radio/headset/heads/captain
	uniform = /obj/item/clothing/under/rank/chief_medical_officer
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/cmo
	shoes = /obj/item/clothing/shoes/dress
	pda_slot = slot_l_store
	backpack = /obj/item/storage/backpack/medic
	satchel_one = /obj/item/storage/backpack/satchel/med
	messenger_bag = /obj/item/storage/backpack/messenger/med
	id_type = /obj/item/card/id/centcom
	pda_type = /obj/item/pda/heads/cmo

/decl/hierarchy/outfit/job/surgeongeneral/post_equip(var/mob/living/carbon/human/H)
	..()
	if(H.age>49)
		// Since we can have something other than the default uniform at this
		// point, check if we can actually attach the medal
		var/obj/item/clothing/uniform = H.w_uniform
		if(uniform)
			var/obj/item/clothing/accessory/medal/gold/captain/medal = new()
			if(uniform.can_attach_accessory(medal))
				uniform.attach_accessory(null, medal)
			else
				qdel(medal)

/decl/hierarchy/outfit/job/board
	name = OUTFIT_JOB_NAME("Lonestar Board of Directors")
	l_ear = /obj/item/radio/headset/heads/hop
	shoes = /obj/item/clothing/shoes/boots/cowboy/classic
	id_type = /obj/item/card/id/centcom
	pda_type = /obj/item/pda/captain

/decl/hierarchy/outfit/job/board/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.gender == FEMALE)
		uniform = /obj/item/clothing/under/suit_jacket/female/skirt
	else
		uniform = /obj/item/clothing/under/suit_jacket/charcoal
