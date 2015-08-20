# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#########################
# RUBY COURSE SEED DATA #
#########################

Course.create!(
  title: "Ruby",
  language: "ruby",
  description: "An easy-to-learn language that can be used to make web apps like
        this one. Great for beginners!",
  image_location: "ruby.png"
)

###############
# RUBY TOPICS #
###############

Topic.create!(
  title: "Programming 101",
  description: "Make your very first computer program!",
  course_id: 1
  #id: 1
)

Topic.create!(
  title: "Variables and Data Types",
  description: "Learn how to use the building blocks of Ruby (and most other languages).",
  course_id: 1
  #id: 2
)

Topic.create!(
  title: "On One Condition...",
  description: "Control the flow of your programs with if/else and switch statements",
  course_id: 1
  #id: 3
)

Topic.create!(
  title: "Getting Loopy",
  description: "Avoid unnecessary repetition by using loops and iteration!",
  course_id: 1
  #id: 4
)

Topic.create!(
  title: "Methods & Returns",
  description: "Use functional programming to make your own Rock, Paper, Scissors Game!",
  course_id: 1
  #id: 5
)

Topic.create!(
  title: "Introduction to Objects",
  description: "Finish out the course by learning the basics of Object Oriented Programming in Ruby!",
  course_id: 1
  #id: 6
)

##############################
# RUBY EXERCISES & SOLUTIONS #
##############################

# Programming 101 Exercises #

Exercise.create!(
  title: "Hello World!",
  readings: "This is where the first greeting and readings will go.",
  instructions: "To complete this exercise, enter the following command:

                puts \"Hello World!\"",
  topic_id: 1
)

Solution.create!(
  output: "Hello World!\n",
  result: "nil",
  exercise_id: 1
)

Exercise.create!(
  title: "Array Basics",
  readings: "Here is the second exercise in the set for the topic (also to be completed).

              Follow the instructions below!",
  instructions: "To complete this exercise, enter the following command:

                [1, 2, 3, 4, 5].each { |el| puts el }",
  topic_id: 1
)

Solution.create!(
  output: "1\n2\n3\n4\n5\n",
  result: "[1, 2, 3, 4, 5]",
  exercise_id: 2
)

Exercise.create!(
  title: "Moo",
  readings: "This is the final exercise in the set. Complete it and click continue to move to the course show page.

              Follow the instructions below!",
  instructions: "Define a method that prints \"moo\" to the terminal and call it!",
  topic_id: 1
)

Solution.create!(
  output: "moo\n",
  result: "nil",
  exercise_id: 3
)

Exercise.create!(
  title: "Dummy Exercise",
  readings: "This (like the others) is a dummy exercise. Press submit code to continue.",
  instructions: "Don't enter anything, just submit the code!",
  topic_id: 2
)

Solution.create!(
  output: "",
  result: "nil",
  exercise_id: 4
)

Exercise.create!(
  title: "Dummy Exercise",
  readings: "This (like the others) is a dummy exercise. Press submit code to continue.",
  instructions: "Don't enter anything, just submit the code!",
  topic_id: 3
)

Solution.create!(
  output: "",
  result: "nil",
  exercise_id: 5
)

Exercise.create!(
  title: "Dummy Exercise",
  readings: "This (like the others) is a dummy exercise. Press submit code to continue.",
  instructions: "Don't enter anything, just submit the code!",
  topic_id: 4
)

Solution.create!(
  output: "",
  result: "nil",
  exercise_id: 6
)

Exercise.create!(
  title: "Dummy Exercise",
  readings: "This (like the others) is a dummy exercise. Press submit code to continue.",
  instructions: "Don't enter anything, just submit the code!",
  topic_id: 5
)

Solution.create!(
  output: "",
  result: "nil",
  exercise_id: 7
)

Exercise.create!(
  title: "Dummy Exercise",
  readings: "This (like the others) is a dummy exercise. Press submit code to continue.",
  instructions: "Don't enter anything, just submit the code!",
  topic_id: 6
)

Solution.create!(
  output: "",
  result: "nil",
  exercise_id: 8
)


###############################
# JAVASCRIPT COURSE SEED DATA #
###############################

Course.create!(
  title: "Javascript",
  language: "javascript",
  description: "Learn Javascript, a powerful language used on almost every web application you'll visit!",
  image_location: "js.png"
)

#####################
# JAVASCRIPT TOPICS #
#####################

Topic.create!(
  title: "A First Taste of Javascript",
  description: "Warm up to Javascript with this introductory tutorial.",
  course_id: 2
  #id: 7
)

Topic.create!(
  title: "Variables and Data Types",
  description: "Learn about all of the data types available to you as a Javascript programmer!",
  course_id: 2
  #id: 8
)

Topic.create!(
  title: "Conditionals",
  description: "Make your own browser based adventure game!",
  course_id: 2
  #id: 9
)

Topic.create!(
  title: "For and While Loops in JS",
  description: "Search for the needle in the haystack using loops!",
  course_id: 2
  #id: 10
)

Topic.create!(
  title: "Functions",
  description: "Learn all about Javascript functions.",
  course_id: 2
  #id: 11
)

Topic.create!(
  title: "Javascript Objects",
  description: "Learn the basics of objects in Javascript and complete the course!",
  course_id: 2
  #id: 12
)

####################################
# JAVASCRIPT EXERCISES & SOLUTIONS #
####################################


Exercise.create!(
  title: "Dummy Exercise",
  readings: "This is where the first greeting and readings will go for the javascript course.",
  instructions: "To complete this exercise, enter the following command:

                console.log(\"Hello World!\")",
  topic_id: 7
)

Solution.create!(
  output: "Hello World!\n",
  result: "",
  exercise_id: 9
)

Exercise.create!(
  title: "Dummy Exercise",
  readings: "Here is the second exercise in the set for the topic (also to be completed).

              Follow the instructions below!",
  instructions: "To complete this exercise, enter the following command:

                (function () { return 5 })();",
  topic_id: 7
)

Solution.create!(
  result: "5",
  output: "",
  exercise_id: 10
)

Exercise.create!(
  title: "Dummy Exercise",
  readings: "This is the final exercise in the set. Complete it and click continue to move to the course show page.

              Follow the instructions below!",
  instructions: "Define a method that prints \"moo\" to the terminal and call it!",
  topic_id: 7
)

Solution.create!(
  output: "moo\n",
  result: "",
  exercise_id: 11
)

Exercise.create!(
  title: "Dummy Exercise",
  readings: "This (like the others) is a dummy exercise. Press submit code to continue.",
  instructions: "Don't enter anything, just submit the code!",
  topic_id: 8
)

Solution.create!(
  result: "",
  output: "",
  exercise_id: 12
)

Exercise.create!(
  title: "Dummy Exercise",
  readings: "This (like the others) is a dummy exercise. Press submit code to continue.",
  instructions: "Don't enter anything, just submit the code!",
  topic_id: 9
)

Solution.create!(
  result: "",
  output: "",
  exercise_id: 13
)

Exercise.create!(
  title: "Dummy Exercise",
  readings: "This (like the others) is a dummy exercise. Press submit code to continue.",
  instructions: "Don't enter anything, just submit the code!",
  topic_id: 10
)

Solution.create!(
  result: "",
  output: "",
  exercise_id: 14
)

Exercise.create!(
  title: "Dummy Exercise",
  readings: "This (like the others) is a dummy exercise. Press submit code to continue.",
  instructions: "Don't enter anything, just submit the code!",
  topic_id: 11
)

Solution.create!(
  result: "",
  output: "",
  exercise_id: 15
)

Exercise.create!(
  title: "Dummy Exercise",
  readings: "This (like the others) is a dummy exercise. Press submit code to continue.",
  instructions: "Don't enter anything, just submit the code!",
  topic_id: 12
)

Solution.create!(
  result: "",
  output: "",
  exercise_id: 16
)


###########################
# PYTHON COURSE SEED DATA #
###########################

Course.create!(
  title: "Python",
  language: "python",
  description: "Another beginner-friendly programming language!",
  image_location: "python.png"
)

Course.create!(
  title: "Rails Authentication",
  language: "ruby",
  description: "Use Rails to make your own user sign-in/sign-up system!",
  image_location: "rails.png"
)
