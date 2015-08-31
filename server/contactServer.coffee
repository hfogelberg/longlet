Meteor.startup ->
	Meteor.publish 'contactRequestsByProperty', (propertyId) ->
		console.dir 'contactRequestsByProperty ' + propertyId
		console.dir 'Found properties ' + Properties.find({_id: propertyId}, {_id: 1, contact: 1}).count()
		Properties.find({_id: propertyId}, {_id: 1, contact: 1})

	Meteor.publish 'myContactRequests', (username) ->
		Properties.find({username: username}, {_id: 1, island: 1, city: 1, address: 1, contact: 1})

Meteor.methods
	createBooking: (propertyId, firstName, lastName, email, phone, fromDate, toDate, agreedPricePerMonth, agreedAditionalWeek, agreedAditionalDays, deposit, depositDueDate, careTakerName, caretakerPhone, careTakerMail, keyHandling, additionalTerms) ->
		Properties.update 		
			_id: propertyId,
			{
				$push: {
					bookings: {
						firstName: firstName
						lastName: lastName
						email: email
						phone: phone
						fromDate: fromDate
						toDate: toDate
						agreedPricePerMonth: agreedPricePerMonth
						agreedAditionalWeek: agreedAditionalWeek
						agreedAditionalDays: agreedAditionalDays
						deposit: deposit 
						depositDueDate
						careTakerName: careTakerName
						caretakerPhone: caretakerPhone
						careTakerMail: careTakerMail
						keyHandling: keyHandling
						additionalTerms: additionalTerms
					}
				}
			}

	resetRequests: (propertyId) ->
		Properties.update
			_id: propertyId,
			{
				$set:{
					newRequest: false
				}
			}

	contactOwner: (username, propertyId, firstName, lastName, email, message, fromDate, endDate) ->
		console.dir 'contactOwner'
		
		Properties.update
			_id: propertyId,{
				$set:{
						newRequest: true
					}
				},
			{$push: {contacts:
				firstName: firstName
				lastName: lastName
				email: email
				message: message
				fromDate: fromDate
				endDate: endDate
				sentDate: new Date()}}
