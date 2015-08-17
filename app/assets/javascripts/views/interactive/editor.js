CodeBytes.Views.Editor = Backbone.View.extend({
  template: JST["interactive/editor"],

  tagName: "form",

  className: "editor-container",

  render: function () {
    this.$el.html(this.template());
    return this;
  }
});
