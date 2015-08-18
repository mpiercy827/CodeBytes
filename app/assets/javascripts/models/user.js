CodeBytes.Models.User = Backbone.Model.extend({
  urlRoot: "api/profile",

  badges: function () {
    if (!this._badges) {
      this._badges = [];
    }

    return this._badges;
  },

  parse: function (data) {
    if (data.badges) {
      this.badges().set(data.badges);
      delete data.badges;
    }

    return data;
  }
});
