module MainHelper

  def calculate_weekly_xb1_active_bracket_pools_count
    zz = Array.new()
    Bracket.all.each do |x|
      cache x do
        x.bracket_pools.where(console: "xb1").each do |y|
          cache y do
            if y.active
              zz << y.bracket_pool_players.count
            end
          end
        end
      end
    end
    zz.inject(0) { |sum,x| sum + x }
  end

  def calculate_weekly_ps4_active_bracket_pools_count
    zz = Array.new()
    Bracket.all.each do |x|
      cache x do
        x.bracket_pools.where(console: "ps4").each do |y|
          cache y do
            if y.active
              zz << y.bracket_pool_players.count
            end
          end
        end
      end
    end
    zz.inject(0) { |sum,x| sum + x }
  end

  def calculate_weekly_steam_active_bracket_pools_count
    zz = Array.new()
    Bracket.all.each do |x|
      cache x do
        x.bracket_pools.where(console: "steam").each do |y|
          cache y do
            if y.active
              zz << y.bracket_pool_players.count
            end
          end
        end
      end
    end
    zz.inject(0) { |sum,x| sum + x }
  end

  def calculate_weekly_total_active_bracket_pools_count
    zz = Array.new()
    Bracket.all.each do |x|
      cache x do
        x.bracket_pools.each do |y|
          cache y do
            if y.active
              zz << y.bracket_pool_players.count
            end
          end
        end
      end
    end
    zz.inject(0) { |sum,x| sum + x }
  end


end
