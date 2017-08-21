class BracketPoolsController < ApplicationController

  def create
    generate_bracket_pools
    redirect_to action: :creator_button
  end

  def show
  end


  def creator_button
    @user = current_user
  end

  def join
    @bracket_pool = BracketPool.find(params[:bracket_pool_id])
    @player = current_user.player
    @team = Team.create(team_name: "#{name_pool}", bracket_pool: @bracket_pool)
    BracketPoolPlayer.create(player: @player, bracket_pool: @bracket_pool, team: @team)
    @bracket_pool.update_attributes(player_size: @bracket_pool.players.count)
    redirect_to manager_path
  end

  def generate_bracket_pools
    Time.zone = "Pacific Time (US & Canada)"
    Chronic.time_class = Time.zone
    @brackets = Bracket.all
    @brackets.each do |x|
      BracketPool.create(name: "", title: "Nightly Free", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)
      BracketPool.create(name: "", title: "Nightly 10", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)
      BracketPool.create(name: "", title: "Nightly 25", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)
      BracketPool.create(name: "", title: "Nightly 100", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)
    end
  end

  def delete_bracket_pools
    @brackets = Bracket.all
    @brackets.each do |x|
        x.bracket_pools.destroy_all
    end
  end

  def delete_all_bracket_pools
    @bracket_pools = BracketPool.all
    @bracket_pools.delete_all
  end

  def destroy_bracket_pool_player

  end


  def destroy
    delete_bracket_pools
    redirect_to action: :creator_button
  end



  def bracket_pool_params
    params.require(:bracket_pool).permit(:name, :player, :team)
  end

end
