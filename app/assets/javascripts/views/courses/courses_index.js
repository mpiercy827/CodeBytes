CodeBytes.Views.CoursesIndex = Backbone.CompositeView.extend({
  template: JST["courses/courses_index"],

  events: {
    "click .course-item": "showCourse",
    "click .suggest": "courseSuggestion"
  },

  initialize: function (options) {
    this.listenTo(this.collection, "sync", this.render);
    this.listenTo(this.collection, "add", this.addCourseItem);
    this.collection.each(this.addCourseItem.bind(this));
  },

  addCourseItem: function (course) {
    var courseItemView = new CodeBytes.Views.CoursesIndexItem({ model: course });
    this.addSubview(".courses-list", courseItemView);
  },

  courseSuggestion: function (event) {
    event.preventDefault();
  },

  render: function () {
    var content = this.template({ courses: this.collection });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  },

  showCourse: function (event) {
    event.preventDefault();
    var id = $(event.currentTarget).data("course-id");
    Backbone.history.navigate("courses/"+id, {trigger: true});
  }
});
