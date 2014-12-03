addRemoveNavScrollClass = ->
  $navbartop = $('.navbar-fixed-top')
  pos = $(window).scrollTop()
  if pos <= 0
    $navbartop.removeClass 'scrolled'
    cancelAnimationFrame(addRemoveNavScrollClass)
  else
    $navbartop.addClass 'scrolled'
    requestAnimationFrame(addRemoveNavScrollClass)


Meteor.startup ->
  # Initialize WOW
  new WOW().init()
  # Initialize Material Design plugins
  $.material.init()
  # Listen for scrolling to activate navbar
  $(window).scroll ->
    requestAnimationFrame(addRemoveNavScrollClass);