CodeBytes.Views.CourseShow = Backbone.CompositeView.extend({
  template: JST["courses/course_show"],

  events: {
    "click .topic-item": "showTopic"
  },

  initialize: function () {
    CodeBytes.Interpreter.loadLanguage(this.model.get("language"));
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model.topics(), "add", this.addTopic);
    this.model.topics().each(this.addTopic.bind(this));
  },

  addTopic: function (topic) {
    var topicItemView = new CodeBytes.Views.TopicListItem({ model: topic });
    this.addSubview(".topics-list", topicItemView);
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
