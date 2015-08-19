CodeBytes.Views.Badges = Backbone.View.extend({
  template: JST["users/badges"],

  render: function () {
    var content = this.template({ badges: this.collection });
    this.$el.html(content);
    return this;
  }
});
