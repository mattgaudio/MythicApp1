class BracketPoolPlayersController < ApplicationController

  def destroy
    @bracket_pool_player = BracketPoolPlayer.find_by(player_id: current_user.player.id, bracket_pool_id: params[:bracket_pool_id])
    @bracket_pool_player.destroy
    redirect_to brackets_path
  end

  def bracket_pool_params
    params.require(:bracket_pool_player).permit(:player, :bracket_pool, :team)
  end

  private

  # Use callbacks to share common setup or constraints between actions.

  # Never trust parameters from the scary internet, only allow the white list through.
  def bracket_pool_params
    params.require(:bracket_pool_player).permit(:player, :bracket_pool, :team)
  end

end
