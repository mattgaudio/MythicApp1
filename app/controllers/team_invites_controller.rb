class TeamInvitesController < ApplicationController

  def create
    @team_invite = TeamInvite.new(team_invite_params)
    if @team_invite.save
      redirect_to manager_path(bracket_pool_id: current_player_active_nightly_bracket_pools), notice: "Success"
    else
      redirect_to manager_path(bracket_pool_id: current_player_active_nightly_bracket_pools), error: "Failed"
    end
  end

  def destroy_invite
    TeamInvite.destroy(params[:id])
    flash[:success] = "Succesfully destroyed invite "
    redirect_to manager_path(current_player_active_nightly_bracket_pools)
  end

  def destroy_join
    TeamInvite.destroy(params[:id])
    flash[:success] = "Succesfully destroyed join invitation"
    redirect_to manager_path(current_player_active_nightly_bracket_pools)
  end

  private

  def team_invite_params
    params.require(:team_invite).permit(:player_id, :team_id, :team_invite_id)
  end
end
