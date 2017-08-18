class BracketPoolsController < ApplicationController

  def create
    generate_bracket_pools
  end

  def creator_button
  end

  def join
    @bracket_pool = BracketPool.find(params[:bracket_pool_id])
    @player = current_user.player
    BracketPoolPlayer.create(player: @player, bracket_pool: @bracket_pool)
    @bracket_pool.update_attributes(player_size: @bracket_pool.players.count)
    redirect_to manager_path
  end





  def generate_bracket_pools
    @brackets = Bracket.all
    @brackets.each do |x|
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'nightly_free' ", title: "nightly_free", bracket_id: x.id, end_time: 1.day.from_now, active: true, activation_time: DateTime.new(2017, 8, 17, 19, 00, 0))
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'nightly_10' ", title: "nightly_10", bracket_id: x.id, end_time: 1.day.from_now, active: true, activation_time: DateTime.new(2017, 8, 17, 19, 00, 0))
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'nightly_25' ", title: "nightly_25", bracket_id: x.id, end_time: 1.day.from_now, active: true, activation_time: DateTime.new(2017, 8, 17, 19, 00, 0))
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'nightly_100' ", title: "nightly_100", bracket_id: x.id, end_time: 1.day.from_now, active: true, activation_time: DateTime.new(2017, 8, 17, 19, 00, 0))
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'weekly_free' ", title: "weekly_free", bracket_id: x.id, end_time: 1.day.from_now, active: true, activation_time: DateTime.new(2017, 8, 17, 19, 00, 0))
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'weekly_10' ", title: "weekly_10", bracket_id: x.id)
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'weekly_25' ", title: "weekly_25", bracket_id: x.id)
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'weekly_100' ", title: "weekly100", bracket_id: x.id)
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'weekly_250' ", title: "weekly_250", bracket_id: x.id)
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'weekly_500' ", title: "weekly_500", bracket_id: x.id)
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

  def destroy
    delete_bracket_pools
    redirect_to action: :creator_button
  end



  def bracket_pool_params
    params.require(:bracket_pool).permit(:name)
  end

end
