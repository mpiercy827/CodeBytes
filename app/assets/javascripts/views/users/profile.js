CodeBytes.Views.Profile = Backbone.View.extend({
  template: JST["users/profile"],

  render: function () {
    var content = this.template({ user: this.model });
    this.$el.html(content);
    return this;
  }
});
