CodeBytes.Collections.Badges = Backbone.Collection.extend({
  url: "api/badges",

  model: CodeBytes.Models.Badge,

  getOrFetch: function (id) {
    var badges = this;
    var badge = badges.get(id);
    if (badge) {
      badge.fetch();
    } else {
      badge = new CodeBytes.Models.Badge({ id: id });
      badges.add(badge);
      badge.fetch({
        error: function () { badges.remove(badge) }
      });
    }

    return badge;
  }
});
