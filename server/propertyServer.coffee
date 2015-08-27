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

	Meteor.publish 'getCitiesOnIsland', (island) ->
		console.dir 'getCitiesOnIsland ' + island
		Locations.find({islandEn: island}, {islandEn: 1})

	Meteor.publish 'getPropertiesByCity', (limit, island, city) ->
		console.dir 'getPropertiesByCity ' + island + ' ' + city
		Properties.find({island: island, city: city}, {limit: limit})

	Meteor.publish 'getPropertyDetails', (id) ->
		console.dir 'getPropertyDetails ' + id
		Properties.find({'_id': id})

Meteor.methods 

	# 'foo': ->
	# 	return Properties.find({island: 'Lanzarote'}, {limit: 10})

	# 'searchProperties': (island, city, minBeds, minBath, pets, maxPrice, fromDate, endDate) ->
	# 	console.dir '********* searchProperties ************'
	# 	console.dir 'island: ' + island
	# 	console.dir 'city: ' + city

	# 	# searchString = 
	# 	# 	'island': island
	# 	# 	'city': city

	# 	# console.dir searchString
	# 	# console.dir Properties.find(searchString).count()

	# 	# searchString = ''
	# 	# searchString = 'island:' + island unless island is ''
	# 	# if city != ''
	# 	# 	searchString = searchString + ', city: ' + city

	# 	# searchString = '{' + searchString + '}'
	# 	# console.dir searchString

	# 	console.dir Properties.find({'island': 'Lanzarote', 'city': 'Playa Blanca'}).count()

	searchProperties: (island, city, minBeds, minBath, pets, maxPrice, fromDate, endDate) ->
		console.dir '********* searchProperties ************'

		qry = {}

		console.dir 'minBeds: ' + minBeds
		console.dir 'minBath: ' + minBath

		qry['island'] = island unless island is ''
		qry['city'] = city unless city is ''
		qry['numBedRooms'] = '$gte': +minBeds unless minBeds is ''
		qry['numBathRooms'] = '$gte': +minBath unless minBath is ''
		#qry['petsConsidered'] = pets unless
		qry['pricePerMonth'] = '$lte': +maxPrice unless maxPrice is ''
		#qry[''], fromDate
		#qry[''], endDate
		console.dir qry

		console.dir 'Found ' + Properties.find(qry).count()
		return  Properties.find(qry).fetch()


	createLocation: (island, city) ->
		if Locations.find({island: island, city: city}).count() == 0
			Locations.insert
				islandEn: island
				city: city

	createProperty: (island, city, address, floor, areaType, closestMini, closestSuper, carNecessary,  distanceToSea, distanceToBeach, beachType, disturbance, areaDescription, propertyType, isStudio, numBedRooms, numBathRooms, gardenType, pool, aptDescription, hasAC, hasCeilingFan, hasTV, hasDvd, hasCoffeeMaker, hasKettle, hasFridge, hasFreezer, hasWashMachine, hasDishWasher, hasOven, hasMicro, hasHob, equipmentComment, hasSatCable, hasDsl, hasFibre , internetComment, petsConsidered, petComment, suitableForElderly, suitableForHandicapped, suitableForChildren, username, pricePerMonth, aditionalWeekPrice, aditionalDayPrice, minimumStay, waterIncluded, electricityIncluded, discounts, priceComment) ->
		console.dir 'createProperty'

		Properties.insert
			island: island
			city: city
			address: address
			floor: floor
			areaType: areaType
			closestMini: closestMini
			closestSuper: closestSuper
			carNecessary: carNecessary
			distanceToSea: distanceToSea
			distanceToBeach: distanceToBeach
			beachType: beachType
			disturbance: disturbance
			areaDescription: areaDescription
			propertyType: propertyType
			isStudio: isStudio
			numBedRooms: numBedRooms
			numBathRooms: numBathRooms
			gardenType: gardenType
			pool: pool
			aptDescription: aptDescription
			hasAC: hasAC
			hasCeilingFan: hasCeilingFan
			hasTV: hasTV
			hasDvd: hasDvd
			hasCoffeeMaker: hasCoffeeMaker
			hasKettle: hasKettle
			hasFridge: hasFridge
			hasFreezer: hasFreezer
			hasWashMachine: hasWashMachine
			hasDishWasher: hasDishWasher
			hasOven: hasOven
			hasMicro: hasMicro
			hasHob: hasHob
			equipmentComment: equipmentComment
			hasSatCable: hasSatCable
			hasDsl: hasDsl
			hasFibre: hasFibre
			internetComment: internetComment
			petsConsidered: petsConsidered
			petComment: petComment
			suitableForElderly: suitableForElderly
			suitableForHandicapped: suitableForHandicapped
			suitableForChildren: suitableForChildren
			pricePerMonth: pricePerMonth
			aditionalWeekPrice: aditionalWeekPrice
			aditionalDayPrice: aditionalDayPrice
			minimumStay: minimumStay
			waterIncluded: waterIncluded
			electricityIncluded: electricityIncluded
			discounts: discounts
			priceComment: priceComment
			username: username
			dateCreated: new Date()
			status: STATUS_CREATED
