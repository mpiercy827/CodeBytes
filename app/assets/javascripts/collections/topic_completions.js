CodeBytes.Collections.TopicCompletions = Backbone.Collection.extend({
  url: "api/topic_completions",

  model: CodeBytes.Models.TopicCompletion,

  getOrFetch: function (id) {
    var comps = this;
    var tc = comps.get(id);

    if (!tc) {
      tc = new CodeBytes.Models.TopicCompletion({ id: id });
      comps.add(tc);
      tc.fetch({
        error: function () { comps.remove(tc); }
      });
    } else {
      tc.fetch();
    }

    return tc;
  }
});
