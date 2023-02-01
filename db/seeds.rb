# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.delete_all
Flight.delete_all

Airport.create!(
  [
    {code: "LAX"},
    {code: "SFO"},
    {code: "PHX"},
    {code: "PDX"},
    {code: "DTW"}
  ]
)

Flight.create!(
  [
    {time: DateTime.now + 1, duration: 60, origin_id: 1, destination_id: 2},
    {time: DateTime.now + 2, duration: 60, origin_id: 1, destination_id: 3},
    {time: DateTime.now + 3, duration: 90, origin_id: 1, destination_id: 4},
    {time: DateTime.now + 4, duration: 300, origin_id: 1, destination_id: 5},
    {time: DateTime.now + 4, duration: 300, origin_id: 2, destination_id: 4},
  ]
)

p "Created #{Airport.count} Airports"