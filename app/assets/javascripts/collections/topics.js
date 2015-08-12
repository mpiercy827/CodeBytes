CodeBytes.Collections.Topics = Backbone.Collection.extend({
  url: "api/topics",

  model: CodeBytes.Models.Topic,

  getOrFetch: function (id) {
    var topics = this;
    var topic = topics.get(id);

    if (topic) {
      topic.fetch();
    } else {
      topic = new CodeBytes.Models.Topic({ id: id });
      topics.add(topic);
      topic.fetch({
        error: function () { topics.remove(topic) }
      });
    }

    return topic;
  }
});
