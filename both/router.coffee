Router.configure
  layoutTemplate: "homeLayout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"
  routeControllerNameConverter: "camelCase"

Router.map ->
  
  @route "home",
    path: "/"
    layoutTemplate: "homeLayout"
  @route "profile",
    path: "/profile"
    waitOn: ->
      Meteor.subscribe 'profilePictures'
  @route "account",
    path: "/account"


Router.waitOn ->
  Meteor.subscribe 'user'
  Meteor.subscribe 'userPicture'