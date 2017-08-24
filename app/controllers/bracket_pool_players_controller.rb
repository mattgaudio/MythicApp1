class BracketPoolPlayersController < ApplicationController

  def destroy
    @bracket_pool_player = BracketPoolPlayer.find_by(player_id: current_user.player.id, bracket_pool_id: params[:bracket_pool_id])
    @bracket_pool_player.destroy
    redirect_to brackets_path
    flash[:success] = "Succesfully left bracket!"
  end



  def bracket_pool_params
    params.require(:bracket_pool_player).permit(:player, :bracket_pool, :team)
  end

end
