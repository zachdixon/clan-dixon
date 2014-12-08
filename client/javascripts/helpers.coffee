Template.registerHelper 'currentPage', (page) ->
  Session.equals 'currentPage', page

Template.registerHelper 'Config', ->
	Config

Template.registerHelper 'NCSchemas', ->
	NCSchemas