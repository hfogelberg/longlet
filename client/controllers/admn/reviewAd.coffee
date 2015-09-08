Template.reviewAd.events
	'click .btnUpdateReview': (event, template) ->
		comment = template.find('#reviewComment').value
		console.log comment

		statusElem = template.find('input:radio[name=adStatus]:checked')
		status = $(statusElem).val()

		Meteor.call 'updateReview', Session.get('reviewPropertyId'), comment, status, (err) ->

	'click .btnCancel': (event, template) ->
		Router.go('/adsToCheck')