class BracketPlayersController < ApplicationController


  def index
    @bracket = Bracket.find(params[:bracket_id])
    @bracket_players = @bracket.bracket_players
  end
end
