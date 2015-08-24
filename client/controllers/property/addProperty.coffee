Template.addProperty.rendered = ->
  Meteor.typeahead.inject()
  return

Template.addProperty.events
	'click .btnAddProperty': (event, template) ->
		event.preventDefault

		island = template.find('#island').value
		city = template.find('#city').value

		console.log island
		console.log city

		disturbance = ''
		if template.find('.quietOption').checked = true then disturbance = template.find('.quietOption').value
		if template.find('.someDisturbancesOption').checked = true then disturbance = template.find('.quietOption').value
		if template.find('.livelyOption').checked = true then disturbance = template.find('.quietOption').value

		loactionType = ''
		if template.find('.cityLocation').checked = true then loactionType = template.find('.cityLocation').value
		if template.find('.villageLocation').checked = true then loactionType = template.find('.villageLocation').value
		if template.find('.mountainLocation').checked = true then loactionType = template.find('.mountainLocation').value
		if template.find('.seaLocation').checked = true then loactionType = template.find('.seaLocation').value

		carNecessary = ''
		if template.find('.noCarNecessaryOption').checked = true then carNecessary = template.find('.noCarNecessaryOption').value
		if template.find('.carRecomendedOption').checked = true then carNecessary = template.find('.carRecomendedOption').value
		if template.find('.carNecessaryOption').checked = true then carNecessary = template.find('.carNecessaryOption').value

		distanceToSea = template.find('.distanceToSea').value
		distanceToBeach = template.find('.distanceToBeach').value

		beachType = ''
		if template.find('.sandBeachOption').checked = true then beachType = template.find('.sandBeachOption').value
		if template.find('.rockBeachOption').checked = true then beachType = template.find('.rockBeachOption').value
		if template.find('.pebbleBeachOption').checked = true then beachType = template.find('.pebbleBeachOption').value

		areaDescription = template.find('.areaDescription').value
		numBedRooms = template.find('.numBedRooms').value
		numBathRooms = template.find('.numBathRooms').value
		aptDescription = template.find('.aptDescription').value

		pool = ''
		if template.find('.noPoolOption').checked = true then pool = template.find('.noPoolOption').value
		if template.find('.sharedPoolOption').checked = true then pool = template.find('.sharedPoolOption').value
		if template.find('.privatePoolOption').checked = true then pool = template.find('.privatePoolOption').value

		petsConsidered = 'No pets'
		if template.find('.petsConsidered').checked = true then petsConsidered = 'Pets considered'
		petComment = template.find('.petComment').value

		console.log 'Pets considered: ' + petsConsidered

		suitableForElderly = 'Not suitable for elderly'
		if template.find('.elderlyCheck').checked = true then suitableForElderly = 'Suitable for elderly'

		suitableForHandicapped = 'Not suitable for handicapped'
		if template.find('.motionCheck').checked = true then suitableForHandicapped = 'Suitable for handicapped'

		suitableForChildren = 'Not suitable for children'
		if template.find('.childrenCheck').checked = true then suitableForChildren = 'Suitable for children'

		propertyType = ''
		if template.find('.apartmentOption').checked = true then propertyType = template.find('.apartmentOption').value
		if template.find('.bungalowOption').checked = true then propertyType = template.find('.bungalowOption').value
		if template.find('.townHouseOption').checked = true then propertyType = template.find('.townHouseOption').value
		if template.find('.villaOption').checked = true then propertyType = template.find('.villaOption').value
		if template.find('.fincaOption').checked = true then propertyType = template.find('.fincaOption').value

		floor = template.find('.floor').value

		gardenType = ''
		if template.find('.hasGarden').checked = true then gardenType = 'Has garden'
		if template.find('.hasVeranda').checked = true then gardenType = 'Has veranda or patio'
		if template.find('.hasBalcony').checked = true then gardenType = 'Has balcony'


		username = Meteor.user().username

		Meteor.call 'createProperty', island, city, disturbance, loactionType, carNecessary, distanceToSea, distanceToBeach, beachType, areaDescription, numBedRooms, numBathRooms, aptDescription, pool,username, petsConsidered, petComment, suitableForChildren, suitableForHandicapped, suitableForElderly, propertyType, floor, gardenType, (error) ->
		Router.go('/myPropertiesList')

Template.addProperty.helpers 
  islands: ->
    Locations.find().fetch().map (location) ->
      location.islandEn
   cities: ->
    Locations.find().fetch().map (location) ->
      location.city