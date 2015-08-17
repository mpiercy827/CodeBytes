CodeBytes.Views.ExerciseShow = Backbone.View.extend({
  template: JST["exercises/exercise_show"],

  className: "exercise-text",

  activeExercise: function () {
    return this.collection.at(this.activeIndex);
  },

  initialize: function (options) {
    this.activeIndex = options.activeIndex;
    this.course = options.course;
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'activate', this.makeActive);
  },

  makeActive: function (args) {
    var index = args[0];
    this.activeIndex = index;
    if (this.activeExercise()) {
      this.render();
    } else {
      Backbone.history.navigate("/courses/" + this.course.id, {trigger: true});
    }
  },

  onRender: function () {
    CodeBytes.UserResults = {};
    CodeBytes.UserResults.exercise_id = this.activeExercise().id;
  },

  render: function () {
    if (!this.activeExercise()) { return; }
    var content = this.template({
      exercises: this.collection,
      activeExercise: this.activeExercise(),
      course: this.course
    });

    this.$el.html(content);
    this.onRender();
    return this;
  }
});
