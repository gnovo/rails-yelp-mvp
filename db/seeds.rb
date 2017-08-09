# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "05 56 10 20 30"
    category: "chinese"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "05 82 41 64 12"
    category: "italian"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "05 41 64 76 48"
    category: "japanese"
  },
  {
    name:         "L'Étoile'",
    address:      "71 rue de la République 69001 Lyon",
    phone_number: "04 52 47 31 03"
    category: "french"
  },
  {
    name:         "Le pré catelan",
    address:      "98 rue des Chaligny 06100 Nice",
    phone_number: "04 60 50 69 52"
    category: "belgian"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'