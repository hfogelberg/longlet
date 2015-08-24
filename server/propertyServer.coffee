Meteor.startup ->
	Meteor.publish 'getLocations', ->
		Locations.find()

	Meteor.publish 'getMyPropertiesList', (username) ->
		Properties.find({username: username})


	Meteor.publish 'getHeadlineProperties', (limit) ->
		console.dir 'getHeadlineProperties'
		console.dir 'Properties found: ' + Properties.find().count()
		if limit > Properties.find().count()
			limit = 0
		Properties.find({}, {limit: limit})

	Meteor.publish 'getIslands', ->
		console.dir 'Gettings islands'
		Islands.find()

	Meteor.publish 'getPropertiesByIsland', (limit, island) ->
		console.dir 'getPropertiesByIsland ' + island + ' ' + limit
		console.dir 'Found ' + Properties.find({island: island}, {limit: limit}).count()
		Properties.find({island: island}, {limit: limit})


Meteor.methods 
	createLocation: (island, city) ->
		if Locations.find({island: island, city: city}) == 0
			Locations.insert
				islandEn: island
				city: city

Meteor.methods
	createProperty: (island, city, disturbance, loactionType, carNecessary, distanceToSea, distanceToBeach, beachType, areaDescription, numBedRooms, numBathRooms, aptDescription, pool, username, petsConsidered, petComment, suitableForChildren, suitableForHandicapped, suitableForElderly) ->
		console.dir 'createProperty'

		console.dir island
		console.dir city

		Properties.insert
			island: island
			city: city
			disturbance: disturbance
			loactionType: loactionType
			carNecessary: carNecessary
			distanceToSea: distanceToSea
			distanceToBeach: distanceToBeach
			beachType: beachType
			areaDescription: areaDescription
			numBedRooms: numBedRooms
			numBathRooms: numBathRooms
			aptDescription: aptDescription
			pool: pool
			petsConsidered: petsConsidered
			petComment: petComment
			suitableForChildren: suitableForChildren
			suitableForHandicapped: suitableForHandicapped
			suitableForElderly: suitableForElderly
			username: username
			dateCreated: new Date()
			status: STATUS_CREATED
