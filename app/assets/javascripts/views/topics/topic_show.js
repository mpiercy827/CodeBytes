CodeBytes.Views.TopicShow = Backbone.CompositeView.extend({
  template: JST["topics/topic_show"],

  events: {
    "change .exercise-list": "switchToExercise"
  },

  initialize: function (options) {
    this.course = options.course;
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.course, "sync", this.setLang);
    this.addFirstExercise();
  },

  addFirstExercise: function () {
    //This function will load the first exercise in a topic when the topic
    //Is first clicked. users can then navigate between exercises on the
    //Exercise show page.
    var exerciseView = new CodeBytes.Views.ExerciseShow({
      activeIndex: 0,
      collection: this.model.exercises()
    });
    this.addSubview(".exercise", exerciseView);
  },

  setLang: function () {
    var course = this.course;
    var int = CodeBytes.Interpreter;

    //If the interpreter's language isn't the current course's language,
    //this sets it correctly
    if (course.has("language") && int.lang !== course.get("language")) {
      int.loadLanguage(course.get("language"));
      //If the interpreter times out, this ensures that the correct
      //language is reset.
      int.timeout.callback = function () {
        int.loadLanguage(course.get("language"));
        CodeBytes.InterpreterElements.$terminal.html("> Code Timed Out.");
        return true;
      };
    }
  },

  switchToExercise: function (event) {
    // TODO: select the correct option from the event.
    this.model.exercises().trigger("activate", [1]);
  },

  render: function () {
    var content = this.template({ topic: this.model });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }
});
