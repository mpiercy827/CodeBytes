CodeBytes.Views.ExerciseShow = Backbone.View.extend({
  template: JST["exercises/exercise_show"],

  className: "exercise-text",

  render: function () {
    var content = this.template({
      exercises: this.collection.models,
      activeExercise: this.model
    });
    this.$el.html(content);
    return this;
  }
});
