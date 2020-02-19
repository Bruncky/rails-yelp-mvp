# frozen_string_literal:true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %i[index show new create]

  post 'restaurants/:restaurant_id/reviews', to: 'reviews#index'
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
end
