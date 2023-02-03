class Flight < ApplicationRecord
  belongs_to :origin, class_name: "Airport"
  belongs_to :destination, class_name: "Airport"

  scope :matching_flights, ->(origin, destination){ where(origin_id: origin).where(destination_id: destination)}
  scope :same_date, -> (date){ where('time <= ?', DateTime.parse(date).end_of_day).where('time >= ?', DateTime.parse(date).beginning_of_day) }
end
