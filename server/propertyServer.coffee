Meteor.startup ->
	Meteor.publish 'getLocations', ->
		Locations.find()

	Meteor.publish 'getMyPropertiesList', (username) ->
		Properties.find({username: username, status: STATUS_PUBLISHED}, {contacts: false})

	Meteor.publish 'getHeadlineProperties', (limit) ->
		if limit > Properties.find().count()
			limit = 0
		Properties.find({status: STATUS_PUBLISHED}, {limit: limit})

	Meteor.publish 'getIslands', ->
		Islands.find()

	Meteor.publish 'getPropertiesByIsland', (limit, island) ->
		Properties.find({island: island, status: STATUS_PUBLISHED}, {limit: limit})

	Meteor.publish 'getCitiesOnIsland', (island) ->
		Locations.find({islandEn: island, status: STATUS_PUBLISHED}, {islandEn: 1})

	Meteor.publish 'getPropertiesByCity', (limit, island, city) ->
		Properties.find({island: island, city: city, status: STATUS_PUBLISHED}, {limit: limit})

	Meteor.publish 'getPropertyDetails', (id) ->
		Properties.find({'_id': id})

Meteor.methods 
	searchPropertiesNoBookings: (island, city, minBeds, minBath, pets, maxPrice) ->
		console.dir '*** searchPropertiesNoBookings ***' 

		qry = {}
		qry['island'] = island unless island is ''
		qry['city'] = city unless city is ''
		qry['numBedRooms'] = '$gte': +minBeds unless minBeds is ''
		qry['numBathRooms'] = '$gte': +minBath unless minBath is ''
		qry['petsConsidered'] = true if pets is true
		qry['pricePerMonth'] = '$lte': +maxPrice unless maxPrice is ''
		qry['bookings']= "$exists": false
		qry['status'] = STATUS_PUBLISHED
		console.dir qry
		console.dir Properties.find(qry).count()
		console.dir '*****************************************'

		return  Properties.find(qry).fetch()

	searchPropertiesWithBookingsNoDates: (island, city, minBeds, minBath, pets, maxPrice) ->
		console.dir '*** searchPropertiesWithBookingsNoDates ***'
		
		qry = {}
		qry['island'] = island unless island is ''
		qry['city'] = city unless city is ''
		qry['numBedRooms'] = '$gte': +minBeds unless minBeds is ''
		qry['numBathRooms'] = '$gte': +minBath unless minBath is ''
		qry['petsConsidered'] = true if pets is true
		qry['pricePerMonth'] = '$lte': +maxPrice unless maxPrice is ''
		qry['bookings']= "$exists": true
		qry['status'] = STATUS_PUBLISHED
		console.dir qry
		console.dir Properties.find(qry).count()
		console.dir '*****************************************'

		return  Properties.find(qry).fetch()

	searchPropertiesWithBookingsAfter: (island, city, minBeds, minBath, pets, maxPrice, fromDate, toDate) ->
		console.dir '*** searchPropertiesWithBookingsAfter ***'

		qry = {}
		qry['island'] = island unless island is ''
		qry['city'] = city unless city is ''
		qry['numBedRooms'] = '$gte': +minBeds unless minBeds is ''
		qry['numBathRooms'] = '$gte': +minBath unless minBath is ''
		qry['petsConsidered'] = true if pets is true
		qry['pricePerMonth'] = '$lte': +maxPrice unless maxPrice is ''
		# qry['bookings.fromDate']= "$gte": fromDate unless fromDate is ''
		qry['bookings']= "$exists": true
		qry['bookings.toDate']= "$gte": fromDate unless fromDate is ''
		qry['status'] = STATUS_PUBLISHED
		console.dir qry
		console.dir Properties.find(qry).count()
		console.dir '*****************************************'

		return  Properties.find(qry).fetch()


	searchPropertiesWithBookingsBefore: (island, city, minBeds, minBath, pets, maxPrice, toDate) ->
		console.dir '*** searchPropertiesWithBookingsBefore ***'
		console.dir 'toDate: ' + toDate

		qry = {}
		qry['island'] = island unless island is ''
		qry['city'] = city unless city is ''
		qry['numBedRooms'] = '$gte': +minBeds unless minBeds is ''
		qry['numBathRooms'] = '$gte': +minBath unless minBath is ''
		qry['petsConsidered'] = true if pets is true
		qry['pricePerMonth'] = '$lte': +maxPrice unless maxPrice is ''
		qry['bookings.fromDate']= "$lte": toDate unless toDate is ''
		qry['status'] = STATUS_PUBLISHED
		console.dir qry
		console.dir Properties.find(qry).count()
		console.dir '*****************************************'

		return  Properties.find(qry).fetch()

	createLocation: (island, city) ->
		if Locations.find({island: island, city: city}).count() == 0
			Locations.insert
				islandEn: island
				city: city

	createProperty: (island, city, address, floor, areaType, closestMini, closestSuper, carNecessary,  distanceToSea, distanceToBeach, beachType, disturbance, areaDescription, propertyType, isStudio, numBedRooms, numBathRooms, gardenType, pool, aptDescription, hasAC, hasCeilingFan, hasTV, hasDvd, hasCoffeeMaker, hasKettle, hasFridge, hasFreezer, hasWashMachine, hasDishWasher, hasOven, hasMicro, hasHob, equipmentComment, hasSatCable, internet , internetComment, petsConsidered, petComment, suitableForElderly, suitableForHandicapped, suitableForChildren, username, pricePerMonth, aditionalWeekPrice, aditionalDayPrice, minimumStay, waterIncluded, electricityIncluded, discounts, priceComment) ->
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
			internet: internet
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
