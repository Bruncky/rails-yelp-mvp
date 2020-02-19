# frozen_string_literal:true

RESTAURANT_PARAMS = {
  name: 'Barbacoa',
  address: 'São Paulo',
  phone_number: '11 1234-5678',
  category: 'italian'
}.freeze

5.times do
  @restaurant = Restaurant.create(RESTAURANT_PARAMS)
end
