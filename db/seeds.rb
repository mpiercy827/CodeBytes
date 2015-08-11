# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.create!(
  language: "Ruby",
  description: "An easy-to-learn language that can be used to make web apps like
        this one. Great for beginners!"
)

Course.create!(
  language: "HTML/CSS",
  description: "Learn to make and style your very own webpages in this tutorial!"
)

Course.create!(
  language: "Javascript",
  description: "Create dynamic content in your webpages using Javascript!"
)
