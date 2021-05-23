# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Beer.destroy_all

Beer.create(name: "Bud")
Beer.create(name: "White Claw")
Beer.create(name: "Mich Ultra")

Review.create(content: "drinks like water in summer", beer_id: 1)
Review.create(content: "tastes like soda", beer_id: 2)
Review.create(content: "what my dad drinks at weddings, basically water", beer_id: 3)
