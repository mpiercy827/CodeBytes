# CodeBytes

[Heroku link][heroku]

[heroku]: http://codebytes.herokuapp.com

## Minimum Viable Product
CodeBytes is an online learning community inspired by CodeAcademy where users can learn the basics of computer programming. Users can:

<!-- This is a Markdown checklist. Use it to keep track of your progress! -->

- [x] Create accounts
- [x] Create sessions (log in)
- [x] View courses
- [x] View topics (within each course)
- [x] View exercises in each topic
- [x] Use an interactive terminal to complete exercises
- [x] Earn badges for completing courses
- [x] View badges on their profile (and other users' profiles)
- [ ] Suggest topics/languages for new courses

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, Viewing Courses (~1 day)
During the first phase of the project, I will be implementing a user
authentication system in Rails based on the approach learned at App Academy. By
the end of this phase, I will have also constructed an API that sends JSON data
to Backbone, which will use models and collections to fetch this data and allow
users to view the available courses. The app at this stage will then be pushed
to Heroku before moving on.

[Details][phase-one]

### Phase 2: Creating an Interactive Terminal (~3 days)
At the core of the app, this phase will be focused on the development of an
interactive page that users use to complete exercises. Taking place on the
'TopicShow' page, there will be a text editor subview where users enter their
code, as well as a console subview that displays the code after it has been run.
By the end of this phase, users will be able to write and get interactive
feedback about their own code.

[Details][phase-two]

### Phase 3: Viewing Topics and Exercises (~1-2 days)
After allowing users to view courses on the landing page and finishing the
terminal, I will then add the 'CourseShow' pages as well as the 'TopicShow'
pages, where users will complete exercises. By the end of the phase, users will
be able to view exercises for a given course.

[Details][phase-three]

### Phase 4: User Badges for Course Completion (~2 days)
Now that users are able to complete exercises and entire courses, I will add the
functionality that allows them to be rewarded with badges when they do so. These
badges will be displayed on their profile page, where they can proudly show off
their newly acquired coding skills!

[Details][phase-four]

### Phase 5: Styling and Course Suggestion (~1 days)
Lastly, I will work create a modal that allows a user to suggest a course, and
focus on styling the app to be responsive and user friendly. By the end of this
phase, the minimum viable product should be complete and ready for bonus features!

[Details][phase-five]

### Bonus Features (TBD)
- [x] Allow anonymous users to access everything but badges
- [ ] Show registered users which courses, topics and exercises they've completed
- [ ] Experiment with a language by using a sandbox terminal
- [ ] Multiple sessions/session management
- [ ] Password reset with email confirmation
- [ ] Allow users to create courses

[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
