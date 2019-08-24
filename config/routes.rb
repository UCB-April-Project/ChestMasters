Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  resources :games, only: [:show, :index] do
    resources :chess_pieces, only: [:show, :update]
end
