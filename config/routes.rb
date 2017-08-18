Rails.application.routes.draw do




  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/index'

  get 'users/show'

  get 'users/destroy'

  get 'dashboards/main'

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

  post "bracket_pools/:bracket_pool_id/join", to: 'bracket_pools#join', as: 'join_bracket'

  # Resources
  resources :tournaments
  resources :users
  resources :brackets do
    resources :bracket_players
  end

  # Routes for Dashboard
  get 'dash_index' => "dashboards#main"
  get 'dash_gamertag' => "dashboards#gamertag"
  get 'dash_history' => "dashboards#history"
  get 'dash_payment' => "dashboards#payment"
  get 'dash_settings' => 'dashboards#settings'
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

    root to: "games#index"
  end


end
