CodeBytes.Views.AboutView = Backbone.View.extend({
  template: JST["pages/about"],

  className: "container about",

  render: function () {
    this.$el.html(this.template());
    return this;
  }
});
