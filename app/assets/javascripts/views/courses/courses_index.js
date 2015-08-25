CodeBytes.Views.CoursesIndex = Backbone.CompositeView.extend({
  template: JST["courses/courses_index"],

  events: {
    "click .course-item": "showCourse",
    "click .suggest": "courseSuggestion"
  },

  initialize: function (options) {
    this.listenTo(this.collection, "sync", this.render);
    this.listenTo(this.collection, "add", this.addCourseItem);
    this.collection.each(this.addCourseItem.bind(this));
  },

  addCourseItem: function (course) {
    var courseItemView = new CodeBytes.Views.CoursesIndexItem({ model: course });
    this.addSubview(".courses-list", courseItemView);
  },

  courseSuggestion: function (event) {
    event.preventDefault();
    var suggestForm = new CodeBytes.Views.SuggestCourse();
    $("body").append(suggestForm.render().$el);
    $(".suggestion-form").dialog({
      width: 500,
      modal: true,
      title: "Suggest A Course for CodeBytes",
      buttons: [
    		{
    			text: "Submit Suggestion",
    			click: function() {
            var $alert = $("<div>")
                            .addClass("alert")
                            .addClass("alert-success")
                            .text("Your suggestion has been received!");

            $(".suggestion-form").html($alert);
            $(".ui-dialog-buttonpane").remove();
            var that = this;
            
            setTimeout(function () {
        				$( that ).dialog( "close" );
                $( that ).dialog( "destroy" );
                suggestForm.remove();
              }, 2000);
    			}
    		},
    		{
    			text: "Cancel",
    			click: function() {
    				$( this ).dialog( "close" );
            $( this ).dialog( "destroy" );
            suggestForm.remove();
    			}
    		}
    	]
    });
  },

  render: function () {
    var content = this.template({ courses: this.collection });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  },

  showCourse: function (event) {
    event.preventDefault();
    var id = $(event.currentTarget).data("course-id");
    Backbone.history.navigate("courses/"+id, {trigger: true});
  }
});
