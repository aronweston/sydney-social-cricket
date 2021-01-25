Rails.application.routes.draw do
  resources :players
  resources :teams
  resources :grounds
  resources :games
end
