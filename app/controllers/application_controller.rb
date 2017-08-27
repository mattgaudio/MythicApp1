class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery with: :exception
  include ApplicationHelper
  include TournamentsHelper

  before_action :set_variables

  def set_variables
 		@games = Game.all
 	end

  def current_player_team_nightly
    current_user.player.bracket_pool_players.each do |x|
      if x.bracket_pool.active && x.bracket_pool.nightly
        return x.team
      else
        false
      end
    end
  end

  def current_player_team_weekly
    current_user.player.bracket_pool_players.each do |x|
      if x.bracket_pool.active && x.bracket_pool.weekly
        x.team
      else
        false
      end
    end
  end

  def current_player_active_nightly_bracket_pools
    current_user.player.bracket_pools.each do |x|
      if x.active && x.nightly
        return x
      else
        false
      end
    end
  end

  def current_player_active_weekly_bracket_pools
    current_user.player.bracket_pools.each do |x|
      if x.active && x.weekly
        return x
      else
        false
      end
    end
  end



end
