CodeBytes.Views.TopicListItem = Backbone.View.extend({
  template: JST["topics/topic_list_item"],

  className: "topic-item",

  tagName: "li",

  render: function () {
    var content = this.template({ topic: this.model });
    this.$el.attr("data-topic-id", this.model.id);
    this.$el.html(content);
    return this;
  }
});
