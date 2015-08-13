window.CodeBytes = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},

  InterpreterOptions: {},
  Interpreter: new JSREPL(CodeBytes.InterpreterOptions),

  initialize: function() {
    var courses = new CodeBytes.Collections.Courses();
    var topics = new CodeBytes.Collections.Topics();
    new CodeBytes.Routers.Router({
      courses: courses,
      topics: topics,
      $rootEl: $("#content")
    });
    Backbone.history.start();
  }
};

$(document).ready(function(){
  CodeBytes.initialize();
});
