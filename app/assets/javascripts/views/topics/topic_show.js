CodeBytes.Views.TopicShow = Backbone.CompositeView.extend({
  template: JST["topics/topic_show"],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model.exercises(), "add", this.addExercise);
  },

  addExercise: function (exercise) {
    var exerciseView = new CodeBytes.Views.ExerciseShow({ model: exercise });
    this.addSubview(".exercise", exerciseView);
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
