CodeBytes.Views.Editor = Backbone.View.extend({
  template: JST["interactive/editor"],

  tagName: "form",

  className: "editor-container",

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
  },

  onRender: function () {
    // This first line is needed for Ace Editor to load properly. It must
    // be able to find the #editor div on the page
    if ($("#editor").length === 0) { return; }

    var editor = ace.edit("editor");
    editor.setValue("");
    $("#editor > textarea").focus();
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
