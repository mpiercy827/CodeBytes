CodeBytes.Models.Topic = Backbone.Model.extend({
  urlRoot: "api/topics",

  parse: function (data) {
    if (data.exercises) {
      this.exercises().set(data.exercises);
      delete data.exercises;
    }

    return data;
  },

  exercises: function () {
    if (!this._exercises) {
      this._exercises = new CodeBytes.Collections.Exercises();
    }

    return this._exercises;
  }
});
