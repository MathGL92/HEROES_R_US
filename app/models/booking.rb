class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hero
  has_many :reviews
  validates :start_date, :end_date, presence: true
end
