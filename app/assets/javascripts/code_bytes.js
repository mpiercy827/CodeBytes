window.CodeBytes = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    CodeBytes.resetInterpreterElements();

    var courses = new CodeBytes.Collections.Courses();
    var topics = new CodeBytes.Collections.Topics();
    
    new CodeBytes.Routers.Router({
      courses: courses,
      topics: topics,
      $rootEl: $("#content")
    });
    Backbone.history.start();
  },

  resetInterpreterElements: function () {
    CodeBytes.InterpreterElements = {
      $textEditor: $(".text-editor"),
      $editor: $(".editor"),
      $terminal: $(".terminal"),
    };
  }
};

$(document).ready(function(){
  CodeBytes.initialize();
});
