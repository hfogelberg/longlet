Meteor.startup ->
	Meteor.publish 'getAdsToCheck', ->
		Properties.find({status: {'$ne': STATUS_CREATED}})