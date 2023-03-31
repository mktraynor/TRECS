# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning Recs'
Pin.destroy_all
Board.destroy_all
Review.destroy_all
Rec.destroy_all
User.destroy_all
Category.destroy_all
puts 'Creating fake Recs...'

category_restaurant = Category.create!(
    name: "restaurants"
  )
  category_museum = Category.create!(
    name: "museums"
  )
  category_accommodation = Category.create!(
    name: "accommodation"
  )
  category_bar = Category.create!(
    name: "bars"
  )

  categlandmark = Category.create!(
    name: "landmarks"
  )

  user = User.create!(
    email: "nomadicluna@gmail.com",
    password: "123456"
  )

  rec1 = Rec.create!(
    name: "Parcelles",
    address: "13 Rue Chapon, 75003, Paris, France",
    description: "Set in a picturesque side street, this 1936 bistro has authentic furniture, vintage tiled flooring, and a gilded ceiling. The food is equally genuine: country pâté, creamy polenta, or dark chocolate tart. This is a restaurant that fully deserves its success.",
    website: "https://www.parcelles-paris.fr/en/",
    rating: 8.9,
    user_id: user.id,
    category: Category.find_by(name: "restaurants"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec1.photos.attach( io: File.open(Rails.root.join("app/assets/images/restaurant_example.jpg")), filename: 'rec1' )
  rec1.save

  rec2 = Rec.create!(
    name: "Aloha Hostel",
    address: "1 Rue Borromée, 75015 Paris, France",
    description: "Centrally located and affordable, the hostel is within easy walking distance of Paris' most famous sites. With Volontaires Metro station only 5 minutes away, the rest of Paris is easy to explore. A clean and homely hostel with private rooms also available.",
    website: "http://aloha.fr/en/home/",
    rating: 7.1,
    user_id: user.id,
    category: Category.find_by(name: "accommodation"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec2.photos.attach( io: File.open(Rails.root.join("app/assets/images/aloha_hostel.jpeg")), filename: 'rec2' )
  rec2.save

  rec7 = Rec.create!(
    name: "Centre Pompidou",
    address: "Place Georges-Pompidou, 75004 Paris, France",
    description: "Home to Europe's largest collection of modern and contemporary art. Amazing not just for its outstanding art, but also for its radical architecture. Don't miss the spectacular view from the rooftop.",
    website: "https://www.centrepompidou.fr/en/",
    rating: 9.5,
    user_id: user.id,
    category: Category.find_by(name: "museums"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec7.photos.attach( io: File.open(Rails.root.join("app/assets/images/180625153140-centre-pompidou-super-tease.jpeg")), filename: 'rec7' )
  rec7.save

  rec8 = Rec.create!(
    name: "Sacré-Cœur Basilica",
    address: "35 Rue du Chevalier de la Barre, 75018 Paris, France",
    description: "The 2nd-highest structure in Paris. The all-white structure sits on top of Montmartre, so you can easily see it from many places in the city. The Roman-Byzantine architecture is unusual for Paris, with its dome beautifully contrasting with the rest of the city.",
    website: "https://www.sacre-coeur-montmartre.com/english/",
    rating: 9.7,
    user_id: user.id,
    category: Category.find_by(name: "museums"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec8.photos.attach( io: File.open(Rails.root.join("app/assets/images/th (3).jpeg")), filename: 'rec8' )
  rec8.save

  rec3 = Rec.create!(
    name: "Harry's Bar",
    address: "5 Rue Daunou, 75002 Paris, France",
    description: "In 1911, a jockey dismantled a New York bar and re-installed it on Rue Daunou in Paris. Classic, bespoke & Cuban-style cocktails in a chic, wood-lined space with a piano bar in the cellar. Thursday and Friday are jazz nights at Harry's.",
    website: "https://www.harrysbar.fr/language/en/",
    rating: 8.4,
    user_id: user.id,
    category: Category.find_by(name: "bars"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec3.photos.attach( io: File.open(Rails.root.join("app/assets/images/harrys.jpg")), filename: 'rec3' )
  rec3.save

  rec4 = Rec.create!(
    name: "Barrafina",
    address: "26-27 Dean St, London W1D 3LL",
    description: "The informal, Michelin-starred restaurant has an open kitchen, a marble-topped bar and leather stools where guests sit and watch the chefs at work. The a-la-carte menu offers regional Spanish dishes, while daily-changing specials showcase the best seafood and seasonal ingredients.",
    website: "https://www.barrafina.co.uk/restaurants/dean-street/menu",
    rating: 9.8,
    user_id: user.id,
    category: Category.find_by(name: "restaurants"),
    created_at: Time.now,
    updated_at: Time.now
  )

  rec4.photos.attach( io: File.open(Rails.root.join("app/assets/images/th (1).jpeg")), filename: 'rec4' )
  rec4.save


  rec5 =Rec.create!(
    name: "Phoenix Hostel & Bar",
    address: "6 Daventry St, London NW1 5NU",
    description: "Housed in a homely English-style pub, the Phoenix is perfectly located with all main attractions and tube stations being only 100+ yards away. Great for those on a tight budget looking for somewhere to lay their head after a few pints.",
    website: "https://www.phoenixhostel.co.uk/",
    rating: 6.2,
    user_id: user.id,
    category: Category.find_by(name: "accommodation"),
    created_at: Time.now,
    updated_at: Time.now
  )

  rec5.photos.attach( io: File.open(Rails.root.join("app/assets/images/phoenix.jpg")), filename: 'rec5' )
  rec5.save

  rec9 = Rec.create!(
    name: "Saatchi Gallery",
    address: "Duke of York's HQ, King's Rd, London SW3 4RY",
    description: "The Saatchi Gallery showcases contemporary works of art focusing on young artists and international artists who have rarely been seen in the UK. Committed to inspire a passion for contemporary art in all audiences.",
    website: "https://www.saatchigallery.com/",
    rating: 8.9,
    user_id: user.id,
    category: Category.find_by(name: "museums"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec9.photos.attach( io: File.open(Rails.root.join("app/assets/images/saatchi.jpg")), filename: 'rec9' )
  rec9.save

  rec6 = Rec.create!(
    name: "Borough Market",
    address: "8 Southwark St, London SE1 1TL",
    description: "Borough Market is a wholesale and retail food market hall in Southwark. It is one of the largest and oldest food markets in London, with a market on the site dating back to at least the 12th century.",
    website: "https://boroughmarket.org.uk/",
    rating: 9.5,
    user_id: user.id,
    category: Category.find_by(name: "landmarks"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec6.photos.attach( io: File.open(Rails.root.join("db/migrate/th (2).jpeg")), filename: 'rec6' )
  rec6.save

  rec10 = Rec.create!(
    name: "Ye Olde Cheshire Cheese",
    address: "145 Fleet St, London EC4A 2BP",
    description: "Historic gathering place doling out carefully sourced pub grub, wine & draught beer.",
    website: "https://ye-olde-cheshire-cheese.co.uk/",
    rating: 8.5,
    user_id: user.id,
    category: Category.find_by(name: "bars"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec10.photos.attach( io: File.open(Rails.root.join("app/assets/images/th (4).jpeg")), filename: 'rec10' )
  rec10.save

  rec11 = Rec.create!(
    name: "Ao 26",
    address: "R. Horta Seca 5, 1200-213 Lisboa, Portugal",
    description: "Ao26 is one of the best vegan restaurants in Lisbon. It is a great place to go with non-vegan/vegetarian friends.",
    website: "https://letsumai.com/widget/26-vegan-food-project",
    rating: 8.2,
    user_id: user.id,
    category: Category.find_by(name: "restaurants"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec11.photos.attach( io: File.open(Rails.root.join("app/assets/images/ao-26-vegan-food-project-sala-55f97.jpeg")), filename: 'rec11' )
  rec11.save

  rec12 = Rec.create!(
    name: "Hot Clube de Portugal",
    address: "Praça da Alegria 48, 1250-004 Lisboa, Portugal",
    description: "Famous, historic jazz club with local performers & big name guests in an intimate cellar setting.",
    website: "https://hcp.pt/",
    rating: 8.9,
    user_id: user.id,
    category: Category.find_by(name: "bars"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec12.photos.attach( io: File.open(Rails.root.join("app/assets/images/Hot-Clube-de-Portugal-2.jpeg")), filename: 'rec12' )
  rec12.save

  rec13 = Rec.create!(
    name: "The Gateway Eco Hostel",
    address: "Tv. do Fala-Só 24, 1250-096 Lisboa, Portugal",
    description: "Previously GSpot Party Hostel, this hostel has rebranded yet still maintains their communal and upbeat vibe.",
    website: "https://www.gatewayhostel.com/",
    rating: 7.6,
    user_id: user.id,
    category: Category.find_by(name: "accommodation"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec13.photos.attach( io: File.open(Rails.root.join("app/assets/images/gspot.png")), filename: 'rec13' )
  rec13.save

  rec14 = Rec.create!(
    name: "Calouste Gulbenkian Museum",
    address: "Av. de Berna 45A, 1067-001 Lisboa, Portugal",
    description: "The Calouste Gulbenkian Museum houses one of the world's most important private art collections. It includes works from Ancient Egypt to the early 20th century, spanning the arts of the Islamic World, China and Japan, as well as the French decorative arts and more.",
    website: "https://gulbenkian.pt/museu/en/",
    rating: 9.2,
    user_id: user.id,
    category: Category.find_by(name: "museums"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec14.photos.attach( io: File.open(Rails.root.join("app/assets/images/gulbenkian.png")), filename: 'rec14' )
  rec14.save

  rec16 = Rec.create!(
    name: "Padrão dos Descobrimentos",
    address: "Av. Brasília, 1400-038 Lisboa, Portugal",
    description: "A monument on the northern bank of the Tagus river estuary, in Belém.",
    website: "https://en.wikipedia.org/wiki/Padr%C3%A3o_dos_Descobrimentos",
    rating: 8.9,
    user_id: user.id,
    category: Category.find_by(name: "museums"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec16.photos.attach( io: File.open(Rails.root.join("db/migrate/LikedPlaces_Portugal_Melhor_Destino_Mundo-scaled.jpeg")), filename: 'rec16' )
  rec16.save

  rec15 = Rec.create!(
    name: "EastSeven Hostel",
    address: "Schwedter Str. 7, 10119 Berlin, Germany",
    description: "This funky hostel has become one of the most popular budget spots in the city. Combining an intimate atmosphere with clean, smart rooms and decent facilities, it’s a laid-back, friendly and very well-run place.",
    website: "https://eastseven.de/en/",
    rating: 8.4,
    user_id: user.id,
    category: Category.find_by(name: "accommodation"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec15.photos.attach( io: File.open(Rails.root.join("app/assets/images/Screenshot 2023-03-28 at 20.19.23.png")), filename: 'rec15' )
  rec15.save


  rec17 = Rec.create!(
    name: "Brigade du Tigre",
    address: "38 Rue du Faubourg Poissonnière, 75010 Paris, France",
    description: "Asian cuisine in a bistro-style duplex. Serves small, fragrant nuggets to nibble on your own or to share, concocted from quality products.",
    website: "https://www.brigadedutigre.fr/",
    rating: 9,
    user_id: user.id,
    category: Category.find_by(name: "restaurants"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec17.photos.attach( io: File.open(Rails.root.join("app/assets/images/tigre.png")), filename: 'rec17' )
  rec17.save!

  rec18 = Rec.create!(
    name: "Hotel Parma",
    address: "Salamanca Pasealekua, 10, 20003 Donostia, Gipuzkoa, Spain",
    description: "This relaxed hotel in the Old Town has ocean-front views and is only a 10-minute walk from Playa de Zurriola.",
    website: "https://hotelparma.com/en/",
    rating: 9,
    user_id: user.id,
    category: Category.find_by(name: "accommodation"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec18.photos.attach( io: File.open(Rails.root.join("app/assets/images/parma.png")), filename: 'rec18' )
  rec18.save!

  rec19 = Rec.create!(
    name: "Bar Sport",
    address: "Fermin Calbeton Kalea, 10, 20003 Donostia, Gipuzkoa, Spain",
    description: "Bar Sport is renowned for a pretty varied selection of good-quality pintxos and a great night out.",
    website: "https://www.facebook.com/BarSportDonostia/",
    rating: 9,
    user_id: user.id,
    category: Category.find_by(name: "bars"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec19.photos.attach( io: File.open(Rails.root.join("app/assets/images/barsport.png")), filename: 'rec19' )
  rec19.save!

  rec20 = Rec.create!(
    name: "Palacio Miramar",
    address: "Paseo Miraconcha, 48, 20007 Donostia, Gipuzkoa, Spain",
    description: "The Miramar Palace is a late 19th-century palace located on La Concha bay. It was built in 1893 commissioned by the Spanish royal family.",
    website: "https://www.miramar.eus/en/",
    rating: 10,
    user_id: user.id,
    category: Category.find_by(name: "landmarks"),
    created_at: Time.now,
    updated_at: Time.now
  )
  rec20.photos.attach( io: File.open(Rails.root.join("app/assets/images/palaciomiramar.png")), filename: 'rec20' )
  rec20.save!

puts 'Finished!'
