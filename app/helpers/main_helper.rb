module MainHelper

  def calculate_weekly_active_bracket_pools_count
    zz = Array.new()
    Bracket.all.each do |x|
      x.bracket_pools.each do |y|
      if y.active
        zz << y.bracket_pool_players.count
      end
      end
    end
    zz
  end


end
