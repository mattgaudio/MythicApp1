Rails.application.routes.draw do

  root 'main#front_page'

  get 'page' => "examples#page"
  get 'tournaments' => "main#tournament"
end
