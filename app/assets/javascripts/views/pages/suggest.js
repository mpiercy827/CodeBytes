CodeBytes.Views.SuggestCourse = Backbone.View.extend({
  template: JST["pages/suggest"],

  className: "suggestion-form",

  tagName: "form",

  events: {
    "submit": "sendSuggestion"
  },

  sendSuggestion: function (event) {
    event.preventDefault();
  },

  render: function () {
    this.$el.html(this.template());
    return this;
  }
});
