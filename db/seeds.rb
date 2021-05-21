# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bud = Beer.create(name: "Bud")
claw = Beer.create(name: "White Claw")
ultra = Beer.create(name: "Mich Ultra")

Review.create(content: "smooth lager, easy drinking in summer", beer_id: bud.id)
Review.create(content: "tastes like soda, goes down too easy", beer_id: claw.id)
Review.create(content: "my dad drinks this at weddings", beer_id: ultra.id)

