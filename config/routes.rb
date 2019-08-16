Rails.application.routes.draw do
  resources :board_states
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'games#show'
  root 'games#board_status'
end
