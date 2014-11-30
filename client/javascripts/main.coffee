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
  new WOW().init()
  $(window).scroll ->
    requestAnimationFrame(addRemoveNavScrollClass);