window.CodeBytes = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var courses = new CodeBytes.Collections.Courses();
    new CodeBytes.Routers.Router({
      courses: courses,
      $rootEl: $("#content")
    });
    Backbone.history.start();
  }
};

$(document).ready(function(){
  CodeBytes.initialize();
});
