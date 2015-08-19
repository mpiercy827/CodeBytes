CodeBytes.Views.Profile = Backbone.CompositeView.extend({
  template: JST["users/profile"],

  className: "container profile",

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model, "sync", this.addBadges);
  },

  addBadges: function () {
    var badgesView = new CodeBytes.Views.Badges({
      collection: this.model.badges()
    });
    this.addSubview(".badges", badgesView);
  },

  render: function () {
    var content = this.template({ user: this.model });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }
});
