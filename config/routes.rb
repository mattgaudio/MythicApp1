Rails.application.routes.draw do




  # Routes for Main Controller
  root 'main#front_page'

  # Routes for Brackets and Tournaments Controllers
  get 'brackets' => "brackets#brackets"
  get 'nightly_brackets' => "brackets#nightly_brackets"
  get 'weekly_brackets' => "brackets#weekly_brackets"
  get 'manager' => "tournaments#tournament_manager_page"

  # Routes for other controllers
  post 'bracket_pools/create'
  get "creator_button" => "bracket_pools#creator_button"

  # Resources
  resources :tournaments
  resources :bracket_pools
  resources :brackets do
    resources :bracket_players
  end

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

    root to: "games#index"
  end


end
