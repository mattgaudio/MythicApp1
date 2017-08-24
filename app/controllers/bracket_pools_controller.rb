class BracketPoolsController < ApplicationController
  before_action :require_login

  before_action :require_player

  before_action :require_admin, only: [:create]

  # Rest Actions

  def create
    generate_bracket_pools
    redirect_to action: :creator_button
  end

  def show
  end


  def creator_button
    @user = current_user
  end

  # Non-Rest Actions

  def join
    @bracket_pool = BracketPool.find(params[:bracket_pool_id])
    @player = current_user.player
    @team = Team.create(team_name: "#{name_pool}", bracket_pool: @bracket_pool)
    @bracket_pool_player = BracketPoolPlayer.new(player: @player, bracket_pool: @bracket_pool, team: @team)
    if @bracket_pool_player.save
      @bracket_pool.update_attributes(player_size: @bracket_pool.players.count)
      flash[:success] = "Succesfully joined bracket!"
          redirect_to manager_path
    else
      flash[:error] = @bracket_pool_player.errors.full_messages.join("\n")
      redirect_to brackets_path
    end

  end

  def generate_bracket_pools
    Time.zone = "Pacific Time (US & Canada)"
    Chronic.time_class = Time.zone
    @brackets = Bracket.all
    @brackets.each do |x|
      BracketPool.create(name: "", title: "Nightly Free", console: "xb1", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)
      BracketPool.create(name: "", title: "Nightly Free", console: "ps4", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)
      BracketPool.create(name: "", title: "Nightly Free", console: "steam", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)

      BracketPool.create(name: "", title: "Nightly 10", console: "xb1", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)
      BracketPool.create(name: "", title: "Nightly 10", console: "ps4", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)
      BracketPool.create(name: "", title: "Nightly 10", console: "steam", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)

      BracketPool.create(name: "", title: "Nightly 25", console: "xb1", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)
      BracketPool.create(name: "", title: "Nightly 25", console: "ps4", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)
      BracketPool.create(name: "", title: "Nightly 25", console: "steam", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)

      BracketPool.create(name: "", title: "Nightly 100", console: "xb1", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)
      BracketPool.create(name: "", title: "Nightly 100", console: "ps4", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)
      BracketPool.create(name: "", title: "Nightly 100", console: "steam", bracket_id: x.id, end_time: Chronic.parse("tomorrow at 7pm"), active: true, activation_time: Chronic.parse("today at 8pm"), nightly: true)
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



  def bracket_pool_player_params
    params.require(:bracket_pool_player).permit(:name, :player, :team)
  end

  def require_player
    if current_user.player
    else
      redirect_to new_player_path
      flash[:error] = "Player creation required to join bracket"
    end
  end

  def require_admin
    if current_user.admin
    else
      redirect_to root_path
      flash[:error] = "Page can't be accessed"
    end
  end

end
