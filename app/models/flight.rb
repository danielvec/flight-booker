class Flight < ApplicationRecord
  belongs_to :origin, class_name: "Airport"
  belongs_to :destination, class_name: "Airport"
  has_many :bookings

  scope :matching_flights, ->(origin, destination){ where(origin_id: origin).where(destination_id: destination)}
  scope :same_date, -> (date){ where('time <= ?', Date.strptime(date, "%m/%d/%Y").end_of_day).where('time >= ?', Date.strptime(date, "%m/%d/%Y").beginning_of_day) }
end
