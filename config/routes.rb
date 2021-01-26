Rails.application.routes.draw do
  root :to => "pages#home"
  resources :players, :only => [:new, :create]
  resources :teams, :only => [:new, :create]
  resources :grounds
  resources :games

  #Login
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
