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
		name: 'Gran Canaria'

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