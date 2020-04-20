# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
for i in 1..20 do
    food = Food.new(
        name: Faker::Food.dish, 
        calories: Faker::Number.between(from: 2, to: 300)
    )
    food.save
    puts "Food #{i} created"
end