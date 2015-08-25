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
		even.preventDefault

		island = template.find('.island').value
		city = template.find('.city').value
		minBeds = template.find('.minBedRooms').value
		minBath = template.find('.minBathRooms').value
		pets = template.find('.petsPossible').value
		maxPrice = template.find('.maxPrice').value
		fromDate = template.find('.fromDate').value
		endDate = template.find('.endDate').value

		Meteor.call 'searchProperties', island, city, minBeds, minBath, pets, maxPrice, fromDate, endDate, (error) ->


