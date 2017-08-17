class BracketPoolsController < ApplicationController

  def create
    generate_bracket_pools
  end

  def creator_button
  end



  def generate_bracket_pools
    @brackets = Bracket.all
    @brackets.each do |x|
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'nighlty_free' ", bracket_id: x.id)
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'nighlty_10' ", bracket_id: x.id)
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'nighlty_25' ", bracket_id: x.id)
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'nighlty_100' ", bracket_id: x.id)
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'weekly_free' ", bracket_id: x.id)
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'weekly_10' ", bracket_id: x.id)
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'weekly_25' ", bracket_id: x.id)
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'weekly_100' ", bracket_id: x.id)
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'weekly_250' ", bracket_id: x.id)
      BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'weekly_500' ", bracket_id: x.id)
    end
  end


  def bracket_pool_params
    params.require(:bracket_pool).permit(:name)
  end

end
