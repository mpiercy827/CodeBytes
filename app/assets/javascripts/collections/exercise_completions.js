CodeBytes.Collections.ExerciseCompletions = Backbone.Collection.extend({
  url: "api/exercise_completions",

  model: CodeBytes.Models.ExerciseCompletion,

  getOrFetch: function (id) {
    var comps = this;
    var ec = comps.get(id);

    if (!ec) {
      ec = new CodeBytes.Models.ExerciseCompletion({ id: id });
      comps.add(ec);
      ec.fetch({
        error: function () { comps.remove(ec); }
      });
    } else {
      ec.fetch();
    }

    return ec;
  }
});
