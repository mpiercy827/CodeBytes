CodeBytes.Views.CourseShow = Backbone.CompositeView.extend({
  template: JST["course_show"],

  render: function () {
    var content = this.template({ course: this.model });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }
});
