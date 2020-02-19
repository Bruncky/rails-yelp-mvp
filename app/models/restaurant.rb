# frozen_string_literal:true

# Restaurant Model
class Restaurant < ApplicationRecord
  has_many :reviews
end
