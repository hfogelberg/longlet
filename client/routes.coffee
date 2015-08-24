Router.configure
  layoutTemplate: 'layout'
  notFoundTemplate: 'not-found'
Router.map ->
  @route 'home',
    template: 'home',
    path: '/'
    
  @route 'about'

  @route 'contact'

  @route 'addProperty',
    template: 'addProperty',
    path: '/addProperty'
    waitOn: ->
      @subscribe 'getLocations'
    data: islands: ->
      Locations.find()

  @route 'myPropertiesList',
    template: 'myPropertiesList',
    route: 'myPropertiesList'
    waitOn: ->
      @subscribe 'getMyPropertiesList', Meteor.user().username
    data: myProperties: ->
      Properties.find()

  @route 'propertiesByIsland',
    template: 'propertiesByIsland',
    path: 'propertiesByIsland/:island'
    onBeforeAction: ->
      Session.set('island', @params.island)
      Session.setDefault 'limit', ITEMS_INCREMENT
      this.next()
    waitOn: ->
      Meteor.subscribe 'getPropertiesByIsland', Session.get('limit'), Session.get('island')

  return