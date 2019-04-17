# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless User.any?
  member = User.create!(
    first_name: "Edward",
    last_name: "Norton",
    username: "edn",
    email: "member@able.co",
    role: "member",
    password: "letmein",
    password_confirmation: "letmein",
  )

  premium = User.create!(
    first_name: "Tyler",
    last_name: "Durden",
    username: "tyler",
    email: "premium@able.co",
    role: "premium",
    password: "letmein",
    password_confirmation: "letmein",
  )

  admin = User.create!(
    first_name: "Jack",
    last_name: "Durden",
    username: "jack",
    email: "admin@able.co",
    role: "admin",
    password: "letmein",
    password_confirmation: "letmein",
  )
end

unless Ticket.any?
  Ticket.create(
    movie_name: "Avengers Endgame",
    seat: "A5",
    tier: "regular",
    price: 16,
    available: true,
  )

  Ticket.create(
    movie_name: "Avengers Endgame",
    seat: "F5",
    tier: "premium",
    price: 45,
    available: false,
  )

  Ticket.create(
    movie_name: "Avengers Endgame",
    seat: "E5",
    tier: "press",
    price: 45,
    available: true,
  )

  Ticket.create(
    movie_name: "Shazam",
    seat: "A16",
    tier: "regular",
    price: 16,
    available: true,
  )

  Ticket.create(
    movie_name: "fight_club",
    seat: "R2",
    tier: "regular",
    price: 16,
    available: false,
  )
end
