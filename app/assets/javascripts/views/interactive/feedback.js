CodeBytes.Views.Feedback = Backbone.View.extend({
  className: "alert-dismissible",

  template: JST["interactive/feedback"],

  events: {
    "click .close": "remove",
    "click .next-exercise": "nextExercise"
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

  nextExercise: function (event) {
    event.preventDefault();
  },

  render: function () {
    var content = this.template({ results: this.results });
    this.$el.html(content);
    return this;
  }
});
