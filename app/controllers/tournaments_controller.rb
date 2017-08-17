class TournamentsController < ApplicationController


	def index
		@tournaments = Tournament.all
	end

	def show
		@tournament = Tournament.find(params[:id])
		@challonge_tournament = Challonge::Tournament.find(:all, :params => {:id => @tournament.tournament_id})
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


end
