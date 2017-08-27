Rails.application.routes.draw do

  # Routes for Main Controller
  root 'main#front_page'
  get 'tournament_basics' => "pages#tournament_basics"
  get 'statistics' => "pages#statistics"
  get 'faq' => "pages#faq"

  # Routes for Brackets and Tournaments Controllers
  get 'brackets' => "brackets#brackets"
  get 'nightly_brackets' => "brackets#nightly_brackets"
  get 'weekly_brackets' => "brackets#weekly_brackets"

  # Routes for other controllers
  get "creator_button" => "bracket_pools#creator_button"
  post "creator_button" => "bracket_pools#creator_button"
  post 'bracket_pools/create'
  post "bracket_pools/destroy"
  post "bracket_pools/destroy_bracket_pool_player"
  post "bracket_pools/:bracket_pool_id/join", to: 'bracket_pools#join', as: 'join_bracket'
  post "bracket_pool_players/destroy", to: 'bracket_pool_players#destroy', as: 'leave_bracket'
  put "bracket_pool_players/update", to: 'bracket_pool_players#update', as: 'join_team'
  post "team_invites/destroy", to: 'team_invites#destroy_invite', as: 'destroy_invite'
  delete "team_invites/destroy", to: 'team_invites#destroy_join', as: 'destroy_join'

  get '/tournament_manager_page/:bracket_pool_id', to: 'tournaments#tournament_manager_page', as: 'manager'

  # Resources
  resources :tournaments
  resources :users
  resources :players
  resources :products
  resources :brackets
  resources :team_invites, only: [:create]

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
    resources :team_invites
    resources :captains


    root to: "games#index"
  end


end
