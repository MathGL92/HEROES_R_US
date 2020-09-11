class Hero < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :power, :description, :address, :price, :photo, presence: true
  validates :name, uniqueness: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_power,
    against: [ :name, :power ],
    using: {
      tsearch: { prefix: true }
    }
end
