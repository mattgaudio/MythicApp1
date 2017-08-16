class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper
  include TournamentsHelper

  before_action :set_variables

  def set_variables
 		@games = Game.all
 	end

end
