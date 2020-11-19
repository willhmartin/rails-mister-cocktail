# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do 
  cocktail = Cocktail.new(name: Faker::Games::DnD.monster)

  cocktail.save
  
end

# , cocktail: cocktail[:id], ingredient: ingredient[:id])      description: Faker::Food.description