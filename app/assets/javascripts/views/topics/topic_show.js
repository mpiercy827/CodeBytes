CodeBytes.Views.TopicShow = Backbone.CompositeView.extend({
  template: JST["topics/topic_show"],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model.exercises(), "sync", this.addExercise);
    this.model.exercises().each(this.addExercise.bind(this));
  },

  addExercise: function (exercise) {
    // if (this.subviews(".exercise") != []) {
    //   var oldExerciseView = this.subviews(".exercise");
    //   oldExerciseView && oldExerciseView.remove();
    // }
    var exerciseView = new CodeBytes.Views.ExerciseShow({ model: exercise });
    debugger;
    this.addSubview(".exercise", exerciseView);
  },

  render: function () {
    var content = this.template({ topic: this.model });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }
});
