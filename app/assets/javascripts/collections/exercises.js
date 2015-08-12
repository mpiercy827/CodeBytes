CodeBytes.Collections.Exercises = Backbone.Collection.extend({
  url: "api/exercises",

  model: CodeBytes.Models.Exercise,

  getOrFetch: function (id) {
    var exercises = this;
    var exercise = this.get(id);

    if (exercise) {
      exercise.fetch();
    } else {
      exercise = new CodeBytes.Models.Exercise({ id: id });
      exercises.add(exercise);
      exercise.fetch({
        error: function () { exercises.remove(exercise); }
      });
    }

    return exercise;
  }
});
