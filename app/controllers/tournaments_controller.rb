class TournamentsController < ApplicationController


	def index
		@tournaments = Tournament.all
	end

	def show
		@quickvar = name_pool
	end


	def tournament_manager_page
		@team_nightly = current_player_team_nightly
		@team_weekly = current_player_team_weekly
		@bracket_pool_nightly = current_player_active_nightly_bracket_pools
		@bracket_pool_weekly = current_player_active_weekly_bracket_pools
	end

	def brackets
	  @bracket = Bracket.find(params[:bracket_id])
	  @bracket_players = @bracket.bracket_players
	end

	def live_game_box
	end

	def scores_and_results
	end


	def maps_and_settings
	end

	def support
	end

	def find_teammates
	end

	def find_teammates_box
	end

end
