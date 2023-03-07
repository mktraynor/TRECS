# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning Recs'
Recs.destroy_all

# 20 fake users:
puts 'Creating 15 fake Recs...'

  Category.create!(
    name: "Try",
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "Parcelles",
    address: "13 Rue Chapon, 75003 Paris, France",
    description: "French Restaurant",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "Spanish Restaurant",
    address: "Paseo Jorge Parra, 4, Puerta 852, 58133, Albacete, Comunidad de Madrid, Spain",
    description: "Spanish Restaurant",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "Greek Restaurant",
    address: "Ipeirou 68, Athina 104 39, Greece",
    description: "Greek Restaurant",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "Italian Restaurant",
    address: "Incrocio Isotta 91, Piano 6, 63851, Filiberto laziale, Roma, Italy",
    description: "Italian Restaurant",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "German Restaurant",
    address: "Köpenicker Str. 11b, Apt. 487, 88939, Süd Santino, Berlin, Germany",
    description: "German Restaurant",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "Les Saisons",
    address: "52 Rue Lamartine, 75009 Paris, France",
    description: "French Restaurant",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "Pilgrim Pub",
    address: "247 Kennington Ln, London SE11 5QU, United Kingdom",
    description: "London Pub",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "La Vecchia Roma",
    address: "Via Leonina, 10, 00184 Roma RM, Italy",
    description: "Greek Restaurant",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "100 Montaditos",
    address: "C. de la Princesa,7, 28008 Madrid, Spain",
    description: "Spanish Bar",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "Rosenthaler Grill und Schlemmerbuffet",
    address: "Torstraße 125, 10119 Berlin, Germany",
    description: "Kebab Restaurant",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "Restaurant Amour",
    address: "8 Rue de Navarin, 75009 Prais, France",
    description: "French Restaurant",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "Bill's Soho Restaurant",
    address: "36 Brewer St., London W1F 9TB, United Kingdom",
    description: "Soho Restaurant",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "Osteria Cecchetti",
    address: "Piazza Epiro, 6, 00183 Roma RM, Italy",
    description: "Greek Restaurant",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "Tapa Tapa Arenal",
    address: "C. del Arenal, 15, 28013 Madrid, España",
    description: "Spanish Tapas",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now
  )

  Recs.create!(
    name: "Milos Restaurant",
    address: "3, Kolokotroni Street, Athens 105 62, Greece",
    description: "Greek Restaurant",
    user_id: 1,
    category_id: 1,
    created_at: Time.now,
    updated_at: Time.now

puts 'Finished!'
