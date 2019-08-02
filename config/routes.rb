Rails.application.routes.draw do
  devise_for :users
  root to: 'places#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "places", to: "places#index"

  resources :places, only: [:index, :edit]
end
