class PlayersController < ApplicationController

	def new
		@player = Player.new
	end

	def create
		@player = Player.create(player_params)
		if @player.save
			redirect_to root_path
		else
			redirect_to new_player_path
		end
	end

	def edit
	end

	def update
		@player = Player.update(player_params)
		redirect_to dash_gamertag_path
	end

	private

	def player_params
		params.require(:player).permit(:xb1_gamertag, :ps4_gamertag, :steam_username, :user_id)
	end

end
