class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_variables

  def set_variables 
 		@games = Game.all
 	end
 	
end
