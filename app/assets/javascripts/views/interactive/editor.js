CodeBytes.Views.Editor = Backbone.View.extend({
  template: JST["interactive/editor"],

  tagName: "form",

  className: "editor-container",

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
  },

  onRender: function () {
    if ($("#editor").length === 0) { return; }

    var editor = ace.edit("editor");
    editor.setTheme("ace/theme/monokai");
    editor.getSession().setMode("ace/mode/" + this.model.get("language"));
  },

  render: function () {
    if (!this.model.get("language")) { return; }
    
    this.$el.html(this.template());
    this.onRender();
    return this;
  }
});
