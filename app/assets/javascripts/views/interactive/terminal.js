CodeBytes.Views.Terminal = Backbone.View.extend({
  template: JST["interactive/terminal"],

  render: function () {
    this.$el.html(this.template());
    return this;
  }
});
