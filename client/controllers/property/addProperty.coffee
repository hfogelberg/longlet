Template.addProperty.rendered = ->
  Meteor.typeahead.inject()
  return

Template.addProperty.events
	'click .btnAddProperty': (event, template) ->
		event.preventDefault
		alert 'click'

Template.addProperty.helpers 
  islands: ->
    Locations.find().fetch().map (location) ->
      location.islandEn
   cities: ->
    Locations.find().fetch().map (location) ->
      location.city