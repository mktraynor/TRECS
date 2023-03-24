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
Rec.destroy_all
User.destroy_all
Category.destroy_all
puts 'Creating 15 fake Recs...'

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

  museum = Category.create!(
    name: "museums"
  )

  accommodation = Category.create!(
    name: "accommodation"
  )

  bar = Category.create!(
    name: "bars"
  )

  landmark = Category.create!(
    name: "landmarks"
  )

  user = User.create!(
    email: "something.something@gmail.com",
    password: "123456"
  )

  Rec.create!(
    name: "Parcelles",
    address: "13 Rue Chapon, 75003, Paris, France",
    description: "Set in a picturesque side street, this 1936 bistro has authentic furniture, vintage tiled flooring, and a gilded ceiling. The food is equally genuine: country pâté, creamy polenta, or dark chocolate tart. This is a restaurant that fully deserves its success.",
    website: "https://www.parcelles-paris.fr/en/",
    rating: 8.9,
    user_id: user.id,
    category_id: category_restaurant.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "Aloha Hostel",
    address: "1 Rue Borromée, 75015 Paris, France",
    description: "Centrally located and affordable, the hostel is within easy walking distance of Paris' most famous sites. With Volontaires Metro station only 5 minutes away, the rest of Paris is easy to explore. A clean and homely hostel with private rooms also available.",
    website: "http://aloha.fr/en/home/",
    rating: 7.1,
    user_id: user.id,
    category_id: category_accommodation.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "Centre Pompidou",
    address: "Place Georges-Pompidou, 75004 Paris, France",
    description: "Home to Europe's largest collection of modern and contemporary art. Amazing not just for its outstanding art, but also for its radical architecture. Don't miss the spectacular view from the rooftop.",
    website: "https://www.centrepompidou.fr/en/",
    rating: 9.5,
    user_id: user.id,
    category_id: category_museum.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "Sacré-Cœur Basilica",
    address: "35 Rue du Chevalier de la Barre, 75018 Paris, France",
    description: "The 2nd-highest structure in Paris. The all-white structure sits on top of Montmartre, so you can easily see it from many places in the city. The Roman-Byzantine architecture is unusual for Paris, with its dome beautifully contrasting with the rest of the city.",
    website: "https://www.sacre-coeur-montmartre.com/english/",
    rating: 9.7,
    user_id: user.id,
    category_id: category_museum.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "Harry's Bar",
    address: "5 Rue Daunou, 75002 Paris, France",
    description: "In 1911, a jockey dismantled a New York bar and re-installed it on Rue Daunou in Paris. Classic, bespoke & Cuban-style cocktails in a chic, wood-lined space with a piano bar in the cellar. Thursday and Friday are jazz nights at Harry's.",
    website: "https://www.harrysbar.fr/language/en/",
    rating: 8.4,
    user_id: user.id,
    category_id: category_bar.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "Barrafina",
    address: "26-27 Dean St, London, United Kingdom W1D 3LL",
    description: "The informal, Michelin-starred restaurant has an open kitchen, a marble-topped bar and leather stools where guests sit and watch the chefs at work. The a-la-carte menu offers regional Spanish dishes, while daily-changing specials showcase the best seafood and seasonal ingredients.",
    website: "https://www.barrafina.co.uk/restaurants/dean-street/menu",
    rating: 9.8,
    user_id: user.id,
    category_id: category_restaurant.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "Phoenix Hostel & Bar",
    address: "6 Daventry St, London NW1 5NU",
    description: "Housed in a homely English-style pub, the Phoenix is perfectly located with all main attractions and tube stations being only 100+ yards away. Great for those on a tight budget looking for somewhere to lay their head after a few pints.",
    website: "https://www.phoenixhostel.co.uk/",
    rating: 6.2,
    user_id: user.id,
    category_id: category_accommodation.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "Saatchi Gallery",
    address: "Duke of York's HQ, King's Rd, London SW3 4RY",
    description: "The Saatchi Gallery showcases contemporary works of art focusing on young artists and international artists who have rarely been seen in the UK. Committed to inspire a passion for contemporary art in all audiences.",
    website: "https://www.saatchigallery.com/",
    rating: 8.9,
    user_id: user.id,
    category_id: category_museum.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "Borough Market",
    address: "8 Southwark St, London SE1 1TL",
    description: "Borough Market is a wholesale and retail food market hall in Southwark. It is one of the largest and oldest food markets in London, with a market on the site dating back to at least the 12th century.",
    website: "https://boroughmarket.org.uk/",
    rating: 9.5,
    user_id: user.id,
    category_id: category_museum.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "Ye Olde Cheshire Cheese",
    address: "145 Fleet St, London EC4A 2BP",
    description: "Historic gathering place doling out carefully sourced pub grub, wine & draught beer.",
    website: "https://ye-olde-cheshire-cheese.co.uk/",
    rating: 8.5,
    user_id: user.id,
    category_id: category_bar.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "Ao 26",
    address: "R. Horta Seca 5, 1200-213 Lisboa, Portugal",
    description: "Ao26 is one of the best vegan restaurants in Lisbon. It is a great place to go with non-vegan/vegetarian friends.",
    website: "https://letsumai.com/widget/26-vegan-food-project",
    rating: 8.2,
    user_id: user.id,
    category_id: category_restaurant.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "Hot Clube de Portugal",
    address: "Praça da Alegria 48, 1250-004 Lisboa, Portugal",
    description: "Famous, historic jazz club with local performers & big name guests in an intimate cellar setting.",
    website: "https://hcp.pt/",
    rating: 8.9,
    user_id: user.id,
    category_id: category_bar.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "The Gateway Eco Hostel",
    address: "Tv. do Fala-Só 24, 1250-096 Lisboa, Portugal",
    description: "Previously GSpot Party Hostel, this hostel has rebranded yet still maintains their communal and upbeat vibe.",
    website: "https://www.gatewayhostel.com/",
    rating: 7.6,
    user_id: user.id,
    category_id: category_accommodation.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "Calouste Gulbenkian Museum",
    address: "Av. de Berna 45A, 1067-001 Lisboa, Portugal",
    description: "The Calouste Gulbenkian Museum houses one of the world's most important private art collections. It includes works from Ancient Egypt to the early 20th century, spanning the arts of the Islamic World, China and Japan, as well as the French decorative arts and more.",
    website: "https://gulbenkian.pt/museu/en/",
    rating: 9.2,
    user_id: user.id,
    category_id: category_museum.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "Padrão dos Descobrimentos",
    address: "Av. Brasília, 1400-038 Lisboa, Portugal",
    description: "A monument on the northern bank of the Tagus river estuary, in the civil parish of Santa Maria de Belém.",
    website: "https://en.wikipedia.org/wiki/Padr%C3%A3o_dos_Descobrimentos",
    rating: 8.9,
    user_id: user.id,
    category_id: category_museum.id,
    created_at: Time.now,
    updated_at: Time.now
  )

  Rec.create!(
    name: "EastSeven Hostel",
    address: "Schwedter Str. 7, 10119 Berlin, Germany",
    description: "This funky hostel has become one of the most popular budget spots in the city. Combining an intimate atmosphere with clean, smart rooms and decent facilities, it’s a laid-back, friendly and very well-run place.",
    website: "https://eastseven.de/en/",
    rating: 8.4,
    user_id: user.id,
    category_id: category_accommodation.id,
    created_at: Time.now,
    updated_at: Time.now
  )

puts 'Finished!'
