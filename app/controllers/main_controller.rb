class MainController < ApplicationController

	def front_page
		@games = Game.all

		@user = User.new
	end

end
