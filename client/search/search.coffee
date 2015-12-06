Template.searchResult.helpers 
	bookingsNoDate: ->
		console.log 'bookingsNoDate helper'
		nd = Session.get 'bookingsNoDate'
		console.log nd
		console.log '#####'
		return nd

	noBookings: ->
		console.log 'noBookings helper'
		nb = Session.get 'noBookings'
		console.log nb
		console.log '#####'
		return nb

	bookingsBefore: ->
		console.log 'bookingsBefore helper'
		bb = Session.get 'bookingsBefore'
		console.log bb
		console.log '#####'
		return bb

	bookingsAfter: ->
		console.log 'bookingsAfter helper'
		ba = Session.get 'bookingsAfter'
		console.log ba
		console.log '#####'
		return ba

Template.search.rendered = ->
	Meteor.typeahead.inject()

Template.search.helpers
	islands: ->
  	Locations.find().fetch().map (location) ->
    	location.islandEn

	cities: ->
		Locations.find().fetch().map (location) ->
			location.city

	selectedIsland: ->
		Session.get 'island'

	selectedCity: ->
		#Don't know why I need to take this extra step. Bug in Meteor?
		c = Session.get 'city'
		return c

  # petsPossible: ->
  # 	Session.get 'pets'

  selectedMinBeds: ->
		b = Session.get 'minBeds'
		console.log 'minBeds: ' + b
		return b

	selectedMinBath: ->
		Session.get 'minBath'

	selectedMaxPrice: ->
		Session.get 'maxPrice'

	selectedFromDate: ->
		Session.get 'fromDate'

	selectedToDate: ->
		Session.get 'endDate'

Template.search.events
	'click .btnSearch': (event, template) ->
		event.preventDefault

		island = template.find('#island').value
		city = template.find('#city').value		
		pets = true if template.find('.petsPossible').checked
		minBeds = template.find('.minBedRooms').value
		minBath = template.find('.minBathRooms').value
		maxPrice = template.find('.maxPrice').value
		fromDate = template.find('.fromDate').value.split('-').join('')
		toDate = template.find('.endDate').value.split('-').join('')

		Session.set 'island', island
		Session.set 'city', city
		Session.set 'pets', pets
		Session.set 'minBeds', minBeds
		Session.set 'minBath', minBath
		Session.set 'maxPrice', maxPrice
		Session.set 'fromDate', fromDate
		Session.set 'toDate', toDate

		console.log 'From date: ' + fromDate
		console.log 'To date: ' + toDate

		Session.set 'bookingsNoDate'
		Session.set 'noBookings'
		Session.set 'bookingsBefore'
		Session.set 'bookingsAfter'
		
		if fromDate == ''
			if toDate == ''
				Meteor.call 'searchPropertiesWithBookingsNoDates', island, city, minBeds, minBath, pets, maxPrice, (err, ret) ->
					console.log 'searchPropertiesWithBookingsNoDates'
					console.log err
					console.log ret
					Session.set 'bookingsNoDate', ret

		if toDate != ''
			Meteor.call 'searchPropertiesWithBookingsBefore', island, city, minBeds, minBath, pets, maxPrice, fromDate, toDate, (err, ret) ->
				console.log  'searchPropertiesWithBookingsBefore'
				console.log err
				console.log ret
				Session.set 'bookingsBefore', ret

		if fromDate != ''
			Meteor.call 'searchPropertiesWithBookingsAfter', island, city, minBeds, minBath, pets, maxPrice, fromDate, toDate, (err, ret) ->
				console.log 'searchPropertiesWithBookingsAfter'
				console.log err
				console.log ret
				Session.set 'bookingsAfter', ret

		Meteor.call 'searchPropertiesNoBookings', island, city, minBeds, minBath, pets, maxPrice, (err, ret) ->
			console.log 'searchPropertiesNoBookings'
			console.log err
			console.log ret
			Session.set 'noBookings', ret

