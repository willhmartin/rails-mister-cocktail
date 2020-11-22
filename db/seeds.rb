# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'
# Examples:
 Cocktail.destroy_all
 Ingredient.destroy_all

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
  cocktail = Cocktail.create!(name: Faker::Games::DnD.unique.monster)
  puts "created cocktail #{cocktail.name}"
  rand(2..3).times do
    ingredient = Ingredient.create!(name: Faker::Science.unique.element)
    puts "created ingredient #{ingredient.name}"
    dose = Dose.create!(description: Faker::Measurement.volume, ingredient_id: ingredient.id, cocktail_id: cocktail.id)
    puts "created #{dose.description}"
    puts "=============================="
  end
end

# , cocktail: cocktail[:id], ingredient: ingredient[:id])      description: Faker::Food.description