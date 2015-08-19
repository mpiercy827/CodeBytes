CodeBytes.Views.TopicShow = Backbone.CompositeView.extend({
  template: JST["topics/topic_show"],

  className: "container topic-show",

  events: {
    "click .exercise-list>li>a": "switchToExercise",
    "click .positive": "nextExerciseOrTopic",
    "submit": "evaluateCode"
  },

  initialize: function (options) {
    this.course = options.course;
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.course, "sync", this.setLang);
    this.addSubview(".interactive", new CodeBytes.Views.Editor({
      model: this.course
    }));
    this.addSubview(".interactive", new CodeBytes.Views.Terminal());
    this.addFirstExercise();
  },

  addFirstExercise: function () {
    var exerciseView = new CodeBytes.Views.ExerciseShow({
      activeIndex: 0,
      collection: this.model.exercises(),
      course: this.course
    });
    this.addSubview(".exercise", exerciseView);
  },

  clearEditorAndTerminal: function () {
    var editor = ace.edit("editor");
    editor.setValue("");
    CodeBytes.Terminal.empty();
    $(".feedback").empty();
  },

  evaluateCode: function (event) {
    event.preventDefault();
    var editor = ace.edit("editor");
    var code = editor.getValue();
    CodeBytes.Interpreter.eval(code);
  },

  setLang: function () {
    var course = this.course;
    var int = CodeBytes.Interpreter;

    if (course.has("language") && int.lang !== course.get("language")) {
      int.loadLanguage(course.get("language"));

      int.timeout.callback = function () {
        int.loadLanguage(course.get("language"));
        CodeBytes.Terminal.html("> Code Timed Out.");
        return true;
      };
    }
  },

  onRender: function () {
    CodeBytes.findTerminal();
  },

  nextExerciseOrTopic: function (event) {
    event.preventDefault();
    var nextIndex = $(".exercise-list").val();
    this.clearEditorAndTerminal();
    this.model.exercises().trigger("activate", [nextIndex]);
    $(event.currentTarget).remove();
  },

  switchToExercise: function (event) {
    event.preventDefault();
    var index = $(event.currentTarget).data("index");
    this.clearEditorAndTerminal();
    this.model.exercises().trigger("activate", [index]);
  },

  render: function () {
    var content = this.template({ topic: this.model });
    this.$el.html(content);
    this.attachSubviews();
    this.onRender();
    return this;
  }
});
