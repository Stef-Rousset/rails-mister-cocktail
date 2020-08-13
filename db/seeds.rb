# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroy ingredients"
Ingredient.destroy_all

puts "creatng ingredients"
ingredients = ["lemon", "ice", "mint leaves", "vodka", "rhum", "orange juice"]

ingredients.each do |ingredient|
Ingredient.create!(name: ingredient)
end
puts "done"

