incrementLimit = (inc = ITEMS_INCREMENT) ->
  newLimit = Session.get('limit') + inc
  Session.set 'limit', newLimit
  return

# Template.propertiesByIsland.created = ->
#   Session.setDefault 'limit', ITEMS_INCREMENT

#   Deps.autorun ->
#     Meteor.subscribe 'getPropertiesByIsland', Session.get('limit'), Session.get('island')
#     return
#   return

  # Triggered on scroll
  $(window).scroll ->
    if $(window).scrollTop() + $(window).height() > $(document).height() - 100
      incrementLimit()
    return
  return

Template.propertiesByIsland.helpers 
	propertiesByIslandList: ->
		limit = Session.get('limit')
		island = Session.get('island')
		Properties.find({island: island}, {limit: limit})

	island: ->
		Session.get 'island'