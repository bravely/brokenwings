Brokenwings.MainSearchComponent = Ember.Component.extend({
  didInsertElement: function() {
    this.$('#main-search').typeahead([{
      name: 'main-search',
      local: [
        'Hi',
        'ho',
        'jake',
        'bex'
      ]
    }]);
  }
});