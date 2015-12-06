Template.islands.created = ->
  Session.setDefault 'limit', ITEMS_INCREMENT

  Deps.autorun ->
    Meteor.subscribe 'getIslands'

Template.islands.helpers islandsList: ->
  Islands.find()