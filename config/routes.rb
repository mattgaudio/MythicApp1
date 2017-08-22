Rails.application.routes.draw do

  resources :products
  # Routes for Main Controller
  root 'main#front_page'

  # Routes for Brackets and Tournaments Controllers
  get 'brackets' => "brackets#brackets"
  get 'nightly_brackets' => "brackets#nightly_brackets"
  get 'weekly_brackets' => "brackets#weekly_brackets"
  get 'manager' => "tournaments#tournament_manager_page"

  # Routes for other controllers
  get "creator_button" => "bracket_pools#creator_button"
  post "creator_button" => "bracket_pools#creator_button"

  post 'bracket_pools/create'
  post "bracket_pools/destroy"
  post "bracket_pools/destroy_bracket_pool_player"

  post "bracket_pools/:bracket_pool_id/join", to: 'bracket_pools#join', as: 'join_bracket'
  post "bracket_pool_players/destroy", to: 'bracket_pool_players#destroy', as: 'leave_bracket'
  get "manager", to: "bracket_pools#switch", as: 'switch_bracket'


  # Resources
  resources :tournaments
  resources :users
  resources :players
  resources :brackets do
    resources :bracket_players
  end

  # Routes for Dashboard
  get 'dash_main' => "dashboards#main"
  get 'dash_gamertag' => "dashboards#gamertag"
  get 'dash_history' => "dashboards#history"
  get 'dash_payment' => "dashboards#payment"
  get 'dash_settings' => 'dashboards#settings'
  get 'dash_payouts' => "dashboards#payouts"
  resources :dashboards

  # Stripe Routes
  resources :charges

  # Administrate Routes
   namespace :admin do
    resources :games
    resources :brackets
    resources :tournaments
    resources :users
    resources :players
    resources :bracket_pools
    resources :bracket_pool_players
    resources :teams

    root to: "games#index"
  end


end
