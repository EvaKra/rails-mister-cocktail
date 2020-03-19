# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "deleting old data"
Cocktail.destroy_all
Ingredient.destroy_all

puts "creating new Ingredients"
#ingredients = Ingredient.create([{name: "lemon"}, {name: "ice"}, {name: "mint leaves"}, {name: "lime"}, {name: "brown sugar"}])
 Ingredient.create(name: "ice")
 Ingredient.create(name: "mint leaves")
 Ingredient.create(name: "lime")
 Ingredient.create(name: "brown sugar")

puts "creating new Cocktails"
file = URI.open("https://images.unsplash.com/photo-1570036394455-f3f3f281e403?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1065&q=80")
cocktail = Cocktail.new(name: "Mojito")
cocktail.photo.attach(io: file, filename: 'cocktail.png', content_type: 'image/png')
cocktail.save
#  cocktails = [{name: "Mojito", url: "https://images.unsplash.com/photo-1570036394455-f3f3f281e403?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1065&q=80"}, {name: "Canchanchara", url: "https://www.mixolopedia.com/wp-content/uploads/2018/03/canchanchara-cocktail.jpg"}]


#  cocktails.each do |cocktail|
#     cocktail = Cocktail.new(name: cocktail[:name])
#     file = URI.open(cocktail[:url])
#     cocktail.photo.attach(io: file, filename: "cocktail.png", content_type: 'image/png')
#     cocktail.save
#   end
puts "Hooray"