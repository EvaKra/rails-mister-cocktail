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
 Ingredient.create(name: "Ice")
 Ingredient.create(name: "Mint leaves")
 Ingredient.create(name: "Lime")
 Ingredient.create(name: "Brown sugar")
 Ingredient.create(name: "Rum")
 Ingredient.create(name: "Lemon")
 Ingredient.create(name: "Coke")
 Ingredient.create(name: "Soda Water")
 Ingredient.create(name: "Honey")
 Ingredient.create(name: "Tomato juice")
 Ingredient.create(name: "Vodka")
 Ingredient.create(name: "Tequila")
 Ingredient.create(name: "Sugar Syrup")



puts "creating new Cocktails"
file = URI.open("https://images.unsplash.com/photo-1562890042-cb70b22b294d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80rai")
cocktail = Cocktail.new(name: "Mojito")
cocktail.photo.attach(io: file, filename: 'cocktail.png', content_type: 'image/png')
cocktail.save

file = URI.open("https://www.mixolopedia.com/wp-content/uploads/2018/03/canchanchara-cocktail.jpg")
cocktail = Cocktail.new(name: "Canchanchara")
cocktail.photo.attach(io: file, filename: 'cocktail.png', content_type: 'image/png')
cocktail.save

file = URI.open("https://images.unsplash.com/photo-1490324120634-0fa86c62d6c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=759&q=80")
cocktail = Cocktail.new(name: "Pina Colada")
cocktail.photo.attach(io: file, filename: 'cocktail.png', content_type: 'image/png')
cocktail.save

file = URI.open("https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2018/05/lime-daiquiri.jpg?itok=zFJY6Trp")
cocktail = Cocktail.new(name: "Daiquiri")
cocktail.photo.attach(io: file, filename: 'cocktail.png', content_type: 'image/png')
cocktail.save

file = URI.open("https://noseychef.com/wp-content/uploads/2018/07/IMG_3791.jpg")
cocktail = Cocktail.new(name: "Cuba Libre")
cocktail.photo.attach(io: file, filename: 'cocktail.png', content_type: 'image/png')
cocktail.save

file = URI.open("https://images.unsplash.com/photo-1560963689-b5682b6440f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=986&q=80")
cocktail = Cocktail.new(name: "Havana Loco")
cocktail.photo.attach(io: file, filename: 'cocktail.png', content_type: 'image/png')
cocktail.save

file = URI.open("https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=986&q=80")
cocktail = Cocktail.new(name: "Guantanamera")
cocktail.photo.attach(io: file, filename: 'cocktail.png', content_type: 'image/png')
cocktail.save

file = URI.open("https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2018/04/spiced-bloody-mary-shots-f4.jpg?itok=y5h158JM")
cocktail = Cocktail.new(name: "Cubanito")
cocktail.photo.attach(io: file, filename: 'cocktail.png', content_type: 'image/png')
cocktail.save


puts "Hooray"