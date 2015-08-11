CodeBytes.Views.CoursesIndexItem = Backbone.View.extend({
  template: JST["courses/courses_index_item"],

  className: "course-item",

  initialize: function (options) {
    this.listenTo(this.model, "sync", this.render);
  },

  render: function () {
    var content = this.template({ course: this.model });
    this.$el.html(content);
    return this;
  }
});
