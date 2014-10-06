Raffler.Router.map ()->
  @route 'entries', path: '/'

Raffler.EntriesRoute = Ember.Route.extend
  # setupController: (controller) -> controller.set('content', this.store.find('entry'))
  model: -> this.store.find('entry')