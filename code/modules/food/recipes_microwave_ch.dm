	//Imported food from old code
/datum/recipe/microwave/sauerkraut
	reagents = list("sodiumchloride" = 3)
	fruit = list("cabbage" = 1)
	result = /obj/item/weapon/reagent_containers/food/snacks/sauerkraut

/datum/recipe/microwave/tamales
	fruit = list("corn" = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/doughslice,
		/obj/item/weapon/reagent_containers/food/snacks/doughslice,
		/obj/item/weapon/reagent_containers/food/snacks/doughslice,
		/obj/item/weapon/reagent_containers/food/snacks/meat
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/tamales

/datum/recipe/microwave/bigos
	reagents = list("flour" = 5, "water" = 5)
	fruit = list("onion" = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/sauerkraut,
		/obj/item/weapon/reagent_containers/food/snacks/sausage
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/bigos

/datum/recipe/microwave/concha
	reagents = list("berryjuice" = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/dough,
		/obj/item/weapon/reagent_containers/food/snacks/egg
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/concha

/datum/recipe/microwave/pandenata
	reagents = list("sugar" = 10, "cream" = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/doughslice,
		/obj/item/weapon/reagent_containers/food/snacks/doughslice,
		/obj/item/weapon/reagent_containers/food/snacks/doughslice
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/pandenata

/datum/recipe/microwave/tocino
	reagents = list("sodiumchloride" = 5, "wine" = 5)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/rawcutlet
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/tocino

/datum/recipe/microwave/garlicbread
	fruit = list("onion" = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge,
		/obj/item/weapon/reagent_containers/food/snacks/slice/bread
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/garlicbread

/datum/recipe/microwave/plumpburger
	fruit = list("plumphelmet" = 1)
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/cheesewedge,
		/obj/item/weapon/reagent_containers/food/snacks/bun
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/plumpburger

/datum/recipe/microwave/wataur
	reagents = list("water" = 100)
	result = /obj/item/weapon/reagent_containers/food/drinks/cans/waterbottle/wataur

/datum/recipe/microwave/bigbeanburrito
	fruit = list("soybeans" = 3)
	items = list(
	/obj/item/weapon/reagent_containers/food/snacks/meatburrito,
	/obj/item/weapon/reagent_containers/food/snacks/rawcutlet,
	/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/slice/bigbeanburrito

/datum/recipe/microwave/supremoburrito
	fruit = list("soybeans" = 3, "chili" = 1)
	items = list(
	/obj/item/weapon/reagent_containers/food/snacks/slice/bigbeanburrito,
	/obj/item/weapon/reagent_containers/food/snacks/sliceable/cheesewheel,
	/obj/item/weapon/reagent_containers/food/snacks/tortilla,
	/obj/item/weapon/reagent_containers/food/snacks/meat
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/sliceable/supremoburrito

/datum/recipe/steamtealeaf
	reagents = list("water" = 5)
	fruit = list("tea" = 1)

	result = /obj/item/weapon/reagent_containers/food/snacks/steamtealeaf

/datum/recipe/greentealeaf //TODO: Figure out how to make this recipe with a drying rack.
	items = list(
		/obj/item/weapon/reagent_containers/food/snacks/steamrolltealeaf
	)
	result = /obj/item/weapon/reagent_containers/food/snacks/greentealeaf
