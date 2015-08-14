CodeBytes.Views.Terminal = Backbone.CompositeView.extend({
  template: JST["interactive/terminal"],

  events: {
    "feedback .terminal": "giveFeedback"
  },

  giveFeedback: function (event, feedback) {
    var feedbackView = new CodeBytes.Views.Feedback(feedback);
    this.attachSubview(".feedback", feedbackView);
  },

  render: function () {
    this.$el.html(this.template());
    this.attachSubviews();
    return this;
  }
});
