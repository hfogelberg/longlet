incrementLimit = (inc = ITEMS_INCREMENT) ->
  newLimit = Session.get('limit') + inc
  Session.set 'limit', newLimit
  return

  # Triggered on scroll
  $(window).scroll ->
    if $(window).scrollTop() + $(window).height() > $(document).height() - 100
      incrementLimit()
    return
  return

Template.propertiesByCity.helpers 
	propertiesByCityList: ->
		limit = Session.get('limit')
		island = Session.get('island')
		city = Session.get('city')
		Properties.find({island: island, city: city}, {limit: limit})

	island: ->
		Session.get 'island'

	city: ->
		Session.get('city')