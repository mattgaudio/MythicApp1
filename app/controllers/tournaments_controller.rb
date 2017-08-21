class TournamentsController < ApplicationController


	def index
		@tournaments = Tournament.all
	end

	def show

		@quickvar = name_pool
	end


	def tournament_manager_page
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
