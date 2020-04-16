class Flat < ApplicationRecord

  validates :name, :address, :description, :price_per_night, :number_of_guests, presence: true
  validates :number_of_guests, numericality: { only_integer: true }, :inclusion => { :in => 0..5 }
  validates :price_per_night, numericality: { only_integer: true }
end
