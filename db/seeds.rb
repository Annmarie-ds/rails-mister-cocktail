# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Ingredient.create(name: 'Lemon')
Ingredient.create(name: 'Ice')
Ingredient.create(name: 'Mint leaves')
Ingredient.create(name: 'Vodka')
Ingredient.create(name: 'Rhum')
Ingredient.create(name: 'Tequila')
Ingredient.create(name: 'Orange juice')
Ingredient.create(name: 'Salt')

puts 'Cleaning data...'

puts 'Creating 4 cocktails...'

Cocktail.destroy_all
# Cocktail.create(name: 'Mojito')
# Cocktail.create(name: 'Soho')
# Cocktail.create(name: 'Blue Lagoon')
# Cocktail.create(name: 'Old Fashion')

file = URI.open('https://res.cloudinary.com/dfiqhpsxy/image/upload/v1599197407/mojito.jpg')
cocktail1 = Cocktail.new(name: 'Mojito')
cocktail1.photo.attach(io: file, filename: 'mojito.png', content_type: 'image/png')
cocktail1.save

file = URI.open('https://res.cloudinary.com/dfiqhpsxy/image/upload/v1599887330/soho.jpg')
cocktail2 = Cocktail.new(name: 'Soho')
cocktail2.photo.attach(io: file, filename: 'soho.png', content_type: 'image/png')
cocktail2.save

file = URI.open('https://res.cloudinary.com/dfiqhpsxy/image/upload/v1599887330/old_fashioned.jpg')
cocktail3 = Cocktail.new(name: 'Old Fashioned')
cocktail3.photo.attach(io: file, filename: 'old_fashioned.png', content_type: 'image/png')
cocktail3.save

file = URI.open('https://res.cloudinary.com/dfiqhpsxy/image/upload/v1599887330/blue_lagoon.jpg')
cocktail4 = Cocktail.new(name: 'Blue Lagoon')
cocktail4.photo.attach(io: file, filename: 'blue_lagoon.png', content_type: 'image/png')
cocktail4.save

