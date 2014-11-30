@Config =
	name: 'The Dixons'
	title: 'The Dixon Family'
	subtitle: 'In the great state of Texas'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright ' + new Date().getFullYear()
	emails:
		from: 'noreply@' + Meteor.absoluteUrl()
	username: false
	homeRoute: '/'
	socialMedia:
		[
			['http://facebook.com/benjaminpeterjones','facebook']
			['http://twitter.com/BenPeterJones','twitter']
			['http://github.com/yogiben','github']
		]