# to run in development: rake bracket_pools:generate

namespace :tournament_pools do
  desc "create tournament pools"
  task :create_tournament_pools => :environment do
    begin
      ActiveRecord::Base.transaction do
        BracketPool.is_active.each do |bracket_pool|
          (bracket_pool.bracket_pool_players.count / (bracket_pool.bracket.players_per_team * 32)).ceil.times do |i|
            bracket_pool.tournament_pools.create
          end
        end
      end
    rescue => e
      puts e.message
    end
  end
end
