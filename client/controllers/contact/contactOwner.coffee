Template.contactOwner.events
	'click .contactBtn': (event, template) ->
		event.preventDefault
		firstName = template.find('.firstName').value
		lastName = template.find('.lastName').value
		email = template.find('.email').value
		message = template.find('.message').value
		fromDate = template.find('.fromDate').value
		endDate = template.find('.endDate').value
		username = template.find('.username').value

		Meteor.call 'contactOwner', username, Session.get('contactPropertyId'), firstName, lastName, email, message, fromDate, endDate, (error) ->

