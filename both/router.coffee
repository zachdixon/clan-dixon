Router.configure
  layoutTemplate: "homeLayout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"
  routeControllerNameConverter: "camelCase"

# Meteor.startup ->
#   Session.setDefault 'currentPage', null

Router.onBeforeAction ->
  Session.set 'currentPage', @.route.getName()
  @next()

Router.map ->
  
  @route "home",
    path: "/"
  @route "about"
  @route "history"
  @route "tree"
  @route "gallery"
  @route "blog"
  @route "profile",
    waitOn: ->
      Meteor.subscribe 'profilePictures'
  @route "account"


Router.waitOn ->
  Meteor.subscribe 'user'
  Meteor.subscribe 'userPicture'