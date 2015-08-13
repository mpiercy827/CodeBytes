CodeBytes.Views.TopicShow = Backbone.CompositeView.extend({
  template: JST["topics/topic_show"],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model.exercises(), "add", this.addFirstExercise);
  },

  addFirstExercise: function (exercise) {
    //This function will load the first exercise in a topic when the topic
    //Is first clicked. users can then navigate between exercises on the
    //Exercise show page.
    if (!this._exercise) {
      this._exercise = exercise;
      var exerciseView = new CodeBytes.Views.ExerciseShow({ model: this._exercise });
      this.addSubview(".exercise", exerciseView);
    }
  },

  switchToExercise: function (exercise) {

  },

  // activeExercise: function () {
  //   if (!this._active && this.model.exercises().length !== 0) {
  //     this._active = this.model.exercises().first();
  //   }
  //
  //   return this._active;
  // },
  //
  // makeActive: function (exercise) {
  //
  // },

  render: function () {

    var content = this.template({ topic: this.model });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }
});
