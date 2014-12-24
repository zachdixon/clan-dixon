Router.configure
  layoutTemplate: "homeLayout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"
  routeControllerNameConverter: "camelCase"

# Meteor.startup ->
#   Session.setDefault 'currentPage', null

Router.onBeforeAction ->
  Session.set 'currentPage', @route.getName()
  @next()

Router.onAfterAction ->
  $('body').scrollTop(0)

Router.route "/",
  name: "home"
Router.route "/about",
  name: "about"
Router.route "/history",
  name: "history"
Router.route "/tree",
  name: "tree"
Router.route "/gallery",
  name: "gallery"
Router.route "/gallery/:_id",
  name: "album"
  # waitOn: ->
  #   Meteor.subscribe 'album', @params.id
  # data: ->
  #   {name: "Album 1"}
Router.route "/blog",
  name: "blog"
Router.route "/profile",
  name: "profile"
  waitOn: ->
    Meteor.subscribe 'profilePictures'
Router.route "/account",
  name: "account"


Router.waitOn ->
  Meteor.subscribe 'user'
  Meteor.subscribe 'userPicture'