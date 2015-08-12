CodeBytes.Views.TopicShow = Backbone.CompositeView.extend({
  template: JST["topics/topic_show"],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
    debugger;
  },

  render: function () {
    var content = this.template({ topic: this.model });
    this.$el.html(content);
    return this;
  }
});
