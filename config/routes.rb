Rails.application.routes.draw do
  get 'games/new'
  get 'games/edit'
  root :to => "pages#home"
  resources :players
  resources :teams
  resources :grounds
  resources :games


  #Players: Add Profile
  get '/players/:id/add_profile' => "players#add_profile", :as => "player_add_profile"
  patch '/players/:id/add_profile' => "players#profile_update", :as => "player_update_profile"
  put '/players/:id/add_profile' => "players#profile_update"

  #Users
  get '/users' => "pages#users", :as => "users"


  #Login
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
