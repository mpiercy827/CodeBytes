CodeBytes.Views.Feedback = Backbone.View.extend({
  className: "alert-dismissible",

  template: JST["interactive/feedback"],

  events: {
    "click .close": "remove"
  },

  initialize: function (results) {
    this.results = results;
    this.addSuccessOrFailure(results);
    this.render();
  },

  addSuccessOrFailure: function (results) {
    if (results.result && results.output) {
      this.$el.addClass("positive");
    } else {
      this.$el.addClass("negative");
    }
  },

  render: function () {
    var content = this.template({ results: this.results });
    this.$el.html(content);
    return this;
  }
});
