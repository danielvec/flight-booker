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
    {code: "SEA"},
    {code: "PDX"},
    {code: "SAN"}
  ]
)

18.times do Flight.create!(
  [
    {time: DateTime.now.beginning_of_day + 1 + rand(0.0..4.0), duration: 60, origin_id: 1, destination_id: 2},
    {time: DateTime.now.beginning_of_day + 2 + rand(0.0..4.0), duration: 180, origin_id: 1, destination_id: 3},
    {time: DateTime.now.beginning_of_day + 3 + rand(0.0..4.0), duration: 140, origin_id: 1, destination_id: 4},
    {time: DateTime.now.beginning_of_day + 4 + rand(0.0..4.0), duration: 60, origin_id: 1, destination_id: 5},
    {time: DateTime.now.beginning_of_day + 1 + rand(0.0..4.0), duration: 60, origin_id: 2, destination_id: 1},
    {time: DateTime.now.beginning_of_day + 2 + rand(0.0..4.0), duration: 90, origin_id: 2, destination_id: 3},
    {time: DateTime.now.beginning_of_day + 3 + rand(0.0..4.0), duration: 60, origin_id: 2, destination_id: 4},
    {time: DateTime.now.beginning_of_day + 4 + rand(0.0..4.0), duration: 90, origin_id: 2, destination_id: 5},
    {time: DateTime.now.beginning_of_day + 1 + rand(0.0..4.0), duration: 180, origin_id: 3, destination_id: 1},
    {time: DateTime.now.beginning_of_day + 2 + rand(0.0..4.0), duration: 90, origin_id: 3, destination_id: 2},
    {time: DateTime.now.beginning_of_day + 3 + rand(0.0..4.0), duration: 60, origin_id: 3, destination_id: 4},
    {time: DateTime.now.beginning_of_day + 4 + rand(0.0..4.0), duration: 200, origin_id: 3, destination_id: 5},
    {time: DateTime.now.beginning_of_day + 1 + rand(0.0..4.0), duration: 140, origin_id: 4, destination_id: 1},
    {time: DateTime.now.beginning_of_day + 2 + rand(0.0..4.0), duration: 60, origin_id: 4, destination_id: 2},
    {time: DateTime.now.beginning_of_day + 3 + rand(0.0..4.0), duration: 60, origin_id: 4, destination_id: 3},
    {time: DateTime.now.beginning_of_day + 4 + rand(0.0..4.0), duration: 160, origin_id: 4, destination_id: 5},
    {time: DateTime.now.beginning_of_day + 1 + rand(0.0..4.0), duration: 60, origin_id: 5, destination_id: 1},
    {time: DateTime.now.beginning_of_day + 2 + rand(0.0..4.0), duration: 90, origin_id: 5, destination_id: 2},
    {time: DateTime.now.beginning_of_day + 3 + rand(0.0..4.0), duration: 200, origin_id: 5, destination_id: 3},
    {time: DateTime.now.beginning_of_day + 4 + rand(0.0..4.0), duration: 160, origin_id: 5, destination_id: 4}
  ]
)
  p "Created #{Airport.count} Airports"
end

p "Created #{Airport.count} Airports"