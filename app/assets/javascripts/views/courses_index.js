CodeBytes.Views.CoursesIndex = Backbone.CompositeView.extend({
  template: JST["courses/courses_index"],

  initialize: function (options) {
    this.listenTo(this.collection, "sync", this.render);
    this.listenTo(this.collection, "add", this.addCourseItem);
    this.collection.each(this.addCourseItem.bind(this));
  },

  addCourseItem: function (course) {
    var courseItemView = new CodeBytes.Views.CoursesIndexItem({ model: course });
    this.addSubview(".courses-list", courseItemView);
  },

  render: function () {
    var content = this.template({ courses: this.collection });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }
});
