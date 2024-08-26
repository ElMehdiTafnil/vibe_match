Rails.application.routes.draw do
  # Root route
  root 'home#index'

  # Routes for the home controller
  get 'home/index'

  # Routes for Spotify callbacks
  get 'callbacks/spotify'

  # RESTful routes for playlists
  resources :playlists, only: [:index, :show, :create, :destroy]

  # RESTful routes for search
  get 'search', to: 'search#new', as: 'new_search'
  post 'search', to: 'search#create', as: 'search_results'

  # Routes for users
  get 'users/show'
  get 'users/edit'
  patch 'users/update'  # Typically use patch for updates

  # Health check route
  get 'up' => 'rails/health#show', as: :rails_health_check
end
