FactoryBot.define do
  factory :flight do
    time { "2023-01-29 22:15:40" }
    duration { 1 }
    origin_id { 1 }
    destination_id { 1 }
  end
end
