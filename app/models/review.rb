# frozen_string_literal:true

# Review Model
class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant_id, presence: true
  validates :content, presence: true

  validates :rating, presence: true, inclusion: { in: 0..5 }
  validates :rating, numericality: { only_integer: true }
end
