Template.createBooking.events
	'click .btnCreateBooking': (event, template) ->
		firstName = template.find('.firstName').value
		lastName = template.find('.lastName').value
		email = template.find('.email').value
		phone = template.find('.phone').value
		fromDate = template.find('.fromDate').value
		toDate = template.find('.toDate').value
		agreedPricePerMonth = template.find('.agreedPricePerMonth').value
		agreedAditionalWeek = template.find('.agreedAditionalWeek').value
		agreedAditionalDays = template.find('.agreedAditionalDays').value
		deposit = template.find('.deposit').value
		depostDueDate = template.find('.depostDueDate').value
		careTakerName = template.find('.careTakerName').value
		caretakerPhone = template.find('.caretakerPhone').value
		careTakerMail = template.find('.careTakerMail').value
		keyHandling = template.find('.keyHandling').value
		additionalTerms = template.find('.additionalTerms').value

		propertyId = Session.get('bookingPropertyId')

		Meteor.call 'createBooking', propertyId, firstName, lastName, email, phone, fromDate, toDate, agreedPricePerMonth, agreedAditionalWeek, agreedAditionalDays, deposit, depostDueDate, careTakerName, caretakerPhone, careTakerMail, keyHandling, additionalTerms, (error) ->
