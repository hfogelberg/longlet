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
		summary: 'Ultrices, pid elementum? Placerat turpis, rhoncus et! Hac nunc nisi? Ut, ultricies enim habitasse, sagittis, pellentesque. Mid integer scelerisque sagittis placerat magna proin lectus nec magna, augue dictumst, sit dictumst.\n\nScelerisque elementum amet amet, dapibus nascetur aliquam magna facilisis? Rhoncus lacus. Magnis sagittis purus mus ac a diam purus pulvinar tincidunt sociis a! Est. Integer eu! Arcu mattis scelerisque.\n\nLacus magna parturient, integer! Eu, magna aliquet. Arcu sed, in. Et. Integer natoque auctor mus et rhoncus sit nascetur, turpis. Adipiscing nisi porttitor nec cum facilisis magnis, ac nisi.\n\nSit porttitor rhoncus dignissim magna platea nec mus, quis! Enim ac habitasse cum ut cursus odio enim, risus scelerisque elit nec scelerisque integer enim a, turpis integer platea vut.'
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
		hasLift: false
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
		dateCreated: new Date()
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
		summary: 'Porta et arcu eros in. Scelerisque ac, amet est quis ac hac porttitor nec pulvinar enim eros placerat, pid integer lectus lectus duis cum a dignissim nunc vut? Phasellus dolor.\n\nEt penatibus in enim porttitor? Adipiscing dolor ac! Integer, ac amet amet, sed tincidunt, cras dapibus proin? Risus tristique augue amet! Est est tincidunt amet augue, urna pid lundium.\n\nMagnis nunc nunc. Elementum etiam, sed platea, pulvinar! Tortor dignissim tincidunt et pulvinar aliquet magna turpis sed, scelerisque sociis? Hac ut enim diam, pid. Lundium dignissim et augue et.\n\nEu non, rhoncus velit a sed odio pid! Ac, aliquet odio phasellus magnis ac penatibus natoque ac sit etiam elementum mus! Rhoncus! Nec porta ultrices? Nec. Sagittis montes turpis.'
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
		hasLift: false
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
		dateCreated: new Date()
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
		summary: 'Augue lectus, mus ac, ultrices egestas, magnis nisi, sed turpis nascetur? Porta proin? Augue cursus ut. Integer sed, porttitor phasellus eu mattis odio platea velit, nunc augue elementum turpis nunc.\n\nPhasellus pulvinar rhoncus penatibus, enim, ac elementum elementum arcu turpis, ridiculus sit penatibus magnis aliquet, urna sed. Nisi pulvinar eros tristique urna magna adipiscing pulvinar et odio? Placerat? Ut.\n\nUrna nec. Mattis, aliquam vel mauris a, hac odio rhoncus tortor, integer lorem nunc et, lacus tristique nec enim non in turpis mauris? Scelerisque, facilisis magnis pellentesque! Eros urna.\n\nUltrices? Nascetur amet integer pid, scelerisque hac turpis, tincidunt. Proin dis, in facilisis placerat sit facilisis turpis placerat placerat, velit cursus, odio cras amet magna? Ultrices? Augue! Aenean auctor.'
		address: "By the square"
		floor: 4
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
		hasLift: true
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
		dateCreated: new Date()
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
		summary: 'Elit integer quis pid non scelerisque tristique aenean eu? Et placerat ac a habitasse ac, etiam a, platea? Sociis, risus adipiscing etiam, dis velit ac urna porttitor amet et dictumst.\n\nAuctor adipiscing hac lundium sociis. Sit turpis lundium mauris, nascetur risus! Egestas et! Adipiscing tristique hac sagittis, mauris est nunc dapibus natoque a, ultrices est nunc, hac mauris tortor.\n\nSit penatibus? Elit elit penatibus. Adipiscing hac vel quis montes lectus, nunc egestas nunc, cum eu in! Eros, in, placerat, odio. Cras pid, nunc adipiscing, ultrices natoque in eu.\n\nPulvinar lorem in adipiscing dictumst. Massa elit, nisi, dapibus! Tristique, natoque, pulvinar velit! Sit ac rhoncus cursus amet integer. Eu lorem! Auctor tincidunt eros? Et, adipiscing nec in porta.'
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
		hasLift: false
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
		summary: 'Enim rhoncus facilisis odio dignissim sed ultricies egestas, eu, penatibus pellentesque hac lundium? Nunc in? Sed, urna, rhoncus! Dolor sed tristique pid lundium, facilisis. Ac aenean etiam in integer elementum.\n\nScelerisque nunc magnis dis mus! Et lorem. Magna purus sagittis mid hac porta vel? Nunc tincidunt, dapibus augue nisi placerat elementum tincidunt lorem adipiscing? Urna. Elementum in enim amet.\n\nMagnis sagittis! Platea natoque! Mid. Integer nunc in rhoncus. Velit a. Amet aliquet odio augue rhoncus montes mattis odio? Platea pellentesque etiam odio, magna elementum? Urna adipiscing odio lacus.\n\nMauris, pulvinar placerat tristique porta magnis a pellentesque massa a et sed habitasse ridiculus, sagittis porta turpis phasellus scelerisque rhoncus rhoncus turpis placerat parturient nunc quis, diam? In sed.'
		address: ""
		floor: 11
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
		hasLift: true
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
		dateCreated: new Date()
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
		summary: 'Natoque lectus dapibus adipiscing. Mus ut mid et turpis tortor augue porttitor. Egestas adipiscing dictumst sed amet est aliquet vut vel, et scelerisque augue augue, porttitor ac massa risus elit.\n\nProin in a urna duis, phasellus non phasellus et? In lorem scelerisque egestas etiam ultricies purus lorem! Ridiculus tempor ut phasellus, ut vel ac arcu lundium, placerat placerat a.\n\nPorttitor sit enim turpis, mauris, augue lacus nec amet. Elementum proin odio porta tincidunt? Adipiscing turpis penatibus? Eros vut, enim? Hac lacus, sit. Magnis amet vel sagittis etiam, in.\n\nNatoque scelerisque porta nunc dapibus amet quis, purus hac placerat platea pulvinar elementum sed? Eros dictumst ac, odio ac tristique scelerisque eu. Magnis, cum et facilisis, nisi. Aliquet mid.'
		address: ""
		floor: 2
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
		hasLift: false
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
		dateCreated: new Date()

	Properties.insert
		island: "Tenerife"
		city: "Valle San Lorenzo"
		summary: 'Dignissim nunc tristique vut enim, tincidunt aenean pulvinar, purus tincidunt? Sed placerat nunc tristique lundium et est sociis, dapibus mauris, odio et urna duis in lorem vel turpis, pulvinar aenean.\n\nSit cras ac, mus facilisis, tincidunt integer, mus sit? Sit, sed sed eu duis, proin lectus et. Rhoncus montes? Tristique! Sed, nisi mid vut sociis magnis. Dignissim dictumst elementum.\n\nPhasellus. Sed tortor, pulvinar et, urna penatibus dictumst amet, et mauris lorem aenean rhoncus lundium aliquet est sed ut urna facilisis etiam adipiscing, ultrices? Egestas urna in! Nec, dignissim.\n\nEros amet turpis nec. Augue, ac tincidunt. Placerat odio, sagittis risus, aliquet porta amet! Est, porttitor sociis, dolor eu, odio enim, tristique a? Facilisis purus dolor? Facilisis velit tincidunt.'
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
		dateCreated: new Date()
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
		summary: 'Ut, amet ultrices, massa adipiscing, amet nec tincidunt sit et aliquet a integer! Elementum vut nunc? Tempor odio! Cum tristique! Purus, enim dictumst sit scelerisque parturient, massa scelerisque. Augue lundium.\n\nPenatibus, risus, mauris, nec in, velit porta in, non, et pid et ac aliquet magna placerat aenan ut? Eu platea tincidunt! Egestas et tincidunt a, nunc nisi tempor scelerisque.\n\nPorttitor enim! Ut sagittis sagittis? Turpis egestas pellentesque! Enim? Adipiscing pulvinar odio urna rhoncus vut scelerisque. A. Turpis in, cursus dignissim habitasse non, habitasse magnis tempor nisi parturient sit.\n\nLacus nec dignissim rhoncus odio ac integer eu, auctor risus? Est tincidunt, sit penatibus pulvinar mus dolor! Egestas rhoncus a? Enim! Parturient aenean, nec adipiscing, lectus, amet, natoque est.'
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
		hasLift: true
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
		dateCreated: new Date()

	Properties.insert
		island: "Fuerteventura"
		city: "Costa Calma"
		summary: 'Urna? Sociis in, scelerisque mattis, magnis vel! Ac tempor enim. Phasellus in. Sagittis mattis sociis vut turpis adipiscing augue urna non! Urna diam turpis dignissim eu mattis elementum? Ut cras.\n\nHac et mus! Urna habitasse facilisis natoque, sagittis penatibus, enim odio. Montes odio pulvinar! Velit? Porta magna aliquam, eros phasellus? Mauris? Turpis et arcu facilisis dignissim cursus? Magnis dolor.\n\nMagnis! Dapibus elementum egestas, porttitor penatibus dapibus dolor, rhoncus! Elit a ac rhoncus! Ut! Magna, lundium turpis proin tempor ultrices nec nisi amet ac porta cursus augue? Purus nunc.\n\nParturient, risus arcu dictumst, scelerisque tincidunt lorem magna? Porta parturient augue. Aliquet in velit! Magnis magna? Urna. Elit tortor amet magna nec tincidunt magnis magnis augue pulvinar etiam ut.'
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
		dateCreated: new Date()

	Properties.insert
		island: "Fuerteventura"
		city: "Costa Calma"
		summary: 'Ridiculus pellentesque integer risus pulvinar ultrices cras. Magnis arcu dolor auctor phasellus, ridiculus mauris lacus, mus non magna lundium, sed. Odio, pid lacus lundium platea a velit enim, enim placerat.\n\nArcu, nec! Sociis vel et, porttitor mattis mattis ut sagittis sagittis nisi lorem habitasse ac! Turpis eu, placerat tincidunt penatibus nec urna turpis turpis turpis purus lorem nisi pulvinar.\n\nRidiculus facilisis facilisis penatibus etiam, etiam elit augue non, sed tristique scelerisque porta, cras ac tempor in, aenean, velit montes! Enim ac et, porta nunc? Et, porta elementum dis.\n\nNatoque et ultricies nec dis? Turpis mattis, in, ultricies magna rhoncus aliquam, velit sit, lacus vel! Et diam auctor, enim amet! Mattis urna tincidunt! Magnis dis sed rhoncus dignissim.'
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
		hasLift: false
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
		dateCreated: new Date()

	Properties.insert
		island: "Gran Canary"
		city: "San Agustin"
		summary: 'Et magna egestas urna sociis et! Sit tincidunt magnis mauris? Lundium mid. Risus dictumst parturient parturient sociis urna elit augue elit mid velit platea, ultricies tristique vel? Scelerisque, eu velit.\n\nTristique lundium phasellus dictumst dictumst, ut pid purus, turpis integer rhoncus, tincidunt massa parturient. Vel pulvinar lacus! Enim. Tincidunt, augue ultricies, tincidunt mauris dignissim, sagittis! Tincidunt turpis augue in.\n\nInteger mid diam, pulvinar et montes eu egestas etiam, sed montes diam tincidunt odio hac, mus augue lacus aliquam enim pellentesque eros tempor? Amet augue elit, et urna. Augue.\n\nNisi, enim, ridiculus adipiscing dapibus phasellus massa, ac in, ultricies sit diam massa, turpis! Amet elementum lectus rhoncus natoque! Parturient? Porta et placerat augue porttitor platea, eros dolor elit.'
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
		hasLift: false
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
		dateCreated: new Date()

	Properties.insert
		island: "Gran Canary"
		city: "San Agustin"
		summary: 'Vut porta duis proin, dis adipiscing! Sit, tincidunt in! Dignissim odio amet, non aliquet? Mus et, porta enim nec porta mus, diam et, rhoncus parturient ut pulvinar placerat, montes enim.\n\nPulvinar et massa, sagittis, rhoncus! Mattis cum aliquam porttitor, pellentesque placerat penatibus ac. Velit, sed sed ridiculus pellentesque! Facilisis cum non, scelerisque et? Platea turpis vut, enim, scelerisque odio.\n\nFacilisis massa velit sed est sociis penatibus sed, tristique nec natoque? Vel ac, tincidunt. Risus pellentesque augue in nec, integer dis arcu duis porta augue mid tincidunt? In odio.\n\nUt, cum vel a, amet, placerat, urna! Arcu sit est massa! Sed etiam etiam? In cursus odio purus pulvinar! Nec augue! Integer dolor, integer ac scelerisque ac augue platea.'
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
		hasLift: false
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
		dateCreated: new Date()

	Properties.insert
		island: "Gran Canary"
		city: "Play Anglesia"
		summary: 'Odio placerat ac in nec magna! Dis elementum facilisis phasellus ut sed sed, pulvinar montes a! Tempor lacus, ridiculus magna, penatibus nec magna in! Sed in nunc odio! Nec turpis.\n\nUrna nisi dapibus platea amet duis parturient lectus a! Dolor dignissim adipiscing augue. Rhoncus porttitor amet cum turpis dolor phasellus ultrices mattis aliquet velit lacus auctor proin nunc elementum.\n\nDictumst, augue? Mauris! Augue sit, velit ultricies sit integer? Dapibus aenean! Lectus! Cras augue, aenean nascetur et elementum elementum mus scelerisque arcu nisi. Integer hac auctor scelerisque nec hac.\n\nDis tincidunt augue duis mid, nec habitasse integer, risus vel auctor nunc odio turpis natoque mattis placerat sagittis natoque pellentesque, lorem in aenean dapibus enim et odio, nec, sagittis.'
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
		hasLift: false
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
		dateCreated: new Date()
		contacts: [
			firstName: "Mr",
			lastName: "Walker",
			email: "mr@walker.org",
			message: "Får man ta med varg?",
			fromDate: "2015-10-01",
			endDate: "2016-01-03",
			sentDate: "2015-09-01"]


	Properties.insert
		island: "La Gomera"
		city: "Playa de Santiago"
		summary: 'Odio placerat ac in nec magna! Dis elementum facilisis phasellus ut sed sed, pulvinar montes a! Tempor lacus, ridiculus magna, penatibus nec magna in! Sed in nunc odio! Nec turpis.\n\nUrna nisi dapibus platea amet duis parturient lectus a! Dolor dignissim adipiscing augue. Rhoncus porttitor amet cum turpis dolor phasellus ultrices mattis aliquet velit lacus auctor proin nunc elementum.\n\nDictumst, augue? Mauris! Augue sit, velit ultricies sit integer? Dapibus aenean! Lectus! Cras augue, aenean nascetur et elementum elementum mus scelerisque arcu nisi. Integer hac auctor scelerisque nec hac.\n\nDis tincidunt augue duis mid, nec habitasse integer, risus vel auctor nunc odio turpis natoque mattis placerat sagittis natoque pellentesque, lorem in aenean dapibus enim et odio, nec, sagittis.'
		address: ""
		floor: 0
		locationType: "Village"
		closestMini: 100
		closestSuper: 400
		carNecessary: "Recomended"
		distanceToSea: 200
		distanceToBeach: 600
		beachType: "Sand"
		disturbance: "Quiet"
		areaDescription: "Very relaxing"
		propertyType: "Villa"
		hasLift: false
		isStudio: false
		numBedRooms: 3
		numBathRooms: 1
		gardenType: "Garden"
		pool: "None"
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
		internet: "None"
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
		images: [
			"longlet/nkbjmixwkdkcgmkaaf0g",
			"longlet/tevib8t7ytl5mt87z4vd",
			"longlet/jyoh9hyetdkgbjujkpku",
			"longlet/saesmpmzajjirbi0fm1g"
		]
		username: "test2"
		status: "STATUS_PUBLISHED"
		dateCreated: new Date()
		contacts: [
			firstName: "Mr",
			lastName: "Walker",
			email: "mr@walker.org",
			message: "Får man ta med varg?",
			fromDate: "2015-10-01",
			endDate: "2016-01-03",
			sentDate: "2015-09-01"]

	Properties.insert
		island: "Gran Canary"
		city: "Play Anglesia"
		summary: 'Porta purus purus a, mauris dolor pulvinar parturient, dapibus integer tempor magna? Sit parturient nunc! Sed tempor in mattis rhoncus velit in magna vel. Pulvinar ultricies, nec hac, sagittis massa.\n\nAdipiscing tristique magnis, vel. Pellentesque! Et massa mid placerat! Duis elementum arcu lacus, ultricies augue mus habitasse purus vut tincidunt elementum aliquam mus, phasellus facilisis odio, dis facilisis sed.\n\nInteger ac? Cras cursus? Tincidunt dolor ultrices non pulvinar mattis velit, et vut sagittis. Pid, rhoncus vel enim amet, magna habitasse nisi turpis, in integer est, mauris sed lacus.\n\nInteger vel adipiscing dis mid, ac integer dictumst arcu, ac magna rhoncus duis. Odio augue egestas cum risus turpis cras ac, facilisis cum, duis platea. Hac parturient elit placerat.'
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
		hasLift: false
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
		pricePerMonth: 750
		aditionalWeekPrice: 200
		aditionalDayPrice: 25
		minimumStay: 2
		waterIncluded: true
		electricityIncluded: true
		discounts: "discounts"
		priceComment: "price comments"
		username: "test2"
		status: "STATUS_CREATED"
		dateCreated: new Date()

	Properties.insert
		island: "Tenerife"
		city: "Cota Adedje"
		summary: 'Arcu proin integer augue? Turpis tempor magna eros ac pulvinar! Ac penatibus, tempor ultricies natoque sed, porta? Tortor? Diam turpis in hac non et, mid, nec mus turpis est hac.\n\nAc enim turpis duis elementum sociis vel scelerisque sociis sit! Elementum augue magnis? Et velit integer eros. Ut? Et? Habitasse, arcu! Sed non sit cursus? Ridiculus porttitor egestas dignissim.\n\nRhoncus, odio phasellus, augue pid platea parturient sociis ridiculus turpis ultricies a nec et vel massa, rhoncus sed elementum? Scelerisque. Turpis sed vut? Lacus enim! Ac? Montes proin nec.\n\nNec, turpis hac. Et purus arcu tincidunt turpis mauris tempor adipiscing mauris urna integer phasellus elit mid integer non, sit magna natoque amet auctor pulvinar! Lectus, auctor massa pulvinar.'
		address: ""
		floor: 3
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
		hasLift: false
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
		username: "test1"
		status: "STATUS_CREATED"
		dateCreated: new Date()
else
	console.dir 'No need to seed properties'