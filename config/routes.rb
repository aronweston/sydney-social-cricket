Rails.application.routes.draw do
  root :to => "pages#home"

  resources :players, :except => [:destroy]
  get '/players/:id/add_profile' => "players#add_profile", :as => "player_add_profile"
  patch '/players/:id/add_profile' => "players#profile_update", :as => "player_update_profile"
  post '/players/:id/add_profile' => "players#profile_update"
  
  resources :teams, :except => [:destroy] 
  get '/teams/:id/add_profile' => "teams#add_profile", :as => "team_add_profile"
  patch '/teams/:id/add_profile' => "teams#profile_update", :as => "team_update_profile"
  get '/teams/join/:id' => "teams#join", :as => "join_team"
  get '/teams/leave/:id' => "teams#leave", :as => "leave_team"
  
  resources :grounds
  resources :games, :except => [:destroy]

  #Users
  get '/users' => "pages#users", :as => "users"
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/auth/google_oauth2/callback' => 'session#omniauth'

  

end
