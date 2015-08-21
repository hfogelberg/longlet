Meteor.methods
	createUserProfile: (userId, userName, firstName, lastName, country, language, aboutMe) ->
		console.dir 'createUserProfile'

		UserProfiles.insert
			userId: userId
			userName: userName
			firstName: firstName
			lastName: lastName
			country: country
			language: language
			aboutMe: aboutMe

	updateUserProfile: (userId, firstName, lastName, country, language, aboutMe) ->
		console.dir 'editUserProfile'
		UserProfiles.update
			userId: userId, 
			{
				$set:
					firstName: firstName
					lastName: lastName
					country: country
					language: language
					aboutMe: aboutMe
			}
			
	createCountry: (name) ->
		console.dir 'createCountry'
		if Countries.find({name: name}).count() is 0
			Countries.insert
				name: name

	addDog: (username, name, kennelName, breed, gender, dob) ->
		console.dir 'addDog'

		Dogs.insert
			username: username
			name: name
			kennelName: kennelName
			breed: breed
			gender: gender
			dob: dob

	addBreed: (name) ->
		console.dir 'addBreed'
		if Breeds.find({name: name}).count() is 0
			Breeds.insert
				name: name

