CodeBytes.Collections.Courses = Backbone.Collection.extend({
  url: "/api/courses",

  model: CodeBytes.Models.Course,

  getOrFetch: function (id) {
    var courses = this;
    var course = courses.get(id);

    if (course) {
      course.fetch();
    } else {
      course = new CodeBytes.Models.Course({ id: id });
      courses.add(course);
      course.fetch({
        error: function () { courses.remove(course) }
      });
    }

    return course;
  }
});
