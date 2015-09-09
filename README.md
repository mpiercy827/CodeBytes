# CodeBytes

[Live link][codebytes]

[codebytes]: http://www.codebytes.xyz

## Description
CodeBytes is an online learning community inspired by CodeAcademy where users can learn the basics of computer programming. CodeBytes provides a sleek browser IDE and terminal for users to interact with and get feedback in real time about their code.

Almost all of the functionality of the site is available to unregistered users, including access to the tutorials and course suggestions. Registered users are awarded with badges for course completions, which are checked automatically every time an exercise is completed.

## Key Features

* Offers a custom user authentication and registration system.
* Utilizes a multi-language Javascript interpreter to evaluate user code (currently in Ruby and Javascript).
* Provides a large collection of exercises and tutorials, with solutions for each exercise.
* Hits a custom Rails route for comparison of results of users' code and database solutions.
* Tracks course completions for registered users and awards badges.
* Allows users to suggest a new course.

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

### Upcoming Features
CodeBytes is still under construction. I plan on adding the following features to the app:
- [x] Allow anonymous users to access everything but badges
- [x] Show registered users which courses, topics and exercises they've completed
- [ ] Experiment with a language by using a sandbox terminal
- [ ] Multiple sessions/session management
- [ ] Password reset with email confirmation
