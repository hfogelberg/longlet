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

		petsConsidered = false
		if template.find('').checked = true then petsConsidered = true
		petComment = template.find('.petComment').value


		suitableForElderly = false
		if template.find('.elderlyCheck').checked = true then suitableForElderly = true

		suitableForHandicapped = false
		if template.find('.motionCheck').checked = true then suitableForHandicapped = true

		suitableForChildren = false
		if template.find('.childrenCheck').checked = true then suitableForChildren = true

		username = Meteor.user().username

		Meteor.call 'createProperty', island, city, disturbance, loactionType, carNecessary, distanceToSea, distanceToBeach, beachType, areaDescription, numBedRooms, numBathRooms, aptDescription, pool,username, petsConsidered, petComment, suitableForChildren, suitableForHandicapped, suitableForElderly, (error) ->

Template.addProperty.helpers 
  islands: ->
    Locations.find().fetch().map (location) ->
      location.islandEn
   cities: ->
    Locations.find().fetch().map (location) ->
      location.city