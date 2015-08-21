if Locations.find().count() == 0
	console.dir 'Beginning seed'

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
else
	console.dir 'No need to seed'