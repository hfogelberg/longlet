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
		locationElem = template.find('input:radio[name=locationType]:checked')
		locationType = $(locationElem).val()

		closestMini = template.find('.closestMini').value
		closestSuper = template.find('.closestSuper').value

		carElem = template.find('input:radio[name=car]:checked')
		carNecessary = $(carElem).val()

		distanceToSea = template.find('.distanceToSea').value
		distanceToBeach = template.find('.distanceToBeach').value

		beachElem = template.find('input:radio[name=beachType]:checked')
		beachType = $(beachElem).val()

		noiseElem = template.find('input:radio[name=noise]:checked')
		disturbance = $(noiseElem).val()

		areaDescription = template.find('.areaDescription').value

		# Property
		propertyElem = template.find('input:radio[name=propertyType]:checked')
		propertyType = $(propertyElem).val()

		isStudio = false
		if template.find('.isStudio').checked then isStudio = true
		alert isStudio

		numBedRooms = template.find('.numBedRooms').value
		numBathRooms = template.find('.numBathRooms').value

		externalElem = template.find('input:radio[name=externalSpace]:checked')
		gardenType = $(externalElem).val()

		poolElem = template.find('input:radio[name=pool]:checked')
		pool = $(poolElem).val()

		aptDescription = template.find('.aptDescription').value

		# Equipment
		hasAC = false
		hasCeilingFan = false
		hasTV = false
		hasDvd = false
		hasCoffeeMaker = false
		hasKettle = false
		hasFridge = false
		hasFreezer = false
		hasWashMachine = false
		hasDishWasher = false
		hasOven = false
		hasMicro = false
		hasHob = false
		
		if template.find('.hasAC').checked then hasAC = true
		if template.find('.hasCeilingFan').checked then hasCeilingFan = true
		if template.find('.hasTV').checked then hasTV = true
		if template.find('.hasDvd').checked then hasDvd = true
		if template.find('.hasCoffeeMaker').checked then hasCoffeeMaker = true
		if template.find('.hasKettle').checked then hasKettle = true
		if template.find('.hasFridge').checked then hasFridge = true
		if template.find('.hasFreezer').checked then hasFreezer = true
		if template.find('.hasWashMachine').checked then hasWashMachine = true
		if template.find('.hasDishWasher').checked then hasDishWasher = true
		if template.find('.hasOven').checked then hasOven = true
		if template.find('.hasMicro').checked then hasMicro = true
		if template.find('.hasHob').checked then hasHob = true
		equipmentComment = template.find('.equipmentComment').value

		# Internet and communicatuion
		hasSatCable = ''
		if template.find('.hasSatCable').checked then hasSatCable = 'Satelite or cable TV'

		internetELem = template.find('input:radio[name=internet]:checked')
		internet = $(internetELem).val()

		# Pets
		petsConsidered = false
		if template.find('.petsConsidered').checked then petsConsidered = true
		petComment = template.find('.petComment').value

		# Suitability
		suitableForElderly = false
		if template.find('.elderlyCheck').checked then suitableForElderly = true

		suitableForHandicapped = false
		if template.find('.motionCheck').checked then suitableForHandicapped = true

		suitableForChildren = false
		if template.find('.childrenCheck').checke then suitableForChildren = true

		# Price
		pricePerMonth = template.find('.pricePerMonth').value
		aditionalWeekPrice = template.find('.aditionalWeekPrice').value
		aditionalDayPrice = template.find('.aditionalDayPrice').value
		minimumStay = template.find('.minimumStay').value

		waterIncluded = false
		if template.find('.waterIncluded').checked then waterIncluded = true

		electricityIncluded = false
		if template.find('.electricityIncluded').checked then	electricityIncluded = true
		discounts = template.find('.discounts').value
		priceComment = template.find('.priceComment').value

		username = Meteor.user().username


		Meteor.call 'createLocation', island, city, (error) ->
		console.log 'Calling createProperty'
		Meteor.call 'createProperty', island, city, address, floor, locationType, closestMini, closestSuper, carNecessary,  distanceToSea, distanceToBeach, beachType, disturbance, areaDescription, propertyType, isStudio, numBedRooms, numBathRooms, gardenType, pool, aptDescription, hasAC, hasCeilingFan, hasTV, hasDvd, hasCoffeeMaker, hasKettle, hasFridge, hasFreezer, hasWashMachine, hasDishWasher, hasOven, hasMicro, hasHob, equipmentComment, hasSatCable, internet, internetComment, petsConsidered, petComment, suitableForElderly, suitableForHandicapped, suitableForChildren, username, pricePerMonth, aditionalWeekPrice, aditionalDayPrice, minimumStay, waterIncluded, electricityIncluded, discounts, priceComment, (error) ->
		Router.go('/myPropertiesList')

Template.addProperty.helpers 
  islands: ->
    Locations.find().fetch().map (location) ->
      location.islandEn
   cities: ->
    Locations.find().fetch().map (location) ->
      location.city