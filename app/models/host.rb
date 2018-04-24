class Host < ApplicationRecord
  belongs_to :user, default: -> { Current.user }
  has_many_attached :images
  scope :with_eager_loaded_images, -> { eager_load(images_attachments: :blob) }

  enum speciality: ["Surfing", "Wind surfing", "Hiking"]
  validates :speciality, :phone_number, :address, :postal_code, :city, :country, presence: true
end
