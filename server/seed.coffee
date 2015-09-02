if Locations.find().count() is 0
	console.dir 'Seeding locations'

	Locations.insert
		islandEn: 'Tenerife'
		city: 'Los Cristianos'

	Locations.insert
		islandEn: 'Tenerife'
		city: 'Playa de las Americas'

	Locations.insert
		islandEn: 'Tenerife'
		city: 'Palmar'

	Locations.insert
		islandEn: 'Tenerife'
		city: 'Costa Silencio'


	Locations.insert
		islandEn: 'Gran Canary'
		city: 'San Agustin'

	Locations.insert
		islandEn: 'Gran Canary'
		city: 'Playa Anglesia'

	Locations.insert
		islandEn: 'Gran Canary'
		city: 'Las Palmas'

	Locations.insert
		islandEn: 'Lanzarote'
		city: 'Playa Blanca'

	Locations.insert
		islandEn: 'Lanzarote'
		city: 'La Santa'

	Locations.insert
		islandEn: 'Lanzarote'
		city: 'Marina Rubicon'

	Locations.insert
		islandEn: 'Fuerteventura'
		city: 'Gran Tarajal'

	Locations.insert
		islandEn: 'Fuerteventura'
		city: 'Costa Calma'
else
	console.dir 'No need to seed locations'


if Islands.find().count() is 0
	console.dir	 'Seeding islands'

	Islands.insert
		name: 'Tenerife'

	Islands.insert
		name: 'Gran Canary'

	Islands.insert
		name: 'Lanzarote'

	Islands.insert
		name: 'Fuerteventura'

	Islands.insert
		name: 'La Gomera'

	Islands.insert
		name: 'La Palma'

	Islands.insert
		name: 'El Hiero'

else
	console.dir 'No need to seed islands'



if Properties.find().count() is 0
	console.dir 'Seeding properties'
	Properties.insert
		island: "Lanzarote"
		city: "Playa Blanca"
		address: "By the beach"
		floor: 0
		locationType: "Village"
		closestMini: 200
		closestSuper: 800
		carNecessary: "Not necessary"
		distanceToSea: 50
		distanceToBeach: 50
		beachType: "Sand"
		disturbance: "Quiet"
		areaDescription: "Beautiful"
		propertyType: "Apartment"
		isStudio: false
		numBedRooms: 2
		numBathRooms: 1
		gardenType: "Balcony"
		pool: "Shared"
		aptDescription: "Well kept"
		hasAC: false
		hasCeilingFan: true
		hasTV: true
		hasDvd: false
		hasCoffeeMaker: true
		hasKettle: false
		hasFridge: true
		hasFreezer: false
		hasWashMachine: true
		hasDishWasher: false
		hasOven: true
		hasMicro: true
		hasHob: true
		equipmentComment: "Well equiped kitchen"
		hasSatCable: false
		internet: "DSL"
		internetComment: ""
		petsConsidered: true
		petComment: "Only if it's dangerous"
		suitableForElderly: true
		suitableForHandicapped: true
		suitableForChildren: true
		pricePerMonth: 550
		aditionalWeekPrice: 100
		aditionalDayPrice: 25
		minimumStay: 2
		waterIncluded: true
		electricityIncluded: true
		discounts: "discounts"
		priceComment: "price comments"
		username: "test1"
		status: "STATUS_PUBLISHED"
		bookings: [
			firstName: "Kalle",
			lastName: "Anka",
			email: "kalle@anka.se",
			phone: "111222",
			fromDate: 20150901,
			toDate: 20160101,
			agreedPricePerMonth: "550",
			agreedAditionalWeek: "200",
			agreedAditionalDays: "25",
			deposit: "400",
			depositDueDate: "2015-08-31",
			careTakerName: "Janne Långben",
			caretakerPhone: "333444555",
			careTakerMail: "janne@langben.org",
			keyHandling: "Lorem ipsum",
			additionalTerms: "Ipsum veggie"]

	Properties.insert
		island: "Tenerife"
		city: "Los Cristianos"
		address: "Calle la Montana 30"
		floor: 1
		locationType: "City"
		closestMini: 200
		closestSuper: 800
		carNecessary: "Not necessary"
		distanceToSea: 300
		distanceToBeach: 300
		beachType: "Sand"
		disturbance: "Some"
		areaDescription: "Beautiful view"
		propertyType: "Apartment"
		isStudio: false
		numBedRooms: 2
		numBathRooms: 1
		gardenType: "Balcony"
		pool: "None"
		aptDescription: "Needs a make over"
		hasAC: false
		hasCeilingFan: false
		hasTV: true
		hasDvd: false
		hasCoffeeMaker: true
		hasKettle: false
		hasFridge: true
		hasFreezer: true
		hasWashMachine: true
		hasDishWasher: true
		hasOven: true
		hasMicro: true
		hasHob: true
		equipmentComment: "Well equiped kitchen"
		hasSatCable: true
		internet: "None"
		internetComment: ""
		petsConsidered: true
		petComment: "Only small ones"
		suitableForElderly: false
		suitableForHandicapped: false
		suitableForChildren: true
		pricePerMonth: 900
		aditionalWeekPrice: 300
		aditionalDayPrice: 100
		minimumStay: 2
		waterIncluded: true
		electricityIncluded: true
		discounts: "discounts"
		priceComment: "Bills up to €50 per month included"
		username: "test1"
		status: "STATUS_PUBLISHED"
		bookings: [
			firstName: "Mr",
			lastName: "Walker",
			email: "mr@walker.com",
			phone: "111222",
			fromDate: 20160201,
			toDate: 20161101,
			agreedPricePerMonth: "550",
			agreedAditionalWeek: "200",
			agreedAditionalDays: "25",
			deposit: "400",
			depositDueDate: "2015-08-31",
			careTakerName: "Janne Långben",
			caretakerPhone: "333444555",
			careTakerMail: "janne@langben.org",
			keyHandling: "Lorem ipsum",
			additionalTerms: "Ipsum veggie"]


	Properties.insert
		island: "Tenerife"
		city: "Los Cristianos"
		address: "By the square"
		floor: 1
		locationType: "City"
		closestMini: 50
		closestSuper: 100
		carNecessary: "Not necessary"
		distanceToSea: 300
		distanceToBeach: 300
		beachType: "Sand"
		disturbance: "Lively"
		areaDescription: "Plenty of people around"
		propertyType: "Apartment"
		isStudio: false
		numBedRooms: 2
		numBathRooms: 1
		gardenType: "Balcony"
		pool: "None"
		aptDescription: "Needs a make over"
		hasAC: false
		hasCeilingFan: false
		hasTV: true
		hasDvd: true
		hasCoffeeMaker: true
		hasKettle: true
		hasFridge: true
		hasFreezer: false
		hasWashMachine: true
		hasDishWasher: true
		hasOven: true
		hasMicro: false
		hasHob: true
		equipmentComment: "Well equiped kitchen"
		hasSatCable: false
		internet: "None"
		internetComment: ""
		petsConsidered: "Pets considered"
		petComment: "Only small ones"
		suitableForElderly: false
		suitableForHandicapped: false
		suitableForChildren: true
		pricePerMonth: 900
		aditionalWeekPrice: 300
		aditionalDayPrice: 100
		minimumStay: 2
		waterIncluded: false
		electricityIncluded: false
		discounts: "discounts"
		priceComment: "price comments"
		username: "test1"
		status: "STATUS_PUBLISHED"
		newRequest: true
		contacts: [
			firstName: "Joakim",
			lastName: "von Anka",
			email: "joakim@anka.kv",
			message: "Vad kostar det?",
			fromDate: "2015-10-01",
			endDate: "2016-01-03",
			sentDate: "2015-09-01"]

	Properties.insert
		island: "Tenerife"
		city: "Playa de las Americas"
		address: ""
		floor: 1
		locationType: "City"
		closestMini: 200
		closestSuper: 800
		carNecessary: "Not necessary"
		distanceToSea: 300
		distanceToBeach: 300
		beachType: "Sand"
		disturbance: "Some"
		areaDescription: "Lots of bars"
		propertyType: "Apartment"
		isStudio: false
		numBedRooms: 2
		numBathRooms: 1
		gardenType: "Balcony"
		pool: "Shared"
		aptDescription: "Tacky"
		hasAC: false
		hasCeilingFan: false
		hasTV: true
		hasDvd: false
		hasCoffeeMaker: false
		hasKettle: false
		hasFridge: true
		hasFreezer: true
		hasWashMachine: "Washing machine"
		hasDishWasher: true
		hasOven: true
		hasMicro: true
		hasHob: false
		equipmentComment: "Basic kitchen"
		hasSatCable: true
		internet: "None"
		internetComment: ""
		petsConsidered: true
		petComment: "Only rhinos"
		suitableForElderly: false
		suitableForHandicapped: false
		suitableForChildren: true
		pricePerMonth: 850
		aditionalWeekPrice: 300
		aditionalDayPrice: 100
		minimumStay: 3
		waterIncluded: true
		electricityIncluded: true
		discounts: "No discounts"
		priceComment: "price comments"
		username: "test1"		
		status: "STATUS_PUBLISHED"

	Properties.insert
		island: "Tenerife"
		city: "Playa de las Americas"
		address: ""
		floor: 1
		locationType: "City"
		closestMini: 200
		closestSuper: 800
		carNecessary: "Not necessary"
		distanceToSea: 300
		distanceToBeach: 300
		beachType: "Sand"
		disturbance: "Some"
		areaDescription: "Beautiful view"
		propertyType: "Apartment"
		isStudio: false
		numBedRooms: 2
		numBathRooms: 1
		gardenType: "Balcony"
		pool: "Shared"
		aptDescription: "Newly built"
		hasAC: true
		hasCeilingFan: false
		hasTV: true
		hasDvd: false
		hasCoffeeMaker: false
		hasKettle: false
		hasFridge: true
		hasFreezer: true
		hasWashMachine: "Washing machine"
		hasDishWasher: true
		hasOven: true
		hasMicro: true
		hasHob: false
		equipmentComment: "Well equiped kitchen"
		hasSatCable: true
		internet: "DSL"
		internetComment: ""
		petsConsidered: true
		petComment: "Only rhinos"
		suitableForElderly: false
		suitableForHandicapped: false
		suitableForChildren: true
		pricePerMonth: 900
		aditionalWeekPrice: 300
		aditionalDayPrice: 100
		minimumStay: 2
		waterIncluded: true
		electricityIncluded: true
		discounts: "discounts"
		priceComment: "price comments"
		username: "test2"
		status: "STATUS_PUBLISHED"	
		bookings: [
			firstName: "Tessan",
			lastName: "Testsson",
			email: "tessan@testsson.se",
			phone: "111222",
			fromDate: 20151001,
			toDate: 20160101,
			agreedPricePerMonth: "550",
			agreedAditionalWeek: "200",
			agreedAditionalDays: "25",
			deposit: "400",
			depositDueDate: "2015-08-31",
			careTakerName: "Janne Långben",
			caretakerPhone: "333444555",
			careTakerMail: "janne@langben.org",
			keyHandling: "Lorem ipsum",
			additionalTerms: "Ipsum veggie"
	]
	contacts: [
			firstName: "Kalle",
			lastName: "Anka",
			email: "kalle@anka.kv",
			message: "Kvack!",
			fromDate: "2015-10-01",
			endDate: "2016-01-03",
			sentDate: "2015-09-01"]

	Properties.insert
		island: "Tenerife"
		city: "Palmar"
		address: ""
		floor: 1
		locationType: "Village"
		closestMini: 200
		closestSuper: 800
		carNecessary: "Recomended"
		distanceToSea: 300
		distanceToBeach: 300
		beachType: "Rocks"
		disturbance: "Some"
		areaDescription: "Beautiful view"
		propertyType: "Villa"
		isStudio: false
		numBedRooms: 2
		numBathRooms: 1
		gardenType: "Garden"
		pool: "Private"
		aptDescription: "Newly built"
		hasAC: false
		hasCeilingFan: false
		hasTV: true
		hasDvd: true
		hasCoffeeMaker: true
		hasKettle: false
		hasFridge: true
		hasFreezer: false
		hasWashMachine: true
		hasDishWasher: false
		hasOven: true
		hasMicro: false
		hasHob: true
		equipmentComment: "Well equiped kitchen"
		hasSatCable: true
		internet: "Fibre"
		internetComment: ""
		petsConsidered: true
		petComment: "Only rhinos"
		suitableForElderly: true
		suitableForHandicapped: true
		suitableForChildren: true
		pricePerMonth: 700
		aditionalWeekPrice: 200
		aditionalDayPrice: 35
		minimumStay: 2
		waterIncluded: true
		electricityIncluded: true
		discounts: "discounts"
		priceComment: "price comments"
		username: "test2"
		status: "STATUS_PUBLISHED"

	Properties.insert
		island: "Tenerife"
		city: "Valle San Lorenzo"
		address: "In the mountains"
		floor: 0
		locationType: "Village"
		closestMini: 200
		closestSuper: 800
		carNecessary: "Recomended"
		distanceToSea: ""
		distanceToBeach: ""
		beachType: "None"
		disturbance: "Quiet"
		areaDescription: "Beautiful view"
		propertyType: "Finca"
		isStudio: false
		numBedRooms: 3
		numBathRooms: 1
		gardenType: "Garden"
		pool: "None"
		aptDescription: "Well kept"
		hasAC: false
		hasCeilingFan: false
		hasTV: true
		hasDvd: false
		hasCoffeeMaker: true
		hasKettle: true
		hasFridge: true
		hasFreezer: true
		hasWashMachine: true
		hasDishWasher: false
		hasOven: true
		hasMicro: true
		hasHob: true
		equipmentComment: "Well equiped kitchen"
		hasSatCable: false
		internet: "none"
		internetComment: ""
		petsConsidered: false
		petComment: ""
		suitableForElderly: true
		suitableForHandicapped: true
		suitableForChildren: true
		pricePerMonth: 550
		aditionalWeekPrice: 100
		aditionalDayPrice: 25
		minimumStay: 2
		waterIncluded: true
		electricityIncluded: true
		discounts: "discounts"
		priceComment: "price comments"
		username: "test2"
		status: "STATUS_PUBLISHED"
		contacts: [
			firstName: "Joakim",
			lastName: "von Anka",
			email: "joakim@anka.kv",
			message: "Vad kostar det?",
			fromDate: "2015-10-01",
			endDate: "2016-01-03",
			sentDate: "2015-09-01"]

	Properties.insert
		island: "Tenerife"
		city: "Santa Cruz"
		address: "In the middle"
		floor: 5
		locationType: "City"
		closestMini: 200
		closestSuper: 800
		carNecessary: "Not necessary"
		distanceToSea: 800
		distanceToBeach: ''
		beachType: "None"
		disturbance: "Lively"
		areaDescription: "Plenty of shops"
		propertyType: "Apartment"
		isStudio: false
		numBedRooms: 1
		numBathRooms: 1
		gardenType: "Balcony"
		pool: "Shared"
		aptDescription: "Dark and gloomy"
		hasAC: true
		hasCeilingFan: false
		hasTV: false
		hasDvd: false
		hasCoffeeMaker: false
		hasKettle: false
		hasFridge: true
		hasFreezer: false
		hasWashMachine: true
		hasDishWasher: false
		hasOven: false
		hasMicro: true
		hasHob: false
		equipmentComment: "Large kitchen table"
		hasSatCable: false
		internet: "None"
		internetComment: ""
		petsConsidered: false
		petComment: ""
		suitableForElderly: true
		suitableForHandicapped: true
		suitableForChildren: true
		pricePerMonth: 550
		aditionalWeekPrice: 100
		aditionalDayPrice: 25
		minimumStay: 2
		waterIncluded: false
		electricityIncluded: false
		discounts: "discounts"
		priceComment: "price comments"
		username: "test1"
		status: "STATUS_PUBLISHED"


	Properties.insert
		island: "Fuerteventura"
		city: "Costa Calma"
		address: ""
		floor: 5
		locationType: "Village"
		closestMini: 200
		closestSuper: 800
		carNecessary: "Not necessary"
		distanceToSea: 200
		distanceToBeach: 1200
		beachType: "Pebbles"
		disturbance: "Quiet"
		areaDescription: "Good diving"
		propertyType: "Bungalow"
		isStudio: true
		numBedRooms: 0
		numBathRooms: 1
		gardenType: "Has balcony"
		pool: "Shared"
		aptDescription: "Very beautiful"
		hasAC: true
		hasCeilingFan: false
		hasTV: true
		hasDvd: false
		hasCoffeeMaker: false
		hasKettle: false
		hasFridge: true
		hasFreezer: false
		hasWashMachine: true
		hasDishWasher: false
		hasOven: false
		hasMicro: true
		hasHob: true
		equipmentComment: "Small kitchen"
		hasSatCable: false
		internet: "None"
		internetComment: ""
		petsConsidered: false
		petComment: ""
		suitableForElderly: true
		suitableForHandicapped: false
		suitableForChildren: true
		pricePerMonth: 700
		aditionalWeekPrice: 200
		aditionalDayPrice: 25
		minimumStay: 2
		waterIncluded: true
		electricityIncluded: true
		discounts: "discounts"
		priceComment: "price comments"
		username: "test2"
		status: "STATUS_PUBLISHED"

	Properties.insert
		island: "Fuerteventura"
		city: "Costa Calma"
		address: ""
		floor: 1
		locationType: "Village"
		closestMini: 200
		closestSuper: 800
		carNecessary: "Not necessary"
		distanceToSea: 300
		distanceToBeach: 300
		beachType: ""
		disturbance: "Quiet"
		areaDescription: "Nice beach"
		propertyType: "Bungalow"
		isStudio: true
		numBedRooms: 0
		numBathRooms: 1
		gardenType: "Balcony"
		pool: "Private"
		aptDescription: "Very light"
		hasAC: true
		hasCeilingFan: true
		hasTV: true
		hasDvd: false
		hasCoffeeMaker: true
		hasKettle: false
		hasFridge: true
		hasFreezer: false
		hasWashMachine: true
		hasDishWasher: false
		hasOven: false
		hasMicro: true
		hasHob: true
		equipmentComment: true
		hasSatCable: false
		internet: "None"
		internetComment: ""
		petsConsidered: false
		petComment: ""
		suitableForElderly: true
		suitableForHandicapped: true
		suitableForChildren: true
		pricePerMonth: 450
		aditionalWeekPrice: 100
		aditionalDayPrice: 25
		minimumStay: 2
		waterIncluded: true
		electricityIncluded: true
		discounts: "discounts"
		priceComment: "price comments"
		username: "test1"
		status: "STATUS_PUBLISHED"

	Properties.insert
		island: "Gran Canary"
		city: "San Agustin"
		address: ""
		floor: 2
		locationType: "City"
		closestMini: 100
		closestSuper: 600
		carNecessary: "Not necessary"
		distanceToSea: 300
		distanceToBeach: 300
		beachType: "Sand"
		disturbance: "Quiet"
		areaDescription: "Nice beach"
		propertyType: "Apartment"
		isStudio: false
		numBedRooms: 1
		numBathRooms: 1
		gardenType: "Balcony"
		pool: "Shared"
		aptDescription: "Simple but nice"
		hasAC: false
		hasCeilingFan: false
		hasTV: true
		hasDvd: false
		hasCoffeeMaker: true
		hasKettle: false
		hasFridge: true
		hasFreezer: false
		hasWashMachine: false
		hasDishWasher: false
		hasOven: false
		hasMicro: true
		hasHob: true
		equipmentComment: "Small kitchen"
		hasSatCable: false
		internet: "DSL"
		internetComment: ""
		petsConsidered: false
		petComment: ""
		suitableForElderly: true
		suitableForHandicapped: true
		suitableForChildren: true
		pricePerMonth: 550
		aditionalWeekPrice: 100
		aditionalDayPrice: 25
		minimumStay: 2
		waterIncluded: true
		electricityIncluded: true
		discounts: "discounts"
		priceComment: "price comments"
		username: "test1"
		status: "STATUS_PUBLISHED"

	Properties.insert
		island: "Gran Canary"
		city: "San Agustin"
		address: ""
		floor: 2
		locationType: "Sea"
		closestMini: 200
		closestSuper: 600
		carNecessary: "Not necessary"
		distanceToSea: 300
		distanceToBeach: 300
		beachType: "Sand"
		disturbance: "Quiet"
		areaDescription: "Nice beach"
		propertyType: "Apartment"
		isStudio: false
		numBedRooms: 1
		numBathRooms: 1
		gardenType: "Balcony"
		pool: "Shared"
		aptDescription: "Simple but nice"
		hasAC: ""
		hasCeilingFan: ""
		hasTV: "TV"
		hasDvd: ""
		hasCoffeeMaker: "Coffee maker"
		hasKettle: ""
		hasFridge: "Fridge"
		hasFreezer: ""
		hasWashMachine: ""
		hasDishWasher: ""
		hasOven: ""
		hasMicro: "Micro wave"
		hasHob: "Has hob"
		equipmentComment: "Small kitchen"
		hasSatCable: ""
		internet: "None"
		internetComment: ""
		petsConsidered: false
		petComment: ""
		suitableForElderly: true
		suitableForHandicapped: true
		suitableForChildren: true
		pricePerMonth: 850
		aditionalWeekPrice: 2500
		aditionalDayPrice: 25
		minimumStay: 2
		waterIncluded: "on"
		electricityIncluded: "on"
		discounts: "discounts"
		priceComment: "price comments"
		username: "test2"
		status: "STATUS_PUBLISHED"

	Properties.insert
		island: "Gran Canary"
		city: "Play Anglesia"
		address: ""
		floor: 2
		locationType: "City"
		closestMini: 100
		closestSuper: 600
		carNecessary: "Not necessary"
		distanceToSea: 300
		distanceToBeach: 300
		beachType: "Sand"
		disturbance: "Some"
		areaDescription: "Nice beach"
		propertyType: "Apartment"
		isStudio: false
		numBedRooms: 1
		numBathRooms: 1
		gardenType: "Balcony"
		pool: "Shared"
		aptDescription: "Simple but nice"
		hasAC: ""
		hasCeilingFan: ""
		hasTV: "TV"
		hasDvd: ""
		hasCoffeeMaker: "Coffee maker"
		hasKettle: ""
		hasFridge: "Fridge"
		hasFreezer: ""
		hasWashMachine: ""
		hasDishWasher: ""
		hasOven: ""
		hasMicro: "Micro wave"
		hasHob: "Has hob"
		equipmentComment: "Small kitchen"
		hasSatCable: ""
		internet: "Fibre"
		internetComment: ""
		petsConsidered: true
		petComment: ""
		suitableForElderly: true
		suitableForHandicapped: true
		suitableForChildren: true
		pricePerMonth: 600
		aditionalWeekPrice: 200
		aditionalDayPrice: 25
		minimumStay: 2
		waterIncluded: true
		electricityIncluded: true
		discounts: "discounts"
		priceComment: "price comments"
		username: "test2"
		status: "STATUS_PUBLISHED"
		contacts: [
			firstName: "Mr",
			lastName: "Walker",
			email: "mr@walker.org",
			message: "Får man ta med varg?",
			fromDate: "2015-10-01",
			endDate: "2016-01-03",
			sentDate: "2015-09-01"]
else
	console.dir 'No need to seed properties'