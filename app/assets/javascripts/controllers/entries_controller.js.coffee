Raffler.EntriesController = Ember.ArrayController.extend
  addEntry: ->
    this.store.createRecord('entry', { name: @get('newEntryName') } )
    @set('newEntryName', '')

  drawWinner: ->
    @setEach('highlight', false)
    pool = @rejectProperty('winner')
    if pool.length > 0
      entry = pool[Math.floor(Math.random()*pool.length)]
      entry.set('winner', true)
      entry.set('highlight', true)
      @get('store').commit()