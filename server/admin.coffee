Meteor.startup ->
	Meteor.publish 'getAdsToCheck', ->
		Properties.find({status: 'STATUS_CREATED'})