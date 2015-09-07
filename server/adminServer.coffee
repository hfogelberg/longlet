Meteor.startup ->
	Meteor.publish 'getAdsToCheck', ->
		Properties.find({status: {'$ne': STATUS_CREATED}})


Meteor.methods 
	updateReview: (propertyId, comment, status) ->
		console.dir 'update review ' + propertyId

		Properties.update
			_id: propertyId,
			{$set: {
				status: status
				}}

			
		Properties.update
			_id: propertyId,
			{$push: {
				adminComments:
					comment: comment
					status: status
					sentDate: new Date()}}