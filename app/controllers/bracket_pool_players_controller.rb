class BracketPoolPlayersController < ApplicationController

  def destroy
    @bracket_pool_player = BracketPoolPlayer.find_by(player_id: current_user.player.id, bracket_pool_id: params[:bracket_pool_id])
    @bracket_pool_player.destroy
    redirect_to brackets_path
    flash[:success] = "Succesfully left bracket!"
  end

  def update
    @bracket_pool_player = BracketPoolPlayer.find_by(player_id: params[:player_id], bracket_pool_id: params[:bracket_pool_id])
    @bracket_pool_player.update(captain: false)
    if @bracket_pool_player.update_attributes(bracket_pool_params)
      redirect_to manager_path(bracket_pool_id: current_player_active_nightly_bracket_pools, anchor: "find-teammates"), notice: "Success"
    else
      p "*" * 10
      p @bracket_pool_player.errors.full_messages
      redirect_to manager_path(bracket_pool_id: current_player_active_nightly_bracket_pools), error: "Failed"
    end
  end


  def bracket_pool_params
    params.require(:bracket_pool_player).permit(:team_id, :captain)
  end

end
