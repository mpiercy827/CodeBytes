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

# Programming 101 Exercises #

Exercise.create!(
  readings:   "Welcome to the CodeBytes Ruby course! If this is your first time programming or your first time using Ruby, you're in the right place! Ruby is a very easy-to-learn language, and a very powerful one as well. It can be used to make web applications, just like this one!

              To warm up to Ruby, we are going to make a simple one line program. Simply follow the instructions below and press submit to continue!",
  instructions: "Enter the following command:\n\nputs \"Hello World!\"",
  topic_id: 1
)

Solution.create!(
  output: "Hello World!\n",
  exercise_id: 1
)

Exercise.create!(
  readings:   "Nice work! You may have a good idea what 'puts' does after the last exercise. It simply takes whatever follows it and prints it in the terminal ('puts' is short for put string).

              You may also be wondering what that 'nil' means under the message we printed. Don't worry about that for now, but we will come back to it when we discuss methods and return values. For now, all we'll worry about is using puts.

              You can print multiple statements on multiple lines, and they will all show up in the terminal. Try it yourself!",
  instructions: "Print two statements on separate lines. On the first, print
                \"I'm ready...\" and on the second, pring \"to learn some Ruby!\"",
  topic_id: 1
)

Solution.create!(
  output: "I'm ready...\nto learn some Ruby!\n",
  exercise_id: 2
)

# Variables and Data Types Exercises #

Exercise.create!(
  readings:   "All we've been doing so far is printing messages to the screen, and there is a lot more to programming than that. Here we will begin to really dive in to the basics of programming.

              Something you'll see across all programming languages is the ability to assign variables. A variable is just another name we give to a number (or another data type as we will soon see). For example, if we write:

              x = 5

              we have assigned a variable x to the number five. We can now use this variable throughout the rest of our program, like so:

              puts x

              As a result, we will see 5 as the output in the terminal. One important thing to note is that we always put the name of the variable on the left-hand side of the equals sign. The statement 5 = x would give us an error.

              While all this variable assignment might not seem too useful right now, we will quickly see that assigning variables is a great way to keep track of special values in our program.",
  instructions: "Assign a variable (you can name it whatever you like) to the number 1000, then print the variable (not the number!) to the terminal.",
  topic_id: 2
)

Solution.create!(
  output: "1000\n",
  exercise_id: 3
)

Exercise.create!(
  readings:   "You might be wondering if variables can only be assigned to numbers. The short answer is no! A variable can be assigned to anything, even another variable, like so:

              x = 5
              y = x
              puts y # => 5

              To see what other things can be assigned to a variable, we have to learn about different data types. We have already seen two types of data in our exercises so far: numbers and strings (words/characters enclosed by quotations). We'll take a look at numbers first.

              Numbers in Ruby (and in other languages) have the standard operations of addition (+), subtraction (-), multiplication (*), and division (/) defined on them. So if we write:

              puts 111 * 111

              we will see 12321 in the terminal.",
  instructions: "On three seperate lines, print the values of 60 divided by 5, 117 plus 843, and 10 minus 36 (use the operations mentioned above!)",
  topic_id: 2
)

Solution.create!(
  output: "12\n960\n-26",
  exercise_id: 4
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
