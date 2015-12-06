incrementLimit = (inc = ITEMS_INCREMENT) ->
  newLimit = Session.get('limit') + inc
  Session.set 'limit', newLimit
  return

Template.headlineProperties.created = ->
  Session.setDefault 'limit', ITEMS_INCREMENT

  Deps.autorun ->
    Meteor.subscribe 'getHeadlineProperties', Session.get('limit')
    return
  return

  # Triggered on scroll
  $(window).scroll ->
    if $(window).scrollTop() + $(window).height() > $(document).height() - 100
      incrementLimit()
    return
  return

Template.headlineProperties.helpers headlinePropertiesList: ->
  Properties.find {}, limit: Session.get('limit')