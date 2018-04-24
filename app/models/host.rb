class Host < ApplicationRecord
  belongs_to :user
  enum speciality: ["Surfing", "Wind surfing", "Hiking"]
  validates :speciality, :phone_number, :address, :postal_code, :city, :country, presence: true
end
