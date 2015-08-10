# Phase 1: User Authentication, Viewing Courses

## Rails
### Models
* User
* Course

### Controllers
* UsersController (create, new)
* SessionsController (create, new, destroy)
* Api::CoursesController (index)

### Views
* users/new.html.erb
* session/new.html.erb
* courses/index.json.jbuilder

## Backbone
### Models
* Course

### Collections
* Courses

### Views
* CoursesIndex (composite view; contains CoursesIndexItem subviews)
* CoursesIndexItem

## Gems/Libraries
