CodeBytes.Views.Terminal = Backbone.CompositeView.extend({
  template: JST["interactive/terminal"],

  events: {
    "feedback .terminal": "giveFeedback"
  },

  giveFeedback: function (event, feedback) {
    var viewParams = {
      text: "Not quite, try again!"
    }

    if (feedback.result && feedback.output) {
      alert("awesome!");
    } else if (feedback.result) {
      alert("incorrect output");
    } else if (feedback.output) {
      alert("incorrect result");
    } else {
      alert("You're terrible");
    }
  },

  render: function () {
    this.$el.html(this.template());
    return this;
  }
});
