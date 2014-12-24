Template.about.events
  'click .about-section header': (e, doc) ->
    $(e.currentTarget).siblings('core-collapse')[0].toggle()