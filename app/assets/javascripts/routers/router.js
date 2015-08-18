CodeBytes.Routers.Router = Backbone.Router.extend({
  routes: {
    "": "index",
    "courses/:courseId/topics/:topicId": "showTopic",
    "courses/:id": "showCourse",
    "profile": "showProfile"
  },

  initialize: function (options) {
    this.courses = options.courses;
    this.topics = options.topics;
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

  showProfile: function () {
    if (window.logged_in) {
      alert("Here's your profile!");
    } else {
      alert("You're not logged in");
    }
  },

  showTopic: function (courseId, topicId) {
    var topic = this.topics.getOrFetch(topicId);
    var course = this.courses.getOrFetch(courseId);
    var topicShow = new CodeBytes.Views.TopicShow({
      model: topic,
      course: course
    });
    this._swapView(topicShow);
  },

  _swapView: function (view) {
    this._view && this._view.remove();
    this._view = view;
    this.$rootEl.html(view.render().$el);
  }
});
