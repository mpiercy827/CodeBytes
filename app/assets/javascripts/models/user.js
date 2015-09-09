CodeBytes.Models.User = Backbone.Model.extend({
  urlRoot: "api/profile",

  courseCompletions: function () {
    if (!this._courseCompletions) {
      this._courseCompletions = new CodeBytes.Collections.CourseCompletions();
    }

    return this._courseCompletions;
  },

  topicCompletions: function () {
    if (!this._topicCompletions) {
      this._topicCompletions = new CodeBytes.Collections.TopicCompletions();
    }

    return this._topicCompletions;
  },

  exerciseCompletions: function () {
    if (!this._exerciseCompletions) {
      this._exerciseCompletions = new CodeBytes.Collections.ExerciseCompletions();
    }

    return this._exerciseCompletions;
  },

  parse: function (data) {
    if (data.course_completions) {
      this.courseCompletions().set(data.course_completions);
      delete data.course_completions;
    }

    if (data.topic_completions) {
      this.topicCompletions().set(data.topic_completions);
      delete data.topic_completions;
    }

    if (data.exercise_completions) {
      this.exerciseCompletions().set(data.exercise_completions);
      delete data.exercise_completions;
    }

    return data;
  }
});
