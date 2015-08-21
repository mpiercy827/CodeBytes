window.CodeBytes = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    CodeBytes.findTerminal();

    var courses = new CodeBytes.Collections.Courses();
    var topics = new CodeBytes.Collections.Topics();

    new CodeBytes.Routers.Router({
      courses: courses,
      topics: topics,
      $rootEl: $("#content")
    });
    Backbone.history.start();
  },

  findTerminal: function () {
    CodeBytes.Terminal = $(".terminal");
  },

  submitCodeActivate: function () {
    CodeBytes.LangLoaded = true;
    $(".submit-code").prop("disabled", false);
  }
};

$(document).ready(function(){
  CodeBytes.initialize();
});
