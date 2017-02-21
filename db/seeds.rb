# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

domain = Domain.create!(name: "Photographe")

Artist.create!(username: "Sérigraphe", description: "blabla", street: "11 rue de la berthe", zipcode: "13013", city:"Marseille", country: "france", siret:"876889899", email: "jacky@mrs.fr", domain: domain)


Category.create!(name: "Sérigraphie")

Material.create!(name: "papier")
