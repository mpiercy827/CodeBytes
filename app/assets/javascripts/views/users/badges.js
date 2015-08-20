CodeBytes.Views.Badges = Backbone.View.extend({
  template: JST["users/badges"],

  initialize: function (options) {
    this.courses = options.courses;
    this.listenTo(this.courses, "sync", this.render);
  },

  render: function () {
    var content = this.template({
      courseCompletions: this.collection,
      courses: this.courses
    });
    this.$el.html(content);
    return this;
  }
});
