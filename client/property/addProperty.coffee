$.cloudinary.config
	cloud_name: Meteor.settings.public.cloud_name

images = new Array()

Template.addProperty.helpers
	files: ->
		Cloudinary.collection.find()

	complete: ->
		@status is "complete"

Template.addProperty.rendered = ->
  Meteor.typeahead.inject()
  return

Template.addProperty.events
	'change .file_bag': (e) ->
		console.log  'change .file_bag'
		files = e.currentTarget.files
		$('.btnAddProperty').attr('disabled', 'disabled')

		Cloudinary.upload files,
			folder: 'longlet'
			(err,res) ->
				console.log "Upload Error: #{err}"
				console.log "Upload Result: #{res}"
				console.log res.public_id
				images.push res.public_id
				$('.btnAddProperty').removeAttr('disabled')

	'click .btnAddProperty': (event) ->
		event.preventDefault

		liftElem = $('input:radio[name=lift]:checked')
		locationElem = $('input:radio[name=locationType]:checked')
		carElem = $('input:radio[name=car]:checked')
		beachElem = $('input:radio[name=beachType]:checked')
		noiseElem = $('input:radio[name=noise]:checked')
		areaTypeElem = $('input:radio[name=areaType]:checked')
		propertyElem = $('input:radio[name=propertyType]:checked')
		externalElem = $('input:radio[name=externalSpace]:checked')
		poolElem = $('input:radio[name=pool]:checked')

		isStudio = false
		if $('#isStudio').checked then isStudio = true

		hasAC = false
		hasCeilingFan = false
		hasTV = false
		hasDvd = false
		hasCoffeeMaker = false
		hasKettle = false
		hasFridge = false
		hasFreezer = false
		hasWashMachine = false
		hasDishWasher = false
		hasOven = false
		hasMicro = false
		hasHob = false

		if $('#hasAC').checked then hasAC = true
		if $('#hasCeilingFan').checked then hasCeilingFan = true
		if $('#hasTV').checked then hasTV = true
		if $('#hasDvd').checked then hasDvd = true
		if $('#hasCoffeeMaker').checked then hasCoffeeMaker = true
		if $('#hasKettle').checked then hasKettle = true
		if $('#hasFridge').checked then hasFridge = true
		if $('#hasFreezer').checked then hasFreezer = true
		if $('#hasWashMachine').checked then hasWashMachine = true
		if $('#hasDishWasher').checked then hasDishWasher = true
		if $('#hasOven').checked then hasOven = true
		if $('#hasMicro').checked then hasMicro = true
		if $('#hasHob').checked then hasHob = true

		hasSatCable = ''
		if $('#hasSatCable').checked then hasSatCable = 'Satelite or cable TV'

		internetELem = $('input:radio[name=internet]:checked')

		petsConsidered = false
		if $('#petsConsidered').checked then petsConsidered = true

		suitableForElderly = false
		if $('#elderlyCheck').checked then suitableForElderly = true

		suitableForHandicapped = false
		if $('#motionCheck').checked then suitableForHandicapped = true

		suitableForChildren = false
		if $('#childrenCheck').checke then suitableForChildren = true

		waterIncluded = false
		if $('#waterIncluded').checked then waterIncluded = true


		electricityIncluded = false
		if $('#electricityIncluded').checked then	electricityIncluded = true


		params = {
			island: $('#island').val()
			city: $('#city').val()
			address: $('#propertyAddress').val()
			floor: $('.floor').val()
			hasLift: $(liftElem).val()
			summary: $('#summary').val()
			locationType: $(locationElem).val()
			closestMini: $('#closestMini').val()
			closestSuper: $('#closestSuper').val()
			carNecessary: $(carElem).val()
			distanceToSea: $('#distanceToSea').val()
			distanceToBeach: $('#distanceToBeach').val()
			beachType: $(beachElem).val()
			disturbance: $(noiseElem).val()
			areaType: $(areaTypeElem).val()
			areaDescription: $('#areaDescription').val()
			propertyType: $(propertyElem).val()
			isStudio: isStudio
			numBedRooms: $('#numBedRooms').val()
			numBathRooms: $('#numBathRooms').val()
			gardenType: $(externalElem).val()
			pool: $(poolElem).val()
			aptDescription: $('#aptDescription').val()
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
			equipmentComment: $('#equipmentComment').val()
			hasSatCable: hasSatCable
			internet: $(internetELem).val()
			internetComment: $('#internetComment').val()
			petsConsidered: petsConsidered
			petComment: $('#petComment').val()
			suitableForElderly: suitableForElderly
			suitableForChildren: suitableForChildren
			suitableForHandicapped: suitableForHandicapped
			pricePerMonth: $('#pricePerMonth').val()
			aditionalWeekPrice: $('#aditionalWeekPrice').val()
			aditionalDayPrice: $('#aditionalDayPrice').val()
			minimumStay: $('#minimumStay').val()
			waterIncluded: waterIncluded
			electricityIncluded: electricityIncluded
			discounts: $('#discounts').val()
			priceComment: $('#priceComment').val()
			status: STATUS_CREATED
			username: Meteor.user().username
			dateCreated: new Date()
			dateChanged: new Date()
		}

		Meteor.call 'createLocation', params.island, params.city, (error) ->
		console.log 'Calling createProperty'
		Meteor.call 'createProperty', params, (error) ->
			if error
				console.log 'Error: ' + error
			else
				console.log 'Property created'
				Router.go('/myPropertiesList')

Template.addProperty.helpers
  islands: ->
    Locations.find().fetch().map (location) ->
      location.islandEn
   cities: ->
    Locations.find().fetch().map (location) ->
      location.city
