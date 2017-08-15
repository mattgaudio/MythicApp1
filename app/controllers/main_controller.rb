class MainController < ApplicationController

	def front_page
		@games = Game.all
	end
	
	
end
