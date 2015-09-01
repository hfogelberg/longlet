Meteor.startup ->
	Meteor.publish 'getBookingsForProperty', (propertyId) ->
		console.dir 'getBookingsForProperty: ' + propertyId
		
		Properties.find({_id: propertyId}, {bookings: 1})

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