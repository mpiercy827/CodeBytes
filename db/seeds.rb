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
  image_location: "ruby.png",
  badge_image_location: "ruby_badge.png"
)

########################################
# RUBY TOPICS, EXERCISES AND SOLUTIONS #
########################################

ruby_intro = Topic.create!(
  title: "Programming Basics",
  description: "Learn the basics of the Ruby programming language in this intro tutorial!",
  course: ruby
)

ruby_intro1 = Exercise.create!(
  topic: ruby_intro,
  title: "Overview",
  readings: "Ruby is a very simple, easy-to-learn programming language that is a great for beginning programmers and experienced developers alike. It is often used in Ruby on Rails, a web development framework that is used to build awesome web applications like Basecamp, Kickstarter, and CodeBytes.

            So whether you're looking to dive into web development or just starting to program, Ruby is an excellent language to learn! This course will focus on the basics of the language as well as fundamental programming concepts.",
  instructions: "If you're ready to learn Ruby, click the submit button to begin!"
)

ruby_intro2 = Exercise.create!(
  topic: ruby_intro,
  title: "Hello, World!",
  readings: "Ruby, like all other computer languages, gives us a way to communicate a set of instructions to computers that we want to be executed. One of the first things than many programmers do is write a simple program that prints a message to the screen.

            To honor that tradition, we are going to use the Ruby 'puts' method to make our first program. Here is an example of how it is used:

            <div class=\"sample\">puts \"Programming is awesome!\" <span class=\"sample-result\"># \"Programming is awesome!\"</span></div>

            In the example above, puts takes the string (the message in quotes) and prints it. It's as simple as that!",
  instructions: "In the editor to the right, make your own <i>puts</i> statement that will print \"Hello World!\" to the console underneath the editor. (Hint: Make sure to pay attention to capitalization!)"
)

ruby_intro3 = Exercise.create!(
  topic: ruby_intro,
  title: "Strings",
  readings: "In the last exercise, we printed a string, which is simply a collection of letters, numbers, and symbols surrounded by double or single quotes, to the console. Before we move on to some of the other types of data Ruby can work with, let's check out some of the cool things we can do with strings.

              Ruby has a lot of different ways of manipulating strings. For example, we can reverse a string like so:

              <div class=\"sample\">puts \"Whoa...\".reverse <span class=\"sample-result\"># \"...aohW\"</span></div>

              By simply tacking a '.reverse' on to the end of our string, we can reverse it. Other useful methods include '.upcase', which capitalizes every character in a string, '.downcase', which sets every character in lower case, and '.capitalize', which capitalizes the first character of the string. All of these methods are called that same way, by adding them to the end of the string.",
  instructions: "Let's use 'puts' and '.upcase' to print an uppercase version of the string \"i'm learning ruby!\" to the console."
)

ruby_intro4 = Exercise.create!(
  topic: ruby_intro,
  title: "Numbers",
  readings: "In addition to strings, Ruby also lets us work with numbers. While strings need to be surrounded by quotes, numbers do not. This means if we wanted to print the number 1000 to the console, it would be as easy as:

            <div class=\"sample\">puts 1000 <span class=\"sample-result\"># \"1000\"</span></div>

            But we can do more than simply print numbers to the screen. Ruby gives us the ability to add, subtract, multiply and divide numbers as well. We can do this just like we would on paper:

            <div class=\"sample\">puts 1 + 1 <span class=\"sample-result\"># 2</span></div>
            <div class=\"sample\">puts 15 - 6 <span class=\"sample-result\"># 9</span></div>
            <div class=\"sample\">puts 4 * 4 <span class=\"sample-result\"># 16</span></div>
            <div class=\"sample\">puts 49 / 7<span class=\"sample-result\"># 7</span></div>",
  instructions: "Use 'puts' to print the result of multiplying 117 by 4."
)

ruby_intro5 = Exercise.create!(
  topic: ruby_intro,
  title: "More Numbers",
  readings: "Now that we know we can work with numbers in Ruby, we might try to do something like 5 / 2. If we did this on a calculator, we would get 2.5, which is what we would expect from Ruby:

            <div class=\"sample\">puts 5 / 2 <span class=\"sample-result\"># 2</span></div>

            What?! This may seem a little strange at first, but we can get the result we want like so:

            <div class=\"sample\">puts 5 / 2.0 <span class=\"sample-result\"># 2.5</span></div>

            If we want Ruby to give us decimals, we have to use decimals in the expression we type. To see what was going on in the first example, we will introduce the <i>modulo</i> operator ( % ). While you might not be too familiar with this, an example might be able to clarify it:

            <div class=\"sample\">puts 5 / 2 <span class=\"sample-result\"># 2</span></div>
            <div class=\"sample\">puts 5 % 2 <span class=\"sample-result\"># 1</span></div>


            When we divide 5 by 2, we get 2 with a remainder of 1. So a % b gives us the remainder when a is divided by b (no decimals are used). It's ok if this is a bit confusing now, it should hopefully become a bit more clear with practice!",
  instructions: "Use 'puts' and the modulo operator (%) to find the remainder when 100 is divided by 7."
)

ruby_intro6 = Exercise.create!(
  topic: ruby_intro,
  title: "Variables",
  readings: "Before we take a look at one more data type in this section, it will be worth our while to discuss variables. You may or may not be familiar with the concept of a variable, but a variable is essentially a name we give to some value so we can refer to it later.

            Say, for example, we know that we will be using the string \"I love programming!\" a lot in our program. Instead of having to write that out over and over again, we can assign it to a variable like so:

            <div class=\"sample\">my_string = \"I love programming!\"</div>

            The name on the left is what we will refer to the string as later in our program, and it can be anything you like! Now if we wanted to print this string to the console:

            <div class=\"sample\">puts my_string <span class=\"sample-result\"># \"I love programming!\"</span></div>

            Note that like numbers, we don't have to put quotes around the name of a variable.",
  instructions: "Create a variable called my_cool_variable and set it equal to the string \"My First Ruby Variable!\". Then print it to the console using 'puts'."
)

ruby_intro7 = Exercise.create!(
  topic: ruby_intro,
  title: "Booleans",
  readings: "The last data type we will focus on in this section is the boolean. A boolean is a value that can only be 'true' or 'false'. We will use these a lot more in future sections of the course. We can assign booleans to variables just like numbers or strings:

            <div class=\"sample\">my_boolean = true</div>

            We could then use this throughout our program. Say we wanted to check if two values are equal, and get true or false as our result. We can't use '=', because that is how we assign variables. The way we get around this is by using '=='. For example:

            <div class=\"sample\">puts (16/8) == 2 <span class=\"sample-result\"># true</span></div>

            When we use '==', if the value on the left is equal to the value on the right, we will get true as a result. If they are not equal, we will get false.",
  instructions: "Using '==' and puts, check whether (884 / 13) is equal to 68 and print the result to the console."
)

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
  output: "I'M LEARNING RUBY!\n"
)

ruby_intro4_sol = Solution.create!(
  exercise: ruby_intro4,
  result: "nil",
  output: "468\n"
)

ruby_intro5_sol = Solution.create!(
  exercise: ruby_intro5,
  result: "nil",
  output: "2\n"
)

ruby_intro6_sol = Solution.create!(
  exercise: ruby_intro6,
  result: "nil",
  output: "My First Ruby Variable!\n"
)

ruby_intro7_sol = Solution.create!(
  exercise: ruby_intro7,
  result: "nil",
  output: "true\n"
)

########################################


# ruby_loops = Topic.create!(
#   title: "Loops and Iteration",
#   description: "",
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

###############################
# JAVASCRIPT COURSE SEED DATA #
###############################

javascript = Course.create!(
  title: "Javascript",
  language: "javascript",
  description: "Learn one of the most widely-used languages for web development!",
  image_location: "js.png",
  badge_image_location: "js_badge.png"
)

##############
# DEMO USERS #
##############

ada = User.create!(
  email: "ada.lovelace@gmail.com",
  password: "first!"
)

alan = User.create!(
  email: "alan.turing@gmail.com",
  password: "enigma"
)

CourseCompletion.create!(course: ruby, user: ada)
CourseCompletion.create!(course: javascript, user: alan)
