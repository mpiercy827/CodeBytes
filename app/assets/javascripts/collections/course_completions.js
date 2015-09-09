CodeBytes.Collections.CourseCompletions = Backbone.Collection.extend({
  url: "api/course_completions",

  model: CodeBytes.Models.CourseCompletion,

  getOrFetch: function (id) {
    var comps = this;
    var cc = comps.get(id);

    if (!cc) {
      cc = new CodeBytes.Models.CourseCompletion({ id: id });
      comps.add(cc);
      cc.fetch({
        error: function () { comps.remove(cc); }
      });
    } else {
      cc.fetch();
    }

    return cc;
  }
});
