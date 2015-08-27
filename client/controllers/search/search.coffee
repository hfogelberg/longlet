Template.searchResult.helpers foundProperties: ->
	console.log 'foundProperties helper'
	console.log Session.get 'foundProperties'
	return Session.get 'foundProperties'

Template.search.rendered = ->
	Meteor.typeahead.inject()

Template.search.helpers 
  islands: ->
    Locations.find().fetch().map (location) ->
      location.islandEn

   cities: ->
    Locations.find().fetch().map (location) ->
      location.city

Template.search.events
	'click .btnSearch': (event, template) ->
		event.preventDefault

		island = template.find('#island').value
		city = template.find('#city').value		
		pets = template.find('.petsPossible').value
		minBeds = template.find('.minBedRooms').value
		minBath = template.find('.minBathRooms').value
		maxPrice = template.find('.maxPrice').value
		fromDate = template.find('.fromDate').value
		endDate = template.find('.endDate').value

		Meteor.call 'searchProperties', island, city, minBeds, minBath, pets, maxPrice, fromDate, endDate, (err, ret) ->
			console.log err
			Session.set 'foundProperties', ret
			console.log 'Search'
			console.log Session.get 'foundProperties'

