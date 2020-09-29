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
cocktail1 = Cocktail.new(name: 'Mojito', description: "Traditionally, a mojito is a cocktail that consists of five ingredients: white rum, sugar (traditionally sugar cane juice), lime juice, soda water, and mint. Its combination of sweetness, citrus, and herbaceous mint flavors is intended to complement the rum, and has made the mojito a popular summer drink.")
cocktail1.photo.attach(io: file, filename: 'mojito.png', content_type: 'image/png')
cocktail1.save

file = URI.open('https://cheersonline.com/wp-content/uploads/2017/09/rubysoho.jpg')
cocktail2 = Cocktail.new(name: 'Soho', description: "The lychee soho (also known as 'lichitini' or 'lycheetini') is a beautiful, delicate, and unusual cocktail that features the sweet taste of lychee fruit. It is a delicious vodka martini and very easy to make. Mix vodka, lychee liqueur or syrup, and lime juice to make your cocktail in less than five minutes.")
cocktail2.photo.attach(io: file, filename: 'soho.png', content_type: 'image/png')
cocktail2.save

file = URI.open('https://assets.punchdrink.com/wp-content/uploads/2015/03/Article-Black-Apple-Old-Fashioned-Jager-Cocktail-Recipe-1000x617.jpg')
cocktail3 = Cocktail.new(name: 'Old Fashioned', description: "The Old Fashioned is a cocktail made by muddling sugar with bitters then adding alcohol, such as whiskey or brandy, and a twist of citrus rind. It is traditionally served in a short, round, 8–12 US fl oz (240–350 ml) tumbler-like glass, which is called an Old Fashioned glass, named after the drink.")
cocktail3.photo.attach(io: file, filename: 'old_fashioned.png', content_type: 'image/png')
cocktail3.save

file = URI.open('https://www.artofdrink.com/wp-content/uploads/2010/08/blue-lagoon-cocktail-750x501.jpg')
cocktail4 = Cocktail.new(name: 'Blue Lagoon', description: "Tall, refreshing and bluer than the bluest Caribbean sky, the cocktail combines vodka, blue curaçao and lemonade in a drink you’ll want to dive into.")
cocktail4.photo.attach(io: file, filename: 'blue_lagoon.png', content_type: 'image/png')
cocktail4.save

file = URI.open('https://images.absolutdrinks.com/drink-images/Raw/Absolut/d32f1cf1-2a28-463b-9b64-26be5eaf75ed.jpg?imwidth=750')
cocktail5 = Cocktail.new(name: 'Pina Colada', description: "The piña colada (/ˌpiːnjə koʊˈlɑːdə, -nə-, -kə-/; Spanish: piña [ˈpiɲa], pineapple, and colada [koˈlaða], strained) is a sweet cocktail made with rum, cream of coconut or coconut milk, and pineapple juice, usually served either blended or shaken with ice.")
cocktail5.photo.attach(io: file, filename: 'pina_colada.png', content_type: 'image/png')
cocktail5.save

file = URI.open('https://www.thecookierookie.com/wp-content/uploads/2018/01/game-day-tequila-sunrise-2-of-9.jpg')
cocktail6 = Cocktail.new(name: 'Tequila Sunrise', description: "There are many things to love about the tequila sunrise. It's easy to mix up at a moment's notice, and a beautiful, refreshingly fruity cocktail.")
cocktail6.photo.attach(io: file, filename: 'tequila_sunrise.png', content_type: 'image/png')
cocktail6.save
