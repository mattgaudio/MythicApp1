class TeamsController < ApplicationController
  def invite
    @team = current_player_team
  end

  def join

  end

  def kick
  end

  def current_team
    @team = current_player_team
  end
end
