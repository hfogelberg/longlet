if Locations.find().count() is 0
	console.dir 'Seeding locations'

	Locations.insert
		islandEn: 'Tenerife'
		city: 'Los Cristianos'

	Locations.insert
		islandEn: 'Tenerife'
		city: 'Playa del las Americas'

	Locations.insert
		islandEn: 'Tenerife'
		city: 'Palm Mar'

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
		areaType: "Villa"
		closestMini: 200
		closestSuper: 800
		carNecessary: "Car not necessary"
		distanceToSea: 50
		distanceToBeach: 50
		beachType: "Sand beach"
		disturbance: "Quiet area"
		areaDescription: "Beautiful"
		propertyType: "Finca"
		isStudio: false
		numBedRooms: 2
		numBathRooms: 1
		gardenType: "Has balcony"
		pool: "Shared pool"
		aptDescription: "Well kept"
		hasAC: ""
		hasCeilingFan: "Ceiling fan"
		hasTV: "TV"
		hasDvd: ""
		hasCoffeeMaker: "Coffee maker"
		hasKettle: "Kettle"
		hasFridge: "Fridge"
		hasFreezer: ""
		hasWashMachine: "Washing machine"
		hasDishWasher: ""
		hasOven: "Oven"
		hasMicro: "Micro wave"
		hasHob: "Oven"
		equipmentComment: "Well equiped kitchen"
		hasSatCable: ""
		hasDsl: "DSL Internet"
		hasFibre: ""
		internetComment: ""
		petsConsidered: "Pets considered"
		petComment: "Only if it's dangerous"
		suitableForElderly: "Suitable for elderly"
		suitableForHandicapped: "Suitable for handicapped"
		suitableForChildren: "Suitable for children"
		pricePerMonth: 550
		aditionalWeekPrice: 100
		aditionalDayPrice: 25
		minimumStay: 2
		waterIncluded: "on"
		electricityIncluded: "on"
		discounts: "discounts"
		priceComment: "price comments"
		username: "henfo"

	Properties.insert
		island: "Tenerife"
		city: "Los Cristianos"
		address: "Calle la Montana 30"
		floor: 1
		areaType: "Residential"
		closestMini: 200
		closestSuper: 800
		carNecessary: "Car not necessary"
		distanceToSea: 300
		distanceToBeach: 300
		beachType: "Sand beach"
		disturbance: "Some disturbances"
		areaDescription: "Beautiful view"
		propertyType: "Apartment"
		isStudio: false
		numBedRooms: 2
		numBathRooms: 1
		gardenType: "Has balcony"
		pool: "No pool"
		aptDescription: "Needs a make over"
		hasAC: ""
		hasCeilingFan: ""
		hasTV: "TV"
		hasDvd: ""
		hasCoffeeMaker: "Coffee maker"
		hasKettle: ""
		hasFridge: "Fridge"
		hasFreezer: ""
		hasWashMachine: "Washing machine"
		hasDishWasher: ""
		hasOven: ""
		hasMicro: "Micro wave"
		hasHob: "Has hob"
		equipmentComment: "Well equiped kitchen"
		hasSatCable: ""
		hasDsl: ""
		hasFibre: ""
		internetComment: ""
		petsConsidered: "Pets considered"
		petComment: "Only small ones"
		suitableForElderly: "Not suitable for elderly"
		suitableForHandicapped: "Not suitable for handicapped"
		suitableForChildren: "Suitable for children"
		pricePerMonth: 900
		aditionalWeekPrice: 300
		aditionalDayPrice: 100
		minimumStay: 2
		waterIncluded: "on"
		electricityIncluded: "on"
		discounts: "discounts"
		priceComment: "price comments"
		username: "henfo"

	Properties.insert
		island: "Tenerife"
		city: "Valle San Lorenzo"
		address: "In the mountains"
		floor: 0
		areaType: "Residential"
		closestMini: 200
		closestSuper: 800
		carNecessary: "Car recomended"
		distanceToSea: ""
		distanceToBeach: ""
		beachType: ""
		disturbance: "Quiet area"
		areaDescription: "Beautiful view"
		propertyType: "Villa"
		isStudio: false
		numBedRooms: 3
		numBathRooms: 1
		gardenType: "Has garden"
		pool: "No pool"
		aptDescription: "Well kept"
		hasAC: ""
		hasCeilingFan: "Ceiling fan"
		hasTV: "TV"
		hasDvd: ""
		hasCoffeeMaker: "Coffee maker"
		hasKettle: ""
		hasFridge: "Fridge"
		hasFreezer: ""
		hasWashMachine: "Washing machine"
		hasDishWasher: ""
		hasOven: "Oven"
		hasMicro: "Micro wave"
		hasHob: "Has hob"
		equipmentComment: "Well equiped kitchen"
		hasSatCable: ""
		hasDsl: ""
		hasFibre: ""
		internetComment: ""
		petsConsidered: "Pets considered"
		petComment: ""
		suitableForElderly: "Suitable for elderly"
		suitableForHandicapped: "Suitable for handicapped"
		suitableForChildren: "Suitable for children"
		pricePerMonth: 550
		aditionalWeekPrice: 100
		aditionalDayPrice: 25
		minimumStay: 2
		waterIncluded: "on"
		electricityIncluded: "on"
		discounts: "discounts"
		priceComment: "price comments"
		username: "henfo"

	Properties.insert
		island: "Tenerife"
		city: "Santa Cruz"
		address: "In the middle"
		floor: 5
		areaType: "Residential"
		closestMini: 200
		closestSuper: 800
		carNecessary: "No car needed"
		distanceToSea: 800
		distanceToBeach: 1200
		beachType: ""
		disturbance: "Lively"
		areaDescription: "Plenty of shops"
		propertyType: "City"
		isStudio: false
		numBedRooms: 1
		numBathRooms: 1
		gardenType: "Has balcony"
		pool: "Shared pool"
		aptDescription: "Dark and gloomy"
		hasAC: "Has Air conditioning"
		hasCeilingFan: ""
		hasTV: "TV"
		hasDvd: ""
		hasCoffeeMaker: "Coffee maker"
		hasKettle: ""
		hasFridge: "Fridge"
		hasFreezer: ""
		hasWashMachine: "Washing machine"
		hasDishWasher: ""
		hasOven: "Oven"
		hasMicro: "Micro wave"
		hasHob: "Has hob"
		equipmentComment: "Large kitchen table"
		hasSatCable: ""
		hasDsl: ""
		hasFibre: "High speed fibre"
		internetComment: ""
		petsConsidered: "No pets"
		petComment: ""
		suitableForElderly: "Suitable for elderly"
		suitableForHandicapped: "Suitable for handicapped"
		suitableForChildren: "Suitable for children"
		pricePerMonth: 550
		aditionalWeekPrice: 100
		aditionalDayPrice: 25
		minimumStay: 2
		waterIncluded: "on"
		electricityIncluded: "on"
		discounts: "discounts"
		priceComment: "price comments"
		username: "henfo"


	Properties.insert
		island: "Fuerteventura"
		city: "Costa Calma"
		address: ""
		floor: 5
		areaType: "Resort"
		closestMini: 200
		closestSuper: 800
		carNecessary: "No car needed"
		distanceToSea: 800
		distanceToBeach: 1200
		beachType: ""
		disturbance: "Quiet"
		areaDescription: "Good surfing"
		propertyType: "Sea"
		isStudio: true
		numBedRooms: 0
		numBathRooms: 1
		gardenType: "Has balcony"
		pool: "Shared pool"
		aptDescription: "Dark and gloomy"
		hasAC: "Has Air conditioning"
		hasCeilingFan: "Ceiling fan"
		hasTV: "TV"
		hasDvd: ""
		hasCoffeeMaker: "Coffee maker"
		hasKettle: ""
		hasFridge: "Fridge"
		hasFreezer: ""
		hasWashMachine: "Washing machine"
		hasDishWasher: ""
		hasOven: ""
		hasMicro: "Micro wave"
		hasHob: "Has hob"
		equipmentComment: "Small kitchen"
		hasSatCable: ""
		hasDsl: ""
		hasFibre: "DSL"
		internetComment: ""
		petsConsidered: "No pets"
		petComment: ""
		suitableForElderly: "Suitable for elderly"
		suitableForHandicapped: "Suitable for handicapped"
		suitableForChildren: "Suitable for children"
		pricePerMonth: 550
		aditionalWeekPrice: 100
		aditionalDayPrice: 25
		minimumStay: 2
		waterIncluded: "on"
		electricityIncluded: "on"
		discounts: "discounts"
		priceComment: "price comments"
		username: "henfo"