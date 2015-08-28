CodeBytes.Views.CareersView = Backbone.View.extend({
  template: JST["pages/careers"],

  className: "container careers",

  render: function () {
    this.$el.html(this.template());
    return this;
  }
});
