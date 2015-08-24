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
		if template.find('.quietOption').checked then disturbance = 'Quiet'
		if template.find('.someDisturbancesOption').checked then disturbance = 'Some disturbance'
		if template.find('.livelyOption').checked then disturbance = 'Lively'

		loactionType = ''
		if template.find('.cityLocation').checked then loactionType = 'City'
		if template.find('.villageLocation').checked then loactionType = 'Villa'
		if template.find('.ruralLocation').checked then loactionType = 'Rural'
		if template.find('.seaLocation').checked then loactionType = 'Sea'

		carNecessary = ''
		if template.find('.noCarNecessaryOption').checked then carNecessary = 'Car not necessary'
		if template.find('.carRecomendedOption').checked then carNecessary = 'Car recomended'
		if template.find('.carNecessaryOption').checked then carNecessary = 'Car not necessary'

		distanceToSea = template.find('.distanceToSea').value
		distanceToBeach = template.find('.distanceToBeach').value

		beachType = 'No beach'
		if template.find('.sandBeachOption').checked then beachType = 'Sand beach'
		if template.find('.rockBeachOption').checked then beachType = 'Rocky beach'
		if template.find('.pebbleBeachOption').checked then beachType = 'Pebble beach'

		areaDescription = template.find('.areaDescription').value
		numBedRooms = template.find('.numBedRooms').value
		numBathRooms = template.find('.numBathRooms').value
		aptDescription = template.find('.aptDescription').value

		pool = 'No pool'
		if template.find('.sharedPoolOption').checked then pool = 'Shared pool'
		if template.find('.privatePoolOption').checked then pool = 'Private pool'

		petsConsidered = 'No pets'
		if template.find('.petsConsidered').checked then petsConsidered = 'Pets considered'
		petComment = template.find('.petComment').value

		console.log 'Pets considered: ' + petsConsidered

		suitableForElderly = 'Not suitable for elderly'
		if template.find('.elderlyCheck').checked = true then suitableForElderly = 'Suitable for elderly'

		suitableForHandicapped = 'Not suitable for handicapped'
		if template.find('.motionCheck').checked = true then suitableForHandicapped = 'Suitable for handicapped'

		suitableForChildren = 'Not suitable for children'
		if template.find('.childrenCheck').checked = true then suitableForChildren = 'Suitable for children'

		propertyType = 'Apartment'
		if template.find('.bungalowOption').checked = true then propertyType = 'Bungalow'
		if template.find('.townHouseOption').checked = true then propertyType = 'Town house'
		if template.find('.villaOption').checked = true then propertyType = 'Villa'
		if template.find('.fincaOption').checked = true then propertyType = 'Finca'

		floor = template.find('.floor').value

		gardenType = ''
		if template.find('.hasGarden').checked = true then gardenType = 'Has garden'
		if template.find('.hasVeranda').checked = true then gardenType = 'Has veranda or patio'
		if template.find('.hasBalcony').checked = true then gardenType = 'Has balcony'

		adress = template.find('.address').value

		username = Meteor.user().username

		Meteor.call 'createLocation', island, city, (error) ->
		Meteor.call 'createProperty', island, city, disturbance, loactionType, carNecessary, distanceToSea, distanceToBeach, beachType, areaDescription, numBedRooms, numBathRooms, aptDescription, pool,username, petsConsidered, petComment, suitableForChildren, suitableForHandicapped, suitableForElderly, propertyType, floor, gardenType, adress, (error) ->
		Router.go('/myPropertiesList')

Template.addProperty.helpers 
  islands: ->
    Locations.find().fetch().map (location) ->
      location.islandEn
   cities: ->
    Locations.find().fetch().map (location) ->
      location.city