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

ruby = Course.create!(
  title: "Ruby",
  language: "ruby",
  description: "An easy-to-learn language that can be used to make web apps like
        this one. Great for beginners!",
  image_location: "ruby.png"
)

########################################
# RUBY TOPICS, EXERCISES AND SOLUTIONS #
########################################

ruby_intro = Topic.create!(
  title: "Introduction to Ruby",
  description: "Learn the basics of the Ruby language in this simple tutorial!",
  course: ruby
)

ruby_intro1 = Exercise.create!(
  topic: ruby_intro,
  title: "Overview",
  readings: "Ruby is a powerful, easy-to-learn language you can use in web-development, to create simple games, and as part of the Ruby on Rails web framework (be sure to look out for our Rails course which will teach you the basics of web development!).

            There are several aspects of Ruby that make it such a popular language. Perhaps the most appealing is that Ruby was intentionally designed to be very easy to use, and looks a lot like regular English as a result! We will discuss more of the features as the course progresses, so for now, let's dive in!",
  instructions: "If you're ready to learn Ruby, click the submit button to begin!"
)

ruby_intro2 = Exercise.create!(
  topic: ruby_intro,
  title: "Hello, World!",
  readings: "Ruby, like all other programming languages, gives us a way to 'speak' with computers. Think of a program as a set of instructions that a computer will read and obey.

            The simplest instruction that we can tell a computer is to say something back to us. In Ruby, we can do this using the <i>puts</i> method:

            <b>puts \"I am a printed statement!\"</b>

            When the Ruby interpreter (the part of the computer that 'speaks' and understands Ruby) gets this line of code, it will print the words in quotes to the console.",
  instructions: "In the editor to the right, make your own <i>puts</i> statement that will print \"Hello World!\" to the console underneath the editor."
)

ruby_intro3 = Exercise.create!(
  topic: ruby_intro,
  title: "Data Types",
  readings: "In Ruby, there are several <i><u>data types</i></u> that we have access to. One of those data types is a <b>string</b>, which is a collection of one or more letters (we printed a string to the console in the last exercise). For example, both \"Hello There!\" and \"asdf\" are both strings.

            Another data type we can use is a <b>number</b>, which we are all familiar with. Numbers have all the familiar operations (addition, subtraction, etc.), which we will cover in the next exercise, and are used fairly often when programming, although you don't have to be a math genius to be a great programmer!

            The last data type we will talk about in this section is a <b>boolean</b>, which is a value that can only be <i>true</i> or <i>false</i>. We will get into this and even more data types in later topics.",
  instructions: "For now, let's use 'puts' to print the number 100 to the console."
)

ruby_intro4 = Exercise.create!(
  topic: ruby_intro,
  title: "Math",
  readings: "Now that we know we can use numbers in Ruby, we'd like to be able to add, subtract, multiply and divide them. You can do this the same way you would with pen and paper:

            Add: puts 1 + 1
            Subtract: puts 5 - 3
            Multiply: puts 4 * 4
            Divide: puts 49 / 7

            All we have to do is place one of the four symbols (+, -, *, /) between any two numbers and the result will be calculated.",
  instructions: "Use 'puts' to print the result of multiplying 117 by 4."
)

# ruby_intro5 = Exercise.create!(
#   topic: ruby_intro,
#   title: "Variables",
#   readings: "One very useful ",
#   instructions: ""
# )
#
# ruby_intro6 = Exercise.create!(
#   topic: ruby_intro,
#   title: "Simple Strings",
#   readings: "",
#   instructions: ""
# )

ruby_intro1_sol = Solution.create!(
  exercise: ruby_intro1,
  result: "nil",
  output: ""
)

ruby_intro2_sol = Solution.create!(
  exercise: ruby_intro2,
  result: "nil",
  output: "Hello World!\n"
)

ruby_intro3_sol = Solution.create!(
  exercise: ruby_intro3,
  result: "nil",
  output: "100\n"
)

ruby_intro4_sol = Solution.create!(
  exercise: ruby_intro4,
  result: "nil",
  output: "468\n"
)

# ruby_intro5_sol = Solution.create!(
#   exercise: ruby_intro2
# )
#
# ruby_intro6_sol = Solution.create!(
#   exercise: ruby_intro3
# )

########################################

#
# ruby_loops = Topic.create!(
#   title: "Introduction to Ruby",
#   description: "Learn the basics of the Ruby language in this simple tutorial and
#       why it is so popular!",
#   course: ruby
# )
#
# ruby_loops1 = Exercise.create!(
#   topic: ruby_loops,
#   title: "",
#   readings: "",
#   instructions: ""
# )
#
# ruby_loops2 = Exercise.create!(
#   topic: ruby_loops,
#   title: "",
#   readings: "",
#   instructions: ""
# )
#
# ruby_loops3 = Exercise.create!(
#   topic: ruby_loops,
#   title: "",
#   readings: "",
#   instructions: ""
# )
#
# ruby_loops1_sol = Solution.create!(
#   exercise: ruby_loops1
# )
#
# ruby_loops2_sol = Solution.create!(
#   exercise: ruby_loops2
# )
#
# ruby_loops3_sol = Solution.create!(
#   exercise: ruby_loops3
# )
