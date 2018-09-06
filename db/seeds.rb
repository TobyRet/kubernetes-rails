# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

List.create!(title: 'Top 10 movies', description: 'All the shiz I like watching', upvotes: 50)

List.create!(title: 'Top 10 cakes', description: 'All the shiz I like to eat', upvotes: 30)

puts 'All lists seeded'
