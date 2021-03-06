CodeBytes.Views.CourseShow = Backbone.CompositeView.extend({
  template: JST["courses/course_show"],

  className: "container course-show",

  events: {
    "click .topic-item": "showTopic"
  },

  initialize: function (options) {
    if (options.user) {
      this.user = options.user;
      this.listenTo(this.user, "sync", this.render);
    }
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model, "sync", this.setLang);
    this.listenTo(this.model.topics(), "add", this.addTopic);
    this.model.topics().each(this.addTopic.bind(this));
  },

  addTopic: function (topic) {
    var topicItemView = new CodeBytes.Views.TopicListItem({ model: topic, user: this.user });
    this.addSubview(".topics-list", topicItemView);
  },

  setLang: function () {
    CodeBytes.Interpreter.setNewLang(this.model);
  },

  render: function () {
    var content = this.template({ course: this.model, user: this.user });
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
