Meteor.startup ->
	Meteor.publish 'contactRequestsByProperty', (propertyId) ->
		Properties.find({_id: propertyId}, {_id: 1, contact: 1})

	Meteor.publish 'myContactRequests', (username) ->
		Properties.find({username: username}, {_id: 1, island: 1, city: 1, address: 1, contact: 1})

Meteor.methods
	resetRequests: (propertyId) ->
		Properties.update
			_id: propertyId,
			{
				$set:{
					newRequest: false
				}
			}

	contactOwner: (username, propertyId, firstName, lastName, email, message, fromDate, endDate) ->	
		console.dir 'Create contact'

		Properties.update
			_id: propertyId,
			{$push: {contacts:
				firstName: firstName
				lastName: lastName
				email: email
				message: message
				fromDate: fromDate
				endDate: endDate
				sentDate: new Date()}}

		Properties.update
			_id: propertyId,
			{
				$set:{ newRequest: true}
			}

