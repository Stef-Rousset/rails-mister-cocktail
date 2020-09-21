# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts 'destroy cocktails'
Cocktail.destroy_all
puts 'destroy ingredients'
Ingredient.destroy_all


puts 'creating ingredients'
ingredients = ["citron", "glace pilée", "glaçons", "feuilles de menthe", "vodka", "rhum", "jus d'orange", "jus d'ananas", "coca", "gin", "tequila", "eau gazeuse", "sirop de canne", "cachaça", "triple sec", "lait de coco", "lait", "sirop de grenadine"]

ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient)
end
puts 'done'

puts 'creating cocktails'

margarita = Cocktail.create(name: 'margarita')
file = URI.open('https://images.unsplash.com/photo-1590701833281-e6283af0948d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1825&q=80')
margarita.photo.attach(io: file, filename: 'margarita.png', content_type: 'image/png')

mojito = Cocktail.create(name: 'mojito')
file_two = URI.open('https://images.unsplash.com/photo-1513558161293-cdaf765ed2fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
mojito.photo.attach(io: file_two, filename: 'mojito.png',content_type: 'image/png')

caipirinha = Cocktail.create(name: 'caipirinha')
file_three = URI.open('https://images.unsplash.com/photo-1582568822042-613147a60a1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
caipirinha.photo.attach(io: file_three, filename: 'caipirinha.png',content_type: 'image/png')

daiquiri = Cocktail.create(name: 'daiquiri')
file_four = URI.open('https://images.unsplash.com/photo-1527762055594-4956c0c8c617?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80')
daiquiri.photo.attach(io: file_four, filename: 'daiquiri.png',content_type: 'image/png')

bikini = Cocktail.create(name: 'bikini')
file_five = URI.open('https://images.unsplash.com/photo-1578664183076-f8400be8c30b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80')
bikini.photo.attach(io: file_five, filename: 'bikini.png',content_type: 'image/png')

puts 'done'

