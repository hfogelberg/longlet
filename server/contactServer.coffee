Meteor.startup ->
	Meteor.publish 'requestsByProperty', (propertyId) ->
		Properties.find({username: username}, {_id: 1, contact: 1})

	Meteor.publish 'myContactRequests', (username) ->
		Properties.find({username: username}, {_id: 1, island: 1, city: 1, address: 1, contact: 1})

Meteor.methods
	contactOwner: (username, propertyId, firstName, lastName, email, message, fromDate, endDate) ->
		console.dir 'contactOwner'
		
		Properties.update
			_id: propertyId,
			{
				$set: contact:
					{
						firstName: firstName
						lastName: lastName
						email: email
						message: message
						fromDate: fromDate
						endDate: endDate
						sentDate: new Date()
					}
			}

		# Contacts.insert
		# 	username: username
		# 	propertyId: propertyId
		# 	firstName: firstName
		# 	lastName: lastName
		# 	email: email
		# 	message: message
		# 	fromDate: fromDate
		# 	endDate: endDate
		# 	sentDate= new Date()