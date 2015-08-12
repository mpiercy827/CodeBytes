CodeBytes.Routers.Router = Backbone.Router.extend({
  routes: {
    "": "index",
    "courses/:id": "showCourse"
  },

  initialize: function (options) {
    this.courses = options.courses;
    this.$rootEl = options.$rootEl;
  },

  index: function () {
    this.courses.fetch();
    var coursesView = new CodeBytes.Views.CoursesIndex({
      collection: this.courses
    });

    this._swapView(coursesView);
  },

  showCourse: function (id) {
    var course = this.courses.getOrFetch(id);
    var courseShow = new CodeBytes.Views.CourseShow({
      model: course
    });
    this._swapView(courseShow);
  },

  _swapView: function (view) {
    this._view && this._view.remove();
    this._view = view;
    this.$rootEl.html(view.render().$el);
  }
});
