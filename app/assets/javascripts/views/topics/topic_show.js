CodeBytes.Views.TopicShow = Backbone.CompositeView.extend({
  template: JST["topics/topic_show"],

  events: {
    "change .exercise-list": "switchToExercise"
  },

  initialize: function (options) {
    this.course = options.course;
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.course, "sync", this.setLang);
    this.listenTo(this.model.exercises(), "add", this.addFirstExercise);
  },

  addFirstExercise: function (exercise) {
    //This function will load the first exercise in a topic when the topic
    //Is first clicked. users can then navigate between exercises on the
    //Exercise show page.
    if (!this._activeExercise) {
      this._activeExercise = exercise;
      var exerciseView = new CodeBytes.Views.ExerciseShow({
        collection: this.model.exercises(),
        model: this._activeExercise
      });
      this.addSubview(".exercise", exerciseView);
    }
  },

  setLang: function () {
    if (this.course.has("language") &&
          CodeBytes.Interpreter.lang !== this.course.get("language")) {
      CodeBytes.Interpreter.loadLanguage(this.course.get("language"));
    }
  },

  switchToExercise: function (exercise) {
    alert("You switched to another exercise!");
  },

  render: function () {
    var content = this.template({ topic: this.model });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }
});
