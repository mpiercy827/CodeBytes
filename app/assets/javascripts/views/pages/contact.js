CodeBytes.Views.ContactView = Backbone.View.extend({
  template: JST["pages/contact"],

  className: "container contact",

  render: function () {
    this.$el.html(this.template());
    return this;
  }
});
