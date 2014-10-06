Raffler.NewEntryView = Ember.View.extend
  templateName: 'newEntry'
  tagName: 'form'

  submit: ->
    this.get('controller').send('addEntry', this.get('newEntryName'))
    this.set('newEntryName', '')
    false