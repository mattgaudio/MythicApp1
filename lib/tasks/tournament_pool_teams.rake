# to run in development: rake bracket_pools:generate

namespace :tournament_pool_teams do
  desc "create tournament pool teams"
  task :create_tournament_teams => :environment do
    begin
      ActiveRecord::Base.transaction do

        # form teams; all teams need to be at the player size; in this case 4.
        # so iterate through
        #
        # so if a players team has 2 players,
        #   either add player to a team of 2
        #   add a team of 2 to players team
        #   or add 2 players.
        # so if a players team has 3 players,
        #   add 1 player to team
        # if a players team has 4 players.
        #   do nothing.
        #
        # once a team has 4 players. add team to tournament_pool
        #
        #
        # if we have a tournament pool that isn't full, i want to leave the bracket_pool
        #   open for 30 minutes, so help fill up the tournament pool .
        #   leave bracket POol active, all entrants go to final unfilled tournament_pool.
        #   with 5 minutes before start time, only allow entrants that will fill a final team.

        # loop through each bracket_pool_players. fill their team to 4 players. remove bracket_pool_players from the loop from that team. add team to tournament_pool. fill tournament pools.



        bracket_pool_players_with_incompleted_team = []
        BracketPool.all.each do |bracket_pool|

          bracket_pool.bracket_pool_players.each do |bracket_pool_player|
            if bracket_pool_player.team.bracket_pool_players.count < bracket_pool.bracket.players_per_team
              bracket_pool_players_with_incompleted_team << bracket_pool_player
            end
          end

          if bracket_pool.bracket.players_per_team < bracket_pool.team.bracket_pool_players.count
            bracket_pool.bracket_pool_players.each do |bracket_pool_player|
              if bracket_pool_player.team.bracket_pool_players.count == 1
                bracket_pool_players_with_incompleted_team.each do |_bracket_pool_player|
                  if _bracket_pool_player.team.bracket_pool_players.count == 1
                    bracket_pool_player.team.update(player: _bracket_pool_player)
                  now the team size is 2
                  so check next bracket_pool_player, if team_size is 1, add player, if team size is 2 add team





              elsif bracket_pool_player.team.bracket_pool_players.count == 2
                # actions to perform
                # add team to tournament_pool
                #remove team bracket_pool_players from array bracket_pool_players_with_incompleted_team
              elsif bracket_pool_player.team.bracket_pool_players.count == 3
                # actions to perform
                # add team to tournament_pool
                #remove team bracket_pool_players from array
              elsif bracket_pool_player.team.bracket_pool_players.count == 4
                # actions to perform
                # add team to tournament_pool
                #remove team bracket_pool_players from array
              end
            end
          else

          end
        end
      end
    rescue => e
      puts e.message
    end
  end
end
