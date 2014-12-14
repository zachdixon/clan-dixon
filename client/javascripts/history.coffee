Meteor.startup ->
  Session.set 'historyTab', 0
  Session.set 'historySubTab', 0

Template.history.rendered = ->
  $(document).on 'WebComponentsReady', ->
    # Polymer 'core-animated-pages',
    #   ready: ->
    #     this.$.sidenav.affix
    #       offset:
    #         top: 70
    
Template.history.events
  'click .tabs paper-tab': (e, doc) ->
    tab = parseInt($(e.currentTarget).data('value'))
    unless Session.equals 'historyTab', tab
      Session.set 'historyTab', tab
      Session.set 'historySubTab', 0
  'click .sub-tabs paper-tab': (e, doc) ->
    Session.set 'historySubTab', parseInt($(e.currentTarget).data('value'))

Template.history.helpers
  selectedTab: (tab) ->
    Session.equals 'historyTab', tab
  selectedSubTab: (tab) ->
    Session.equals 'historySubTab', tab