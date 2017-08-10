class MainController < ApplicationController

	def front_page
		@games = Game.all
	end

	def tournament 
	end
	
end
