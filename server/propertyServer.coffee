Meteor.startup ->
	Meteor.publish 'getLocations', ->
		Locations.find()


Meteor.methods
	createProperty: (island, city, disturbance, loactionType, carNecessary, distanceToSea, distanceToBeach, beachType, areaDescription, numBedRooms, numBathRooms, aptDescription, pool, username) ->
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
			username: username
			dateCreated: new Date()
			status: STATUS_CREATED


