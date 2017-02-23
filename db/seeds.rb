# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
Product.destroy_all
Domain.destroy_all
Category.destroy_all
Material.destroy_all

user = User.create! :email => 'jacky@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'

domain = Domain.create!(name: "Illustrateur")

Artist.create!(username: "Jacky", description: "blabla", street: "11 rue de la berthe", zipcode: "13013", city:"Marseille", country: "france", siret:"12345678901234", domain: domain, user_id: 1)


serigraphie = Category.create!(name: "Sérigraphie")
Category.create!(name: "Photographie")
Category.create!(name: "Lithographie")
papier = Material.create!(name: "papier")
Material.create!(name: "acier")
Material.create!(name: "toile")

urls = ["http://www.emiliecheron.fr/newmiloude/wp-content/uploads/2015/07/serig4.jpg", 'https://galerie.alittlemarket.com/galerie/product/853733/dessins-papi-yvette-illustration-serigra-8174933-papi-mami-4-ill400a-f247b_570x0.jpg']

url1 = [
  'http://www.emiliecheron.fr/newmiloude/wp-content/uploads/2015/07/serig4.jpg',
]

product1 = Product.new(name: 'Affiche chouette', format: '60 x 80', product_price: 30, delivery_price: 5, description:"Sérigraphie chouette et l'enfant sur papier 180gr", stock_quantity: 10, material: papier, category: serigraphie)
product1.save!
product1.photo_urls = url1

url2 = [
  'https://galerie.alittlemarket.com/galerie/product/853733/dessins-papi-yvette-illustration-serigra-8174933-papi-mami-4-ill400a-f247b_570x0.jpg',
]

product2 = Product.new(name: 'Mamie blue', format: '60 x 80', product_price: 45, delivery_price: 5, description:"Sérigraphie mamie blue sur papier 180gr", stock_quantity: 10, material: papier, category: serigraphie)
product2.save!
product2.photo_urls = url2

url3 = [
  'https://galerie.alittlemarket.com/galerie/sell/853733/dessins-maison-illustration-serigraphie-15405855-aspet-maisonnet1724-d61a2_big.jpg',
]

product3 = Product.new(name: 'Maison hantée', format: '60 x 80', product_price: 45, delivery_price: 5, description:"Sérigraphie maison hantée sur papier 180gr", stock_quantity: 10, material: papier, category: serigraphie)
product3.save!
product3.photo_urls = url3


url4 = [
  'https://galerie.alittlemarket.com/galerie/product/853733/dessins-chateau-d-eau-illustration-serig-15405837-aspet-chateau-d0971-33fc4_570x0.jpg',
]

product4 = Product.new(name: "Chateau d'eau", format: '60 x 80', product_price: 45, delivery_price: 5, description:"Sérigraphie maison hantée sur papier 180gr", stock_quantity: 10, material: papier, category: serigraphie)
product4.save!
product4.photo_urls = url4
