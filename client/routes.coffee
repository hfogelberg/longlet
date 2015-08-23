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



  # @route 'editUserProfile',
  #   template: 'editUserProfile',
  #   path: '/editUserProfile/:username'
  #   onBeforeAction: ->
  #     console.log  @params.username
  #     Session.set 'userNameToEdit', @params.username
  #     this.next()
  #   waitOn: ->
  #     @subscribe 'getUserProfile', @params.username
  #   data: userToEdit: ->
  #     UserProfiles.findOne({userName: Session.get('userNameToEdit')})

      
  return