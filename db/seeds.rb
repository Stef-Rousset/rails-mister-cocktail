# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts 'destroy ingredients'
Ingredient.destroy_all

puts 'creating ingredients'
ingredients = ['lemon', 'ice', 'mint leaves', 'vodka', 'rhum', 'orange juice', 'coca', 'gin']

ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient)
end
puts 'done'

puts 'destroy cocktails'
Cocktail.destroy_all

margarita = Cocktail.create(name: 'margarita')
file = URI.open('https://images.unsplash.com/photo-1556855810-ac404aa91e85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
margarita.photo.attach(io: file, filename: 'margarita.png', content_type: 'image/png')

rhum = Cocktail.create(name: 'rhum')
file_two = URI.open('https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1886&q=80')
rhum.photo.attach(io: file_two, filename: 'rhum.png',content_type: 'image/png')

gin = Cocktail.create(name: 'gin')
file_three = URI.open('https://images.unsplash.com/photo-1546171753-97d7676e4602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
gin.photo.attach(io: file_three, filename: 'gin.png',content_type: 'image/png')

puts 'done'

