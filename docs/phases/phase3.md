# Phase 3: Viewing Topics and Exercises

## Rails
### Models
* Topic
* Exercise
* Solution

### Controllers
Api::CoursesController (show)
Api::TopicsController (show)
Api::ExercisesController (show, check)

### Views
* courses/show.json.jbuilder
* topics/show.json.jbuilder
* exercises/show.json.jbuilder

## Backbone
### Models
* Topic
* Exercise

### Collections
* Topics
* Exercises

### Views
* CourseShow (composite view; contains TopicsItem subviews)
* TopicsItem
* TopicShow (composite view; contains ExerciseShow, Editor and Console subviews)
* ExerciseShow
* Feedback

## Gems/Libraries
