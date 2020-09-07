class Hero < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, :power, :description, :address, :price, presence: true
  validates :name, uniqueness: true, message: "This hero already exists"
end
