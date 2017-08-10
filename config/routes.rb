Rails.application.routes.draw do

  root 'main#front_page'

  get 'page' => "examples#page"
  get 'tournaments' => "main#tournament"

   # get 'admin/main' => 'admin_panels#main'
   namespace :admin do
    resources :games

    root to: "games#index"
  end
  
end
