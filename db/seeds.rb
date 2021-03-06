# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
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

javascript_intro = Topic.create!(
  course: javascript,
  title: "Introduction to Javascript",
  description: "Cover the basics of Javascript and learn one of the most popular programming languages!"
)

javascript_intro1 = Exercise.create!(
  topic: javascript_intro,
  title: "Overview",
  readings: "Javascript is one of the most widely used languages on the web, and is a very powerful tool for creating web applications, games, animations, and almost anything else you can think of!

            In this tutorial, we are going to cover the basics of the language in a few short exercises. If you would like to learn Javascript in greater depth, visit <a href=\"http://www.codecademy.com\">Codecademy</a>.

            We will start this tutorial by introducing the 'console.log' function, which is very similar to the 'puts' method in Ruby:

            <div class=\"sample\">console.log(\"Hello\");<div class='sample-result'># Hello</div></div>

            console.log accepts a string as an argument, and prints that to the console.",
  instructions: "Use the 'console.log' function to log \"I'm ready!\" to the console and continue!"
)

javascript_intro1sol = Solution.create!(
  exercise: javascript_intro1,
  result: "",
  output: "I'm ready!\n"
)

javascript_intro2 = Exercise.create!(
  topic: javascript_intro,
  title: "Variables",
  readings: "Declaring variables in Javascript is very similar to declaring variables in Ruby. A variable is simply a name for a value that we may want to use several times throughout our program. The syntax of Javascript is different from Ruby's, so this looks a little different:

            <div class=\"sample\">var message = \"This is a variable!\";<br>console.log(message);<div class='sample-result'># \"This is a variable!\"</div></div>

            It is important to note that we must use the 'var' keyword to signify that we are assigning a variable. Now, the variable 'message' can be used throughout the rest of our program!",
  instructions: "Assign a variable to the number 1000, and log the variable to the console."
)

javascript_intro2sol = Solution.create!(
  exercise: javascript_intro2,
  result: "",
  output: "1000\n"
)

javascript_intro3 = Exercise.create!(
  topic: javascript_intro,
  title: "Functions",
  readings: "Just like we could define methods in Ruby, we can also define <i>functions</i> in Javascript. Here is an example that we will look at more closely:

            <div class=\"sample\">var my_function = function (name) {<br>&nbsp;&nbsp;console.log(\"Hello \" + name + \"!\");<br>};<br>my_function(\"Gizmo\");<div class='sample-result'># Hello Gizmo!</div></div>

            First we see that we assign functions just like we assign variables, using the 'var' keyword. We must also use the 'function' keyword to signify that we are defining a function, not another type of variable.

            We can also pass arguments to the function (name, in this case), just like we did in Ruby. One important difference between Javascript an ruby is that you <b>must always</b> put parentheses after the name of a function if you want to call it, even if it takes no arguments. If we had the following function:

            <div class=\"sample\">var my_func = function() {<br>&nbsp;&nbsp;console.log(\"Your message here!\")<br>};</div>

            then:

            <div class='sample'>my_func</div>

            will not print the message, while

            <div class='sample'>my_func()</div>

            will. We will cover this more in a future tutorial!",
  instructions: "Let's make a function that prints \"My first Javascript function!\" to the console and call it. (Hint: don't forget the parentheses ())"
)

javascript_intro3sol = Solution.create!(
  exercise: javascript_intro3,
  result: "",
  output: "My first Javascript function!\n"
)

javascript_intro4 = Exercise.create!(
  topic: javascript_intro,
  title: "Closing",
  readings: "That's all we've got for this short Javascript tutorial (it's almost like this tutorial's main purpose is to show that the interpreter for this site can handle multiple languages!).

            If you'd like to learn more about Javascript, jQuery and many other Javascript libraries used in web development, check out <a href=\"http://www.codecademy.com\">Codecademy</a>.",
  instructions: "For now, just hit the submit button to complete the tutorial!"
)

javascript_intro4sol = Solution.create!(
  exercise: javascript_intro4,
  result: "",
  output: ""
)

# #########################
# # RUBY COURSE SEED DATA #
# #########################
#
# ruby = Course.create!(
#   title: "Ruby",
#   language: "ruby",
#   description: "An easy-to-learn language that can be used to make web apps like
#         this one. Great for beginners!",
#   image_location: "ruby.png",
#   badge_image_location: "ruby_badge.png"
# )
#
# ########################################
# # RUBY TOPICS, EXERCISES AND SOLUTIONS #
# ########################################
#
# ruby_intro = Topic.create!(
#   title: "Programming Basics",
#   description: "Learn the basics of the Ruby programming language in this intro tutorial!",
#   course: ruby
# )
#
# ruby_intro1 = Exercise.create!(
#   topic: ruby_intro,
#   title: "Overview",
#   readings: "Ruby is a very simple, easy-to-learn programming language that is very powerful and flexible. It is often used in Ruby on Rails, a web development framework that is used to build awesome web applications like Basecamp, Kickstarter, and this one!
#
#             So whether you're looking to dive into web development or just starting to program, Ruby is an excellent language to learn! This course will focus on the basics of the language as well as fundamental programming concepts.",
#   instructions: "If you're ready to learn Ruby, click the submit button to begin!"
# )
#
# ruby_intro1_sol = Solution.create!(
#   exercise: ruby_intro1,
#   result: "nil",
#   output: ""
# )
#
# ruby_intro2 = Exercise.create!(
#   topic: ruby_intro,
#   title: "Hello, World!",
#   readings: "Ruby, like all other computer languages, gives us a way to communicate a set of instructions to computers that we want to be executed. One of the first things than many programmers do is write a simple program that prints a message to the screen.
#
#             To honor that tradition, we are going to use the Ruby 'puts' method to make our first program. Here is an example of how it is used:
#
#             <div class=\"sample\">puts \"Programming is awesome!\" <span class=\"sample-result\"># \"Programming is awesome!\"</span></div>
#
#             In the example above, 'puts' takes the string (the message in quotes) and prints it. It's as simple as that!",
#   instructions: "In the editor to the right, make your own <i>puts</i> statement that will print \"Hello World!\" to the console underneath the editor. (Hint: Make sure to pay attention to capitalization!)"
# )
#
# ruby_intro2_sol = Solution.create!(
#   exercise: ruby_intro2,
#   result: "nil",
#   output: "Hello World!\n"
# )
#
# ruby_intro3 = Exercise.create!(
#   topic: ruby_intro,
#   title: "Strings",
#   readings: "In the last exercise, we printed a string, which is simply a collection of letters, numbers, and symbols surrounded by double or single quotes, to the console. Before we move on to some of the other types of data Ruby can work with, let's check out some of the cool things we can do with strings.
#
#               Ruby has a lot of different ways of manipulating strings. For example, we can reverse a string like so:
#
#               <div class=\"sample\">puts \"Whoa...\".reverse <span class=\"sample-result\"># \"...aohW\"</span></div>
#
#               By simply tacking a '.reverse' on to the end of our string, we can reverse it. Other useful methods include '.upcase', which capitalizes every character in a string, '.downcase', which sets every character in lower case, and '.capitalize', which capitalizes the first character of the string. All of these methods are called the same way as .reverse, by adding them to the end of the string.",
#   instructions: "Let's use 'puts' and '.upcase' to print an uppercase version of the string \"i'm learning ruby!\" to the console."
# )
#
# ruby_intro3_sol = Solution.create!(
#   exercise: ruby_intro3,
#   result: "nil",
#   output: "I'M LEARNING RUBY!\n"
# )
#
# ruby_intro4 = Exercise.create!(
#   topic: ruby_intro,
#   title: "Numbers",
#   readings: "In addition to strings, Ruby also lets us work with numbers. While strings need to be surrounded by quotes, numbers do not. This means if we wanted to print the number 1000 to the console, it would be as easy as:
#
#             <div class=\"sample\">puts 1000 <span class=\"sample-result\"># \"1000\"</span></div>
#
#             But we can do more than simply print numbers to the screen. Ruby gives us the ability to add, subtract, multiply and divide numbers as well. We can do this just like we would on paper:
#
#             <div class=\"sample\">puts 1 + 1 <span class=\"sample-result\"># 2</span><br>puts 15 - 6 <span class=\"sample-result\"># 9</span><br>puts 4 * 4 <span class=\"sample-result\"># 16</span><br>puts 49 / 7<span class=\"sample-result\"># 7</span></div>",
#   instructions: "Use 'puts' to print the result of multiplying 117 by 4."
# )
#
# ruby_intro4_sol = Solution.create!(
#   exercise: ruby_intro4,
#   result: "nil",
#   output: "468\n"
# )
#
# ruby_intro5 = Exercise.create!(
#   topic: ruby_intro,
#   title: "More Numbers",
#   readings: "Now that we know we can work with numbers in Ruby, we might try to do something like 5 / 2. If we did this on a calculator, we would get 2.5, which is what we would expect from Ruby:
#
#             <div class=\"sample\">puts 5 / 2 <span class=\"sample-result\"># 2</span></div>
#
#             What?! This may seem a little strange at first, but we can get the result we want like so:
#
#             <div class=\"sample\">puts 5 / 2.0 <span class=\"sample-result\"># 2.5</span></div>
#
#             If we want Ruby to give us decimals, we have to use decimals in the expression we type. To see what was going on in the first example, we will introduce the <i>modulo</i> operator ( % ). While you might not be too familiar with this, an example might be able to clarify it:
#
#             <div class=\"sample\">puts 5 / 2 <span class=\"sample-result\"># 2</span><br>puts 5 % 2 <span class=\"sample-result\"># 1</span></div>
#
#
#             When we divide 5 by 2, we get 2 with a remainder of 1. So a % b gives us the remainder when a is divided by b (no decimals are used). It's ok if this is a bit confusing now, it should hopefully become a bit more clear with practice!",
#   instructions: "Use 'puts' and the modulo operator (%) to find the remainder when 100 is divided by 7."
# )
#
# ruby_intro5_sol = Solution.create!(
#   exercise: ruby_intro5,
#   result: "nil",
#   output: "2\n"
# )
#
# ruby_intro6 = Exercise.create!(
#   topic: ruby_intro,
#   title: "Variables",
#   readings: "Before we take a look at one more data type in this section, it will be worth our while to discuss variables. You may or may not be familiar with the concept of a variable, but a variable is essentially a name we give to some value so we can refer to it later.
#
#             Say, for example, we know that we will be using the string \"I love programming!\" a lot in our program. Instead of having to write that out over and over again, we can assign it to a variable like so:
#
#             <div class=\"sample\">my_string = \"I love programming!\"</div>
#
#             The name on the left is what we will refer to the string as later in our program, and it can be anything you like! Now if we wanted to print this string to the console:
#
#             <div class=\"sample\">puts my_string <span class=\"sample-result\"># \"I love programming!\"</span></div>
#
#             Note that like numbers, we don't have to put quotes around the name of a variable.",
#   instructions: "Create a variable called my_cool_variable and set it equal to the string \"My First Ruby Variable!\". Then print it to the console using 'puts'."
# )
#
# ruby_intro6_sol = Solution.create!(
#   exercise: ruby_intro6,
#   result: "nil",
#   output: "My First Ruby Variable!\n"
# )
#
# ruby_intro7 = Exercise.create!(
#   topic: ruby_intro,
#   title: "Booleans",
#   readings: "The last data type we will focus on in this section is the boolean. A boolean is a value that can only be 'true' or 'false'. We will use these a lot more in future sections of the course. We can assign booleans to variables just like numbers or strings:
#
#             <div class=\"sample\">my_boolean = true</div>
#
#             We could then use this throughout our program.
#
#             Say we wanted to check if two values are equal, and get true or false as our result. We can't use '=', because that is how we assign variables. The way we get around this is by using '=='. For example:
#
#             <div class=\"sample\">puts (16/8) == 2 <span class=\"sample-result\"># true</span></div>
#
#             When we use '==', if the value on the left is equal to the value on the right, we will get true as a result. If they are not equal, we will get false.",
#   instructions: "Using '==' and puts, check whether (884 / 13) is equal to 68 and print the result to the console."
# )
#
# ruby_intro7_sol = Solution.create!(
#   exercise: ruby_intro7,
#   result: "nil",
#   output: "true\n"
# )
#
# ########################################
#
# ruby_conditionals = Topic.create!(
#   title: "Conditionals",
#   description: "Learn to control the flow of your programs with if-else statments!",
#   course: ruby
# )
#
# ruby_conditionals1 = Exercise.create!(
#   topic: ruby_conditionals,
#   title: "Overview",
#   readings: "So far, we have been working with very simple programs. But eventually, we are going to want to make something a bit more complex. For example, we may have a program that asks a user for a number, then returns whether that number is a multiple of 17.
#
#             While such a program may seem simple, we can't yet build it with the tools we have. To do so, we need to learn about conditional statements and how they can be used to handle a variety of cases.",
#   instructions: "Go ahead and press the submit button if you're ready to start!"
# )
#
# ruby_conditionals1_sol = Solution.create!(
#   exercise: ruby_conditionals1,
#   result: "nil",
#   output: ""
# )
#
# ruby_conditionals2 = Exercise.create!(
#   topic: ruby_conditionals,
#   title: "Boolean Refresher",
#   readings: "Let's recall from the last section of the course that a boolean value is one that is either true or false. If we wanted to see if 105 / 7 gives a remainder of zero, we could do so as follows:
#
#             <div class=\"sample\">puts (105 % 7) == 0 <span class=\"sample-result\"># true</span></div>
#
#             Here we are writing (105 % 7) to see what the remainder is after dividing 105 by 7, then using '==' to check and see if that remainder is equal to zero.
#             ",
#   instructions: "Using a similar setup to the example above, see if 1001 divided by 3 gives a remainder of 1, and print the result to the console."
# )
#
# ruby_conditionals2_sol = Solution.create!(
#   exercise: ruby_conditionals2,
#   result: "nil",
#   output: "false\n"
# )
#
# ruby_conditionals3 = Exercise.create!(
#   topic: ruby_conditionals,
#   title: "If...",
#   readings: "Say we have written a program where a user inputs a number, and we want to display a message to them only if that number is divisible by 17 (the remainder is zero after dividing by 17). To do this, we can use an 'if' statement:
#
#             <div class=\"sample\">my_number = 51<br>if my_number % 17 == 0<br>&nbsp;&nbsp;puts 'Your number is divisible by 17'<br>end</div>
#
#             If we ran this code, we would see the message, because 51 == 17 * 3. Let's take a look at how the if statement works.
#
#             First, the statement after the word 'if' is evaluated. So Ruby checks if 51 % 17 == 0. Since this is true, our program will run all of the code in between the 'if' and 'end' lines. If we instead had:
#
#             <div class=\"sample\">my_other_number = 5<br>if my_other_number % 17 == 0<br>&nbsp;&nbsp;puts 'Your number is divisible by 17'<br>end</div>
#
#             We would not see anything printed in the console. This is because 5 % 17 == 5, not 0. So our program simply skips over everything between the 'if' and 'end' lines.",
#   instructions: "Use an if statement like the one above to print \"I'm in an if statement\" if 12321 gives a remainder of 0 when divided by 3."
# )
#
# ruby_conditionals3_sol = Solution.create!(
#   exercise: ruby_conditionals3,
#   result: "nil",
#   output: "I'm in an if statement\n"
# )
#
# ruby_conditionals4 = Exercise.create!(
#   topic: ruby_conditionals,
#   title: "Else...",
#   readings: "In our last exercise, we learned how to print a message if a given condition was true. But what if we wanted to let the user know if their number wasn't divisible by 17? We would accomplish that with an else statement:
#
#             <div class=\"sample\">my_number = 5<br>if my_number % 17 == 0<br>&nbsp;&nbsp;puts 'Your number is divisible by 17'<br>else<br>&nbsp;&nbsp;puts 'Your number is not divisible by 17'<br>end</div>
#
#             We would see the second message in the console, since 5 is not divisible by 17 (we get a remainder of 5). Notice that the code from the if statement will not get run. Only the code from the else statement will be run. Similarly, if we had:
#
#             <div class=\"sample\">if true<br>&nbsp;&nbsp;puts 'I'm in the if statment'<br>else<br>&nbsp;&nbsp;puts 'I'm in the else statment'<br>end</div>
#
#             We will only see the first message since the condition next to 'if' is true (true is true!), and not the second.",
#   instructions: "Write an if else statement that checks whether or not 111 * 111 = 12331. If it does, print \"I'm in the if statement!\". If it does not, print \"I'm in the else statement!\""
# )
#
# ruby_conditionals4_sol = Solution.create!(
#   exercise: ruby_conditionals4,
#   result: "nil",
#   output: "I'm in the else statement!\n"
# )
#
# ruby_conditionals5 = Exercise.create!(
#   topic: ruby_conditionals,
#   title: "Elsif",
#   readings: "To wrap up this section, we will introduce 'elsif'. Suppose a user had given us a number, and we wanted to print a message depending on whether that number was positive (> 0), negative (< 0), or equal to 0 (== 0).
#
#             With if-else statement, we can only have two possible outcomes. But by adding elsif statements, we can have as many possible outputs as we'd like!
#
#             <div class=\"sample\">user_number = -1<br>if user_number > 0<br>&nbsp;&nbsp;puts 'That number is positive'<br>elsif user_number < 0<br>&nbsp;&nbsp; puts 'That number is negative'<br>else<br>&nbsp;&nbsp;puts 'That number is zero'<br>end</div>
#
#             As we might expect, we would see 'That number is negative' in the console.",
#   instructions: "Use an if-elsif-else statement with what ever conditions you like to print the message: \"I'm ready for more Ruby!\""
# )
#
# ruby_conditionals5_sol = Solution.create!(
#   exercise: ruby_conditionals5,
#   result: "nil",
#   output: "I'm ready for more Ruby!\n"
# )
#
#
# ruby_loops = Topic.create!(
#   title: "Loops & Iteration",
#   description: "Learn how to use loops and methods unique to Ruby to automate repetitive tasks!",
#   course: ruby
# )
#
# ruby_loops1 = Exercise.create!(
#   topic: ruby_loops,
#   title: "Overview",
#   readings: "In the previous section, we learned about how to control the flow of our programs. In this section, we will add another useful skill: the ability to automate repetitive tasks. Suppose we wanted to print the number 1 through 100 to the console. With our current knowledge, we would have to do it like this:
#
#             <div class=\"sample\">puts 1<br>puts 2<br>puts 3<br>puts 4<br>...</div>
#
#             This seems like an unnecessarily tedious task, and fortunately for us, there is a way to avoid this!",
#   instructions: "Press submit to move on and start learning about loops and iteraton!"
# )
#
# ruby_loops1sol = Solution.create!(
#   exercise: ruby_loops1,
#   result: "nil",
#   output: ""
# )
#
# ruby_loops2 = Exercise.create!(
#   topic: ruby_loops,
#   title: "The For Loop",
#   readings: "The first way we could solve the problem from the previous exercise is using a <i>for loop</i>. Let's take a look at an example:
#
#             <div class=\"sample\">for i in (1..100)<br>&nbsp;&nbsp;puts i<br>end</div>
#
#             For each number (in this case, i) between and including 1 and 100, we execute the code in between the for and end lines. Here, that is simply printing the number. Note that we need two dots between the one and the ten.
#
#             Note that there is nothing special about i. It is just a variable. We could have just as easily written:
#
#             <div class=\"sample\">for banana in (1..100)<br>&nbsp;&nbsp;puts banana<br>end</div>
#
#             This would have given us the same result (although it is usually a good idea to give your variables a name that makes sense!).",
#   instructions: "Using a for loop, print the numbers 16 through 22 to the console. If you need help, use the example above!"
# )
#
# ruby_loops2sol = Solution.create!(
#   exercise: ruby_loops2,
#   result: "16..22",
#   output: "16\n17\n18\n19\n20\n21\n22\n"
# )
#
# ruby_loops3 = Exercise.create!(
#   topic: ruby_loops,
#   title: "The While Loop",
#   readings: "There is another way to loop, and that is a <i>while loop</i>. A for loop is good when we want to loop over a specific range or set of values (like numbers from 1 to 100). A while loop is good when we don't know how many times we will be iterating.
#
#             <div class=\"sample\">my_num = 14<br>while my_num < 50<br>&nbsp;&nbsp;puts my_num<br>&nbsp;&nbsp;my_num = my_num + 1<br>end</div>
#
#             This code might seem a bit complicated, but let's break it down. First, we are assigning a variable called my_num to the number 14. The rest of the code is saying: 'while my_num is less than 50, execute the code in the between while and end'.
#
#             Note that the code inside the while block will only run if the condition next to 'while' (here, it is my_num < 50) is true. If my_num was set to 100 before the while, none of the code inside the while block would run.
#
#             The rest of the code looks very similar to the for loop, with the exception of the line:
#
#             <div class=\"sample\">my_num = my_num + 1</div>
#
#             Why do we need that? The code inside the while loop will keep running until my_num is greater than or equal to 50. But if we never modify my_num, it will <b><i>always</i></b> be less than 50 and our code will get stuck in an <i>infinite loop</i>, causing our program to crash.
#
#             To avoid this, each time we add 1 to my_num and run the code again. Eventually, my_num == 50 and the code will stop. Now that we have broken it down, we can see that all this code does is prints out the numbers 14 through 49 (why not 50?).",
#   instructions: "Use a while loop to print out the even numbers between and including 2 and 10.
#
#                 (Hint: like in the example, set a variable before the loop. Also, adding one will print every number between 2 and 10, but we want to skip every other number, so we add 2 in the loop instead of 1!)"
# )
#
# ruby_loops3sol = Solution.create!(
#   exercise: ruby_loops3,
#   result: "nil",
#   output: "2\n4\n6\n8\n10\n"
# )
#
# ruby_loops4 = Exercise.create!(
#   topic: ruby_loops,
#   title: "Arrays",
#   readings: "Now that we have covered the basics of looping, we are going to check out some of the cool methods Ruby has that are even easier than looping! Before we do that, we need to learn about a data structure: an array.
#
#             An array is just a collection of data, formatted like so:
#
#             <div class=\"sample\">my_array = [1, 2, 3, \"moo\", \"meow\", true]</div>
#
#             While you can put any data types you like into an array, it is usually best practice to have all <i>elements</i> of an array be of the same data type (e.g., having an array of numbers, or an array of strings).
#
#             Say we want to grab the first element of my_array. We can do this in the following way:
#
#             <div class=\"sample\">puts my_array[0] <span class=\"sample-result\"># 1</span></div>
#
#             If we want the fourth:
#
#             <div class=\"sample\">puts my_array[3] <span class=\"sample-result\"># \"moo\"</span></div>
#
#             We can get the nth element of my_array by using my_array[n-1]. Here, n-1 is said to be the <i>index</i> of the nth element.",
#   instructions: "Create an array with five elements, one of which is the number 0, and use the [] notation to print that element to the console."
# )
#
# ruby_loops4sol = Solution.create!(
#   exercise: ruby_loops4,
#   result: "nil",
#   output: "0\n"
# )
#
# ruby_loops5 = Exercise.create!(
#   topic: ruby_loops,
#   title: "Iteration with .each",
#   readings: "Everything we've covered in this section so far is common across many programming languages. If you continue to learn more languages, you'll find that many contain some type of for and while loops, as well as arrays.
#
#             Ruby, however, offers something that many other languages do not, and that is several methods we can use to loop through a collection (like an array). Suppose we had the array from the last example:
#
#             <div class=\"sample\">my_array = [1, 2, 3, \"moo\", \"meow\", true]</div>
#
#             If we wanted to print every element of this array on a separate line, we might have to do something like this:
#
#             <div class=\"sample\">my_array = [1, 2, 3, \"moo\", \"meow\", true]<br>for i in (0..my_array.length-1)<br>&nbsp;&nbsp;puts my_array[i]<br>end</div>
#
#             While that might not seem too complicated, there is a much neater way:
#
#             <div class=\"sample\">my_array = [1, 2, 3, \"moo\", \"meow\", true]<br>my_array.each { |element| puts element }</div>
#
#             We call .each on an array much like we call .reverse on a string, by appending it to the end of our variable. The .each method, however, takes a <i>block</i>, which is the part in the braces ( {} ). The |element| takes the place of i in the for loop, acting as a variable that refers it to each element of the array.
#
#             After the |element| portion of the block, we write what we would like to do with each element, which is printing to the console in this case. As is often the case, the name 'element' here isn't special, and can be replaced with any name of our choosing.
#
#             Lastly, there is another way of writing the each block that is much more useful if we want to do more than thing with each element:
#
#             <div class=\"sample\">my_array = [1, 2, 3, \"moo\", \"meow\", true]<br>my_array.each do |element|<br>&nbsp;&nbsp;puts element<br>end</div>
#
#             Note that these two ways of using .each will give us the same results!",
#   instructions: "Use each to print every element of the array [1, \"hi\", 2, \"bye\"] to the console on a separate line and finish out this section!"
# )
#
# ruby_loops5sol = Solution.create!(
#   exercise: ruby_loops5,
#   result: "[1, \"hi\", 2, \"bye\"]",
#   output: "1\nhi\n2\nbye\n"
# )
#
# ruby_methods = Topic.create!(
#   title: "Ruby Methods",
#   description: "Finish the Ruby course by learning how to define your own methods!",
#   course: ruby
# )
#
# ruby_methods1 = Exercise.create!(
#   topic: ruby_methods,
#   title: "Overview",
#   readings: "Up until now, we have been using methods that have already been defined for us, such as .reverse, .each, etc. But what if we want to define our own methods that will carry out some custom behavior?
#
#             And what is up with that 'nil' that has been showing up in the console after every exercise? This section aims to answer both of those questions and prepare you to become a Ruby Guru!",
#   instructions: "Click the submit button to start making your own methods!"
# )
#
# ruby_methods1sol = Solution.create!(
#   exercise: ruby_methods1,
#   result: "nil",
#   output: ""
# )
#
# ruby_methods2 = Exercise.create!(
#   topic: ruby_methods,
#   title: "Method Definition",
#   readings: "Similar to variables, methods are useful for when we have a specific chunk of code that we may want to run repeatedly in our program. Suppose there are several points in our program where we want to print the following statements:
#
#             <div class=\"sample\">puts \"Hello\"<br>puts \"Another Line\"<br>puts \"A Third Line\"<br>puts \"Bye\"</div>
#
#             We could copy and paste those four lines everywhere we need them, but it might be better to avoid all of that unnecessary code. What we'll do, is put those four statements in a method:
#
#             <div class=\"sample\">def my_method<br>&nbsp;&nbsp;puts \"Hello\"<br>&nbsp;&nbsp;puts \"Another Line\"<br>&nbsp;&nbsp;puts \"A Third Line\"<br>&nbsp;&nbsp;puts \"Bye\"<br>end</div>
#
#             The 'def' tells the computer that we are defining a new method, while the my_method is the name which we will use to refer to the method throughout the rest of the program (this can be anything!). Now we can simply write:
#
#             <div class=\"sample\">my_method</div>
#
#             and all four lines of code between the 'def' and 'end' will be run! Note that we can only call my_method after we have defined it, meaning we must call it below its definition in our program.",
#   instructions: "Define a method that prints \"My First Ruby Method!\" to the console and call the method!"
# )
#
# ruby_methods2sol = Solution.create!(
#   exercise: ruby_methods2,
#   result: "nil",
#   output: "My First Ruby Method!\n"
# )
#
# ruby_methods3 = Exercise.create!(
#   topic: ruby_methods,
#   title: "Arguments",
#   readings: "Say the next method we would like to write is one that greets someone by their name. We would have to pass that person's name into the method for it to be used in the greeting, and we can do that by <i>passing arguments</i>:
#
#             <div class=\"sample\">def greet(name)<br>&nbsp;&nbsp;puts \"Hello \" + name<br>end</div>
#
#             Here, we say that we are passing in the variable 'name' to the greet method. On the second line, we are <i>concatenating</i> (or adding) whatever string is stored in the name variable to the string \"Hello \" (notice the space).
#
#             Now if we are to call the method:
#
#             <div class=\"sample\">user_name = \"Earl\"<br>greet(user_name) <div class='sample-result'># Hello Earl</div></div>
#
#             Notice that the variable we pass to greet doesn't have to be labelled 'name'. It can be anything! Without going into too much detail, once something gets passed to the greet method, the greet method refers to that by the variable 'name'.",
#   instructions: "Write a method that takes a programming language name as an argument, and prints out \"I've almost finished the \" + language_name + \" course!\". Then, call this method, passing it the string \"Ruby\"."
# )
#
# ruby_methods3sol = Solution.create!(
#   exercise: ruby_methods3,
#   result: "nil",
#   output: "I've almost finished the Ruby course!\n"
# )
#
# ruby_methods4 = Exercise.create!(
#   topic: ruby_methods,
#   title: "Return Values",
#   readings: "It's time to finally address that 'nil' you've seen floating around in the terminal at the bottom of almost every exercise. In our previous exercise, we designed a method that printed to the console. But what if we wanted to design a method that gave us a value we could use later in our program?
#
#             For that, we need the method to <i>return a value</i> for later use. If we defined a method that squared a number:
#
#             <div class=\"sample\">def my_square(x)<br>&nbsp;&nbsp;return x * x<br>end</div>
#
#             This method takes an argument x, squares x, then returns the result.
#
#             <div class=\"sample\">y = my_square(2)<br>puts y <div class='sample-result'># 4</div></div>
#
#             Here, my_square(2) returns the value 4, which is then stored in the variable y. This is what we see when we write 'puts y'. So why have we been seeing 'nil' all this time?
#
#             <b>nil</b> is a special data type in Ruby that means 'nothing'. 'puts' prints a message to the screen, but it doesn't have a return value (i.e., it returns nil).",
#   instructions: "Write a method that cubes a number (multiplies it by itself three times) and call it with the number 4 as an argument. (Hint: don't use 'puts' anywhere, just call the method after you define it!)"
# )
#
# ruby_methods4sol = Solution.create!(
#   exercise: ruby_methods4,
#   result: "64",
#   output: ""
# )
#
# ruby_methods5 = Exercise.create!(
#   topic: ruby_methods,
#   title: "Closing",
#   readings: "You've made it through our whole Ruby tutorial, nice work! This is just the beginning, however. If you would like to learn more Ruby, head on over to <a href=\"http://www.codecademy.com\">Codecademy</a> for more comprehensive tutorials. Or, checkout some of our other courses we have to offer!",
#   instructions: "Simply press the submit button to complete the course!"
# )
#
# ruby_methods5sol = Solution.create!(
#   exercise: ruby_methods5,
#   result: "nil",
#   output: ""
# )

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

# ruby.exercises.each_with_index do |exercise, index|
#   next if index == ruby.exercises.length - 1
#   ExerciseCompletion.create!(exercise: exercise, user: alan)
#   ExerciseCompletion.create!(exercise: exercise, user: ada)
# end
#
# ruby.topics.each_with_index do |topic, index|
#   next if index == ruby.topics.length - 1
#   TopicCompletion.create!(topic: topic, user: alan)
#   TopicCompletion.create!(topic: topic, user: ada)
# end
