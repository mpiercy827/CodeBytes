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
        this one. Great for beginners!"
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

Exercise.create!(
  readings: "Follow the instructions!",
  instructions: "Enter the following command:\nputs 'Hello'\n5",
  topic_id: 1
)

Solution.create!(
  output: "Hello\n",
  result: "5",
  exercise_id: 1
)






###############################
# JAVASCRIPT COURSE SEED DATA #
###############################

Course.create!(
  title: "Javascript",
  language: "javascript",
  description: "Learn Javascript, a powerful language used on almost every web application you'll visit!"
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
