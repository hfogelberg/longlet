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
      Meteor.subscribe 'getCitiesOnIsland', Session.get('island')
    data: citiesOnIslandList: ->
      Locations.find()

  @route 'propertiesByCity',
    template: 'propertiesByCity',
    path: 'propertiesByCity/:island/:city'
    onBeforeAction: ->
        Session.set('island', @params.island)
        Session.set('city', @params.city)
        console.log @params.city
        Session.setDefault 'limit', ITEMS_INCREMENT
        this.next()
      waitOn: ->
        Meteor.subscribe 'getPropertiesByCity', Session.get('limit'), Session.get('island'), Session.get('city')
        Meteor.subscribe 'getCitiesOnIsland', Session.get('island')
      data: citiesOnIslandList: ->
        Locations.find()


  return