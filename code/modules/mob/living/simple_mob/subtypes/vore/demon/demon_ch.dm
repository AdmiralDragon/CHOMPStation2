/mob/living/simple_mob/vore/demon
	name = "Rift Walker"
	desc = "A large bipedal creature, body a mix of dark fur and scales. Marks on the creatures body pulse slowly with red light"

	icon_state = "boxfox"
	icon_living = "boxfox"
	icon_dead = "dead"
	icon_rest = "boxfox_rest"
	icon = 'icons/mob/demon_ch.dmi'
	vis_height = 47

	faction = "demon"
	maxHealth = 200
	health = 200
	movement_cooldown = 0

	see_in_dark = 10
	has_hands = TRUE
	seedarkness = FALSE
	attack_sound = 'sound/weapons/bladeslice.ogg'
	has_langs = list(LANGUAGE_GALCOM,LANGUAGE_SHADEKIN,LANGUAGE_CULT)

	melee_damage_lower = 20
	melee_damage_upper = 15

	min_oxy = 0
	max_oxy = 0
	min_tox = 0
	max_tox = 0
	min_co2 = 0
	max_co2 = 0
	min_n2 = 0
	max_n2 = 0
	minbodytemp = 0
	maxbodytemp = 96669

	response_help = "touches"
	response_disarm = "pushes"
	response_harm = "hits"

	attacktext = list("mauled","slashed","clawed")
	friendly = list("pokes", "scratches", "rurrs softly at", "sniffs on")

	vore_active = 1
	swallowTime = 2 SECOND
	vore_pounce_chance = 15
	vore_icons = SA_ICON_LIVING
	vore_escape_chance = 25

	var/shifted_out = FALSE
	var/shift_state = AB_SHIFT_NONE
	var/last_shift = 0
	var/blood_spawn = 0
	var/is_shifting = FALSE

/mob/living/simple_mob/vore/demon/init_vore()
	..()
	var/obj/belly/B = vore_selected
	B.name = "Stomach"
	B.desc = "You slide down the slick, slippery gullet of the creature. It's warm, and the air is thick. You can feel the doughy walls of the creatures gut push and knead into your form! Slimy juices coat your form stinging against your flesh as they waste no time to start digesting you. The creature's heartbeat and the gurgling of their stomach are all you can hear as your jostled about, treated like nothing but food."

/mob/living/simple_mob/vore/demon/UnarmedAttack()
	if(shifted_out)
		return FALSE

	. = ..()

/mob/living/simple_mob/vore/demon/can_fall()
	if(shifted_out)
		return FALSE

	return ..()

/mob/living/simple_mob/vore/demon/zMove(direction)
	if(shifted_out)
		var/turf/destination = (direction == UP) ? GetAbove(src) : GetBelow(src)
		if(destination)
			forceMove(destination)
		return TRUE

	return ..()

/mob/living/simple_mob/vore/demon/Life()
	. = ..()
	if(shifted_out)
		density = FALSE

/mob/living/simple_mob/vore/demon/handle_atmos()
	if(shifted_out)
		return
	else
		return .=..()

/mob/living/simple_mob/vore/demon/update_canmove()
	if(is_shifting)
		canmove = FALSE
		return canmove
	else
		return ..()