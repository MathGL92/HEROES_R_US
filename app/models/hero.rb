class Hero < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, :power, :description, :address, :price, :photo, presence: true
  validates :name, uniqueness: true
end
