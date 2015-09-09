CodeBytes.Views.TopicShow = Backbone.CompositeView.extend({
  template: JST["topics/topic_show"],

  className: "container topic-show",

  events: {
    "click .exercise-list>li>a": "switchToExercise",
    "click .positive": "nextExerciseOrTopic",
    "click .negative": "removeAlert",
    "submit": "evaluateCode"
  },

  initialize: function (options) {
    if (options.user) {
      this.user = options.user;
      this.listenTo(this.user, "sync", this.render);
    }
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
      course: this.course,
      user: this.user
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
    $(event.currentTarget).find(".submit-code").blur();
    var editor = ace.edit("editor");
    var code = editor.getValue();

    CodeBytes.Interpreter.eval(code);
  },

  setLang: function () {
    CodeBytes.Interpreter.setNewLang(this.course);
  },

  onRender: function () {
    CodeBytes.findTerminal();
  },

  nextExerciseOrTopic: function (event) {
    event.preventDefault();
    var currExId = CodeBytes.UserResults.exercise_id;
    var $currEx = $(".exercise-list a[data-id=" + currExId + "]");
    var nextIndex = $currEx.data("index") + 1;

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

  removeAlert: function (event) {
    event.preventDefault();
    $(event.currentTarget).remove();
  },

  render: function () {
    var content = this.template({ topic: this.model, user: this.user });
    this.$el.html(content);
    this.attachSubviews();
    this.onRender();
    return this;
  }
});
