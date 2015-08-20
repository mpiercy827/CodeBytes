CodeBytes.Models.User = Backbone.Model.extend({
  urlRoot: "api/profile",

  courseCompletions: function () {
    if (!this._courseCompletions) {
      this._courseCompletions = new CodeBytes.Collections.CourseCompletions();
    }

    return this._courseCompletions;
  },

  parse: function (data) {
    if (data.course_completions) {
      this.courseCompletions().set(data.course_completions);
      delete data.course_completions
    }

    return data;
  }
});
