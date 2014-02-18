Brokenwings.MainSearchComponent = Ember.Component.extend({
  didInsertElement: function() {
    'use strict';
    var handleBarsEngine = {
      compile: function(template) {
        var compile = Handlebars.compile(template);
        var templateRenderer = {
          render: function (compiled) {
            return compile(compiled);
          }
        };
        return templateRenderer;
      }
    };

    this.$('#main-search').typeahead([{
      name: 'main-search',
      prefetch: {
        url: '/api/champions/ta.json',
        filter: function(data) {
          return data.champions;
        }
      },
      template: "<p>{{name}}</p>",
      engine: handleBarsEngine,
    }]);
  }
});