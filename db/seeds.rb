# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.create!(
  title: "Ruby",
  language: "ruby",
  description: "An easy-to-learn language that can be used to make web apps like
        this one. Great for beginners!"
)

#####################################################

Topic.create!(
  title: "Hello World!",
  description: "Make your very first computer program",
  course_id: 1
)

Exercise.create!(
  readings: "Follow the instructions!",
  instructions: "Enter the following command:\nputs 5\n'Hello'",
  topic_id: 1
)

Solution.create!(
  output: "5",
  result: "Hello",
  exercise_id: 1
)

Exercise.create!(
  readings: "Do whatever you want now!",
  instructions: "You are now a master programmer!",
  topic_id: 1
)

#####################################################

Topic.create!(
  title: "Data Types",
  description: "Make your second program!",
  course_id: 1
)

Exercise.create!(
  readings: "Follow the instructions!",
  instructions: "Enter the following command:\nputs 5\n'Hello'",
  topic_id: 2
)

Solution.create!(
  output: "5",
  result: "Hello",
  exercise_id: 3
)

#####################################################

Topic.create!(
  title: "Make Google",
  description: "Using what you've learned in the last 2 sections, make Google.",
  course_id: 1
)

Exercise.create!(
  readings: "Follow the instructions!",
  instructions: "Enter the following command:\nputs 5\n'Hello'",
  topic_id: 3
)

Solution.create!(
  output: "5",
  result: "Hello",
  exercise_id: 4
)

#####################################################

Course.create!(
  title: "Javascript",
  language: "javascript",
  description: "Create dynamic content in your webpages using Javascript!"
)

#####################################################

Topic.create!(
  title: "Hello World!",
  description: "Write a simple program in Javascript.",
  course_id: 2
)

Exercise.create!(
  readings: "Follow the instructions!",
  instructions: "Enter the following command:\n(function(){return 5})();",
  topic_id: 4
)

#####################################################

Topic.create!(
  title: "Backbone",
  description: "Duplicate Backbone.js using what you've learned in the first lesson",
  course_id: 2
)

Exercise.create!(
  readings: "Follow the instructions!",
  instructions: "Enter the following command:\n(function(){return 5})();",
  topic_id: 5
)

#####################################################

Topic.create!(
  title: "C",
  description: "Write the C programming language using Javascript",
  course_id: 2
)

Exercise.create!(
  readings: "Follow the instructions!",
  instructions: "Enter the following command:\n(function(){return 5})();",
  topic_id: 6
)
