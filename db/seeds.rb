# frozen_string_literal:true

PARAMS = {
  name: 'Barbacoa',
  address: 'São Paulo',
  phone_number: '11 1234-5678',
  category: 'brazilian'
}.freeze

5.times do
  Restaurant.create(PARAMS)
end
