class Review < ApplicationRecord
  belongs_to :booking

  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5, message: "the rating must be 0, 1, 2, 3, 4, 5" }
end
