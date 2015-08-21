CodeBytes.Views.CourseShow = Backbone.CompositeView.extend({
  template: JST["courses/course_show"],

  className: "container course-show",

  events: {
    "click .topic-item": "showTopic"
  },

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model, "sync", this.setLang);
    this.listenTo(this.model.topics(), "add", this.addTopic);
    this.model.topics().each(this.addTopic.bind(this));
  },

  addTopic: function (topic) {
    var topicItemView = new CodeBytes.Views.TopicListItem({ model: topic });
    this.addSubview(".topics-list", topicItemView);
  },

  setLang: function () {
    var course = this.model;
    var int = CodeBytes.Interpreter;

    //If the interpreter's language isn't the current course's language,
    //this sets it correctly
    if (course.has("language") && int.lang !== course.get("language")) {
      int.loadLanguage(course.get("language"), function () {
        console.log("language loaded");
      });
      //If the interpreter times out, this ensures that the correct
      //language is reset.
      int.timeout.time = 5000;
      int.timeout.callback = function () {
        int.loadLanguage(course.get("language"));
        CodeBytes.Terminal.html("> Code Timed Out.");
        return true;
      };
    }
  },

  render: function () {
    var content = this.template({ course: this.model });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  },

  showTopic: function (event) {
    event.preventDefault();
    var id = $(event.currentTarget).data("topic-id");
    Backbone.history.navigate(
      "courses/" + this.model.id + "/topics/" + id,
      {trigger: true}
    );
  }
});
