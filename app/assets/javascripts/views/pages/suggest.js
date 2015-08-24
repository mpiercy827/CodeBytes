CodeBytes.Views.SuggestCourse = Backbone.View.extend({
  template: JST["pages/suggest"],

  className: "container",
  
  events: {
    "submit": "sendSuggestion"
  },

  sendSuggestion: function (event) {
    event.preventDefault();
    alert("cool");
  },

  render: function () {
    this.$el.html(this.template());
    return this;
  }
});
