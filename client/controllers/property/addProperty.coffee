Template.addProperty.rendered = ->
  Meteor.typeahead.inject()
  return

Template.addProperty.events
	'click .btnAddProperty': (event, template) ->
		event.preventDefault

		#Property location
		island = template.find('#island').value
		city = template.find('#city').value
		address = template.find('#propertyAddress').value
		floor = template.find('.floor').value

		# Area
		areaType = 'City'
		if template.find('.villageLocation').checked then areaType = 'Village'
		if template.find('.ruralLocation').checked then areaType = 'Rural'
		if template.find('.seaLocation').checked then areaType = 'Seaside'

		closestMini = template.find('.closestMini').value
		closestSuper = template.find('.closestSuper').value

		carNecessary = 'Car not necessary'
		if template.find('.carRecomendedOption').checked then carNecessary = 'Car recomended'
		if template.find('.carNecessaryOption').checked then carNecessary = 'Car not necessary'

		distanceToSea = template.find('.distanceToSea').value
		distanceToBeach = template.find('.distanceToBeach').value

		beachType = 'No beach'
		if template.find('.sandBeachOption').checked then beachType = 'Sand beach'
		if template.find('.rockBeachOption').checked then beachType = 'Rocky beach'
		if template.find('.pebbleBeachOption').checked then beachType = 'Pebble beach'

		disturbance = 'Quiet area'
		if template.find('.someDisturbancesOption').checked then disturbance = 'Some disturbances'
		if template.find('.livelyOption').checked then disturbance = 'Lively area'


		areaDescription = template.find('.areaDescription').value


		# Property
		propertyType = 'Apartment'
		if template.find('.bungalowOption').checked = true then propertyType = 'Bungalow'
		if template.find('.townHouseOption').checked = true then propertyType = 'Town house'
		if template.find('.villaOption').checked = true then propertyType = 'Villa'
		if template.find('.fincaOption').checked = true then propertyType = 'Finca'


		isStudio = false
		if template.find('.isStudio').checked then isStudio = true

		numBedRooms = template.find('.numBedRooms').value
		numBathRooms = template.find('.numBathRooms').value

		gardenType = 'No balcony or garden'
		if template.find('.hasGarden').checked = true then gardenType = 'Has garden'
		if template.find('.hasVeranda').checked = true then gardenType = 'Has veranda or patio'
		if template.find('.hasBalcony').checked = true then gardenType = 'Has balcony'
		
		pool = 'No pool'
		if template.find('.sharedPoolOption').checked then pool = 'Shared pool'
		if template.find('.privatePoolOption').checked then pool = 'Private pool'

		aptDescription = template.find('.aptDescription').value

		# Equipment
		hasAC = ''
		hasCeilingFan = ''
		hasTV = ''
		hasDvd = ''
		hasCoffeeMaker = ''
		hasKettle = ''
		hasFridge = ''
		hasFreezer = ''
		hasWashMachine = ''
		hasDishWasher = ''
		hasOven = ''
		hasMicro = ''
		hasHob = ''
		
		if template.find('.hasAC').checked then hasAC = 'Air conditioning'
		if template.find('.hasCeilingFan').checked then hasCeilingFan = 'Ceiling fan'
		if template.find('.hasTV').checked then hasTV = 'TV'
		if template.find('.hasDvd').checked then hasDvd = 'DVD or Blue ray player'
		if template.find('.hasCoffeeMaker').checked then hasCoffeeMaker = 'Coffee maker'
		if template.find('.hasKettle').checked then hasKettle = 'Kettle'
		if template.find('.hasFridge').checked then hasFridge = 'Fridge'
		if template.find('.hasFreezer').checked then hasFreezer = 'Freezer'
		if template.find('.hasWashMachine').checked then hasWashMachine = 'Washing machine'
		if template.find('.hasDishWasher').checked then hasDishWasher = 'Dish washer'
		if template.find('.hasOven').checked then hasOven = 'Oven'
		if template.find('.hasMicro').checked then hasMicro = 'Micro wave'
		if template.find('.hasHob').checked then hasHob = 'Hob'
		equipmentComment = template.find('.equipmentComment').value

		# Internet and communicatuion
		hasSatCable = ''
		hasDsl = ''
		hasFibre = ''
		if template.find('.hasSatCable').checked then hasSatCable = 'Satelite or cable TV'
		if template.find('.hasDsl').checked then hasDsl = 'DSL Internet'
		if template.find('.hasFibre').checked then hasFibre = 'High speed Internet'
		internetComment = template.find('.internetComment').value

		# Pets
		petsConsidered = 'No pets'
		if template.find('.petsConsidered').checked then petsConsidered = 'Pets considered'
		petComment = template.find('.petComment').value

		# Suitability
		suitableForElderly = 'Not suitable for elderly'
		if template.find('.elderlyCheck').checked then suitableForElderly = 'Suitable for elderly'

		suitableForHandicapped = 'Not suitable for handicapped'
		if template.find('.motionCheck').checked then suitableForHandicapped = 'Suitable for handicapped'

		suitableForChildren = 'Not suitable for children'
		if template.find('.childrenCheck').checke then suitableForChildren = 'Suitable for children'

		# Price
		pricePerMonth = template.find('.pricePerMonth').value
		aditionalWeekPrice = template.find('.aditionalWeekPrice').value
		aditionalDayPrice = template.find('.aditionalDayPrice').value
		minimumStay = template.find('.minimumStay').value
		waterIncluded = template.find('.waterIncluded').value
		electricityIncluded = template.find('.electricityIncluded').value
		discounts = template.find('.discounts').value
		priceComment = template.find('.priceComment').value

		username = Meteor.user().username


		Meteor.call 'createLocation', island, city, (error) ->
		console.log 'Calling createProperty'
		Meteor.call 'createProperty', island, city, address, floor, areaType, closestMini, closestSuper, carNecessary,  distanceToSea, distanceToBeach, beachType, disturbance, areaDescription, propertyType, isStudio, numBedRooms, numBathRooms, gardenType, pool, aptDescription, hasAC, hasCeilingFan, hasTV, hasDvd, hasCoffeeMaker, hasKettle, hasFridge, hasFreezer, hasWashMachine, hasDishWasher, hasOven, hasMicro, hasHob, equipmentComment, hasSatCable, hasDsl, hasFibre , internetComment, petsConsidered, petComment, suitableForElderly, suitableForHandicapped, suitableForChildren, username, pricePerMonth, aditionalWeekPrice, aditionalDayPrice, minimumStay, waterIncluded, electricityIncluded, discounts, priceComment, (error) ->
		Router.go('/myPropertiesList')

Template.addProperty.helpers 
  islands: ->
    Locations.find().fetch().map (location) ->
      location.islandEn
   cities: ->
    Locations.find().fetch().map (location) ->
      location.city