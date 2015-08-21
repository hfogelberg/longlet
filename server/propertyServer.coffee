Meteor.startup ->
	Meteor.publish 'getLocations', ->
		Locations.find()

	# Meteor.publish 'getUserProfile', (usenName) ->
	# 	console.dir 'getUserProfile'
	# 	console.dir username
	# 	UserProfiles.find({userName: username}, {limit: 1})

	# Meteor.publish 'getMyDogs', (username) ->
	# 	console.dir 'getMyDogs'
	# 	Dogs.find({username: username})

	# Meteor.publish 'getDogOverView', (dogId) ->
	# 	console.dir 'getDogOverview ' + dogId
	# 	Dogs.find({'_id': dogId})