CodeBytes.Views.ExerciseShow = Backbone.View.extend({
  template: JST["exercises/exercise_show"],

  render: function () {
    var content = this.template({ exercise: this.model });
    this.$el.html(content);
    return this;
  }
});
