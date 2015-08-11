CodeBytes.Routers.Router = Backbone.Router.extend({
  routes: {

  },

  initialize: function (options) {
    this.courses = options.courses;
    this.$rootEl = options.$rootEl;
  },

  _swapView: function (view) {
    this._view && this._view.remove();
    this._view = view;
    this.$rootEl.html(view.render().$el);
  }
});
