Meteor.startup ->
	Meteor.publish 'getAdsToCheck', ->
		Properties.find({status: {'$ne': STATUS_CREATED}})


Meteor.methods 
	updateReview: (propertyId, comment, status) ->
		console.dir 'update review ' + propertyId

		Property.update
			_id: propertyId
			{
				$set: {
					comment: comment
					status: status
				}
			}