Rails.application.routes.draw do
  # verb 'path', to: 'controller#action'

  # see all restaurants
  get 'restaurants', to: 'restaurants#index'

  # create a restaurant
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'

  # see one restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # update a restaurant
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch 'restaurants/:id', to: 'restaurants#update'

  # delete a restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # resources :restaurants
  # resources :restaurants, only: [:index]
  # resources :restaurants, except: [:index, :edit, :update]
end
