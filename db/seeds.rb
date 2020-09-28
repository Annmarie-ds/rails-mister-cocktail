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

puts 'Creating 6 cocktails...'

Cocktail.destroy_all
# Cocktail.create(name: 'Mojito')
# Cocktail.create(name: 'Soho')
# Cocktail.create(name: 'Blue Lagoon')
# Cocktail.create(name: 'Old Fashion')

file = URI.open('https://abeautifulmess.com/wp-content/uploads/2019/07/mojito-recipe-1-1.jpg')
cocktail1 = Cocktail.new(name: 'Mojito')
cocktail1.photo.attach(io: file, filename: 'mojito.png', content_type: 'image/png')
cocktail1.save

file = URI.open('https://cheersonline.com/wp-content/uploads/2017/09/rubysoho.jpg')
cocktail2 = Cocktail.new(name: 'Soho')
cocktail2.photo.attach(io: file, filename: 'soho.png', content_type: 'image/png')
cocktail2.save

file = URI.open('https://assets.punchdrink.com/wp-content/uploads/2015/03/Article-Black-Apple-Old-Fashioned-Jager-Cocktail-Recipe-1000x617.jpg')
cocktail3 = Cocktail.new(name: 'Old Fashioned')
cocktail3.photo.attach(io: file, filename: 'old_fashioned.png', content_type: 'image/png')
cocktail3.save

file = URI.open('https://www.artofdrink.com/wp-content/uploads/2010/08/blue-lagoon-cocktail-750x501.jpg')
cocktail4 = Cocktail.new(name: 'Blue Lagoon')
cocktail4.photo.attach(io: file, filename: 'blue_lagoon.png', content_type: 'image/png')
cocktail4.save

file = URI.open('https://images.absolutdrinks.com/drink-images/Raw/Absolut/d32f1cf1-2a28-463b-9b64-26be5eaf75ed.jpg?imwidth=750')
cocktail5 = Cocktail.new(name: 'Pina Colada')
cocktail5.photo.attach(io: file, filename: 'pina_colada.png', content_type: 'image/png')
cocktail5.save

file = URI.open('https://www.thecookierookie.com/wp-content/uploads/2018/01/game-day-tequila-sunrise-2-of-9.jpg')
cocktail6 = Cocktail.new(name: 'Tequila Sunrise')
cocktail6.photo.attach(io: file, filename: 'tequila_sunrise.png', content_type: 'image/png')
cocktail6.save
