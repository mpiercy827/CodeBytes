CodeBytes.Models.Course = Backbone.Model.extend({
  urlRoot: "/api/courses",

  parse: function (data) {
    if (data.topics) {
      this.topics().set(data.topics);
      delete data.topics;
    }

    return data;
  },

  topics: function () {
    if (!this._topics) {
      this._topics = new CodeBytes.Collections.Topics();
    }

    return this._topics
  }
});
