# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Artist.destroy_all
Product.destroy_all
Domain.destroy_all
Category.destroy_all
Material.destroy_all

user1 = User.create! :email => 'lila@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
user2 = User.create! :email => 'andrea@gmail.com', :password => '123456', :password_confirmation => '123456'
user3 = User.create! :email => 'alexis@gmail.com', :password => 'AZERTY', :password_confirmation => 'AZERTY'

domain1 = Domain.create!(name: "Illustrateur")
domain2 = Domain.create!(name:"Photographe")
domain3 = Domain.create!(name:"Designer")
domain4 = Domain.create!(name: "Serigraphe")

lila = Artist.create!(username: "Lila", description: "Excentrique et éxhubérante, j'aime l'art contemporain dans sa forme la plus brute", street: "11 rue de la berthe", zipcode: "13013", city:"Marseille", country: "france", siret:"12345678901234", domain: domain3, user_id: user1.id )
alexis = Artist.create!(username: "Alexis", description: "Je collectionne les brosses à cheveux en corne de cerf", street: "23 rue de la nouille", zipcode: "75006", city:"Paris", country: "france", siret:"12345678901243", domain: domain4, user_id: user3.id)
andrea = Artist.create!(username: "Andrea", description: "blabla", street: "56 rue de la fortune", zipcode: "13013", city:"Marseille", country: "france", siret:"12345678901245", domain: domain2, user_id: user2.id)

serigraphie = Category.create!(name: "Serigraphie")
photo = Category.create!(name: "Photographie")
peinture = Category.create!(name: "Peinture")
affiche = Category.create!(name: "Affiche")
art_deco = Category.create!(name: "Art décoratif")
mobilier = Category.create!(name: "Mobilier")
ceramique = Category.create!(name: "Céramique")
livre = Category.create!(name: "Livre")

papier = Material.create!(name: "Papier")
acier = Material.create!(name: "Acier")
toile = Material.create!(name: "Toile")
plastique = Material.create!(name: "Plastique")
verre = Material.create!(name: "Verre")

urls = ["https://galerie.alittlemarket.com/galerie/product/853733/dessins-papi-yvette-illustration-serigra-8174933-papi-mami-4-ill400a-f247b_570x0.jpg", 'https://galerie.alittlemarket.com/galerie/product/853733/dessins-papi-yvette-illustration-serigra-8174933-papi-mami-4-ill400a-f247b_570x0.jpg']
url1 = [
  'https://galerie.alittlemarket.com/galerie/product/853733/dessins-papi-yvette-illustration-serigra-8174933-papi-mami-4-ill400a-f247b_570x0.jpg',
]
product1 = Product.new(name: 'Affiche chouette', format: '60 x 80', product_price: 30, delivery_price: 5, description:"Sérigraphie chouette et l'enfant sur papier 180gr", stock_quantity: 10, material: papier, category: serigraphie, artist: alexis)
product1.save!
product1.photo_urls = url1
url2 = [
  'https://galerie.alittlemarket.com/galerie/product/853733/dessins-papi-yvette-illustration-serigra-8174933-papi-mami-4-ill400a-f247b_570x0.jpg',
]
product2 = Product.new(name: 'Mamie blue', format: '60 x 80', product_price: 45, delivery_price: 5, description:"Sérigraphie mamie blue sur papier 180gr", stock_quantity: 10, material: papier, category: serigraphie, artist: alexis)
product2.save!
product2.photo_urls = url2
url3 = [
  'https://galerie.alittlemarket.com/galerie/sell/853733/dessins-maison-illustration-serigraphie-15405855-aspet-maisonnet1724-d61a2_big.jpg',
]
product3 = Product.new(name: 'Maison hantée', format: '60 x 80', product_price: 45, delivery_price: 5, description:"Sérigraphie maison hantée sur papier 180gr", stock_quantity: 10, material: papier, category: serigraphie, artist: alexis)
product3.save!
product3.photo_urls = url3
url4 = [
  'https://galerie.alittlemarket.com/galerie/product/853733/dessins-chateau-d-eau-illustration-serig-15405837-aspet-chateau-d0971-33fc4_570x0.jpg',
]
product4 = Product.new(name: "Chateau d'eau", format: '60 x 80', product_price: 45, delivery_price: 5, description:"Sérigraphie maison hantée sur papier 180gr", stock_quantity: 10, material: papier, category: serigraphie, artist: alexis)
product4.save!
product4.photo_urls = url4
url5 = [
  'http://fr.ubergizmo.com/wp-content/uploads/2014/07/lampe-cloud-orage-chez-vous.jpg',
]
product5 = Product.new(name: "Cloud lamp", format: '70cm', product_price: 95, delivery_price: 7, description:"Lampe nuage", stock_quantity: 10, material: plastique, category: mobilier, artist: lila)
product5.save!
product5.photo_urls = url5
url6 = [
  'https://unsplash.com/search/lamp?photo=3-YINH6YvCw',
]
product6 = Product.new(name: "Old lamp", format: '50cm', product_price: 150, delivery_price: 10, description:"Lampe design", stock_quantity: 10, material: acier, category: art_deco, artist: lila)
product6.save!
product6.photo_urls = url6
url7 = [
  'http://www.thomdean.com/wp-content/uploads/2016/09/perfect-ideas-cool-lamps-for-sale-nice-hanging-dead-people-unique-designing-lighting-fixture-shape-wrought-iron.jpg',
]
product7 = Product.new(name: "Lamp death", format: '60cm', product_price: 95, delivery_price: 5, description:"Lamp death", stock_quantity: 10, material: plastique, category: art_deco, artist: lila)
product7.save!
product7.photo_urls = url7
url8 = [
  'http://g02.a.alicdn.com/kf/HTB1o3cdLVXXXXX7XFXXq6xXFXXXy/Bedside-lamp-night-light-Acrylic-LED-Night-Light-Wedding-decoration-diy-3D-Lamp-Strange-new-wooden.jpg',
]
product8 = Product.new(name: "Lamp cerf", format: '60cm', product_price: 195, delivery_price: 10, description:"Lamp cerf", stock_quantity: 5, material: acier, category: art_deco, artist: lila)
product8.save!
product8.photo_urls = url8
