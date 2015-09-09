CodeBytes.Views.TopicListItem = Backbone.View.extend({
  template: JST["topics/topic_list_item"],

  className: "topic-item",

  tagName: "li",

  initialize: function (options) {
    if (options.user) {
      this.user = options.user;
      this.listenTo(this.user, "sync", this.render);
    }
  },

  render: function () {
    var content = this.template({ topic: this.model, user: this.user });
    this.$el.attr("data-topic-id", this.model.id);
    this.$el.html(content);
    return this;
  }
});
