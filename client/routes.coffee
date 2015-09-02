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
      @subscribe 'getPropertiesByIsland', Session.get('limit'), Session.get('island')
      @subscribe 'getCitiesOnIsland', Session.get('island')
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
        @subscribe 'getPropertiesByCity', Session.get('limit'), Session.get('island'), Session.get('city')
        @subscribe 'getCitiesOnIsland', Session.get('island')
      data: citiesOnIslandList: ->
        Locations.find()

  @route 'showProprety',
    template: 'showProprety',
    path: 'showProprety/:_id'
    onBeforeAction: ->
      Session.set('propertyId', @params._id)
      this.next()
    waitOn: ->
      @subscribe 'getPropertyDetails', Session.get('propertyId')
      @subscribe 'getPropertiesByCity', Session.get('limit'), Session.get('island'), Session.get('city')
      @subscribe 'getCitiesOnIsland', Session.get('island')
    data:
      details: ->
        Properties.findOne({'_id': Session.get('propertyId')})
      citiesOnIslandList: ->
        Locations.find() 
      islands: ->
        Locations.find()

    @route 'editProperty',
      template: 'editProperty',
      path: 'editProperty/:id'
      onBeforeAction: ->
        console.log 'editProperty'
        console.log @params.id
        Session.set('propertyId', @params.id)
        this.next()
      waitOn: ->
        @subscribe 'getPropertyDetails', Session.get('propertyId')
      data: details: ->
        Properties.findOne({'_id': Session.get('propertyId')})

    @route 'search',
      template: 'search',
      path: 'search'
      waitOn: ->
        @subscribe 'getLocations'
      data: islands: ->
        Locations.find()

    @route 'contactOwner',
      template: 'contactOwner',
      path: 'contactOwner/:propertyId'
      onBeforeAction: ->
        console.log 'sendRequest'
        console.log @params.propertyId
        Session.set 'contactPropertyId', @params.propertyId
        this.next()
      waitOn: ->
        @subscribe 'getPropertyDetails', Session.get('contactPropertyId')    
      data: property: ->
        Properties.findOne({'_id': Session.get('contactPropertyId')})

    # @route 'myContactRequests',
    #   template: 'myContactRequests',
    #   path: 'myContactRequests'
    #   waitOn: ->
    #     @subscribe 'myContactRequests', Meteor.user().username
    #   data: requests: ->
    #     Properties.find()

    @route 'contactRequests',
      template: 'contactRequests',
      path: 'contactRequests/:propertyId'
      onBeforeAction: ->
        Meteor.call 'resetRequests', @params.propertyId, (error) ->
        this.next()
      waitOn: ->
        Session.set 'requestsPropertyId', @params.propertyId
        console.log 'contactRequests. propertyId: ' + Session.get('requestsPropertyId')
        @subscribe 'contactRequestsByProperty', Session.get('requestsPropertyId')
      data: contactRequests: ->
        Properties.findOne()

    @route 'createBooking',
      template: 'createBooking',
      path: 'createBooking/:propertyId'
      onBeforeAction: ->
        Session.set 'bookingPropertyId',  @params.propertyId
        this.next()

    @route 'bookingsForProperty',
      template: 'bookingsForProperty'
      path: '/bookingsForProperty/:propertyId'
      waitOn: ->
        console.log 'bookingsForProperty. propertyId: ' + @params.propertyId
        @subscribe 'getBookingsForProperty', @params.propertyId
      data: bookingsForProperty: ->
        Properties.findOne()

    @route 'admin',
      template: 'admin',
      path: 'admin'
      waitOn: ->
        @subscribe 'getAdsToCheck'
      data: adsToCheck: ->
        Properties.find()
 
  return


  