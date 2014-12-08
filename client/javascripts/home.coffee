Template.home.rendered = ->
  # $(window).imagesLoaded ->
  #   $('.gallery-wrapper').isotope()
  $('.da-thumbs > li').each( -> $(@).hoverdir())

Template.home.helpers
  people: ->
    [1..6]