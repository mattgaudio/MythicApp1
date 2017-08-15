Rails.application.routes.draw do

  root 'main#front_page'

  get 'brackets' => "brackets#brackets"
  get 'nightly_brackets' => "brackets#nightly_brackets"
  get 'weekly_brackets' => "brackets#weekly_brackets"
  get 'manager' => "tournaments#tournament_manager_page" 

   # get 'admin/main' => 'admin_panels#main'
   namespace :admin do
    resources :games
    resources :brackets
    resources :tournaments

    root to: "games#index"
  end
  
end
