SportsTeamMgmt::Application.routes.draw do

  #get "index" => "home#index", :as => "index"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"
  resources :users
  resources :sessions
  get "inx" => "home#index", :as => "inx"
  resources :venues

  resources :team_players

  resources :team_coaches

  resources :teams

  resources :leagues

  resources :people

  resources :games

  resources :sports


	
  #Added by Josh

  #root :to => 'home#index'


end
