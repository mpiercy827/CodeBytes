CodeBytes.Views.ExerciseShow = Backbone.View.extend({
  template: JST["exercises/exercise_show"],

  className: "exercise-text",

  activeExercise: function () {
    return this.collection.at(this.activeIndex);
  },

  initialize: function (options) {
    this.activeIndex = options.activeIndex;
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'activate', this.makeActive);
  },

  makeActive: function (args) {
    var idx = args[0];
    this.activeIndex = idx;
    this.render();
  },

  render: function () {
    if (!this.activeExercise()) { return; }

    var content = this.template({
      exercises: this.collection,
      activeExercise: this.activeExercise()
    });

    this.$el.html(content);
    return this;
  }
});
