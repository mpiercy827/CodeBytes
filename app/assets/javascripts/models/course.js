CodeBytes.Models.Course = Backbone.Model.extend({
  urlRoot: "/api/courses",

  parse: function (data) {

  },

  topics: function () {
    if (!this._topics) {
      this._topics = new CodeBytes.Collections.Topics();
    }

    return this._topics
  }
});
