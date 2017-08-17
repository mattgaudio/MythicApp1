class BracketsController < ApplicationController

	def brackets
		@fps_games = Game.fps
		@moba_games = Game.moba
		@hero_games = Game.hero
		@more_games = Game.more
	end

	def nightly_brackets
	end

	def weekly_brackets
	end

	def create
		@user = current_user
		@bracket = Bracket.find(params[:bracket_id])
		BracketPlayer.create(player_id: @user.id, bracket_id: @bracket.id)
	end

end
