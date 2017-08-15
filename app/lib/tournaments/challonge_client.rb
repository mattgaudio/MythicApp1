module Tournaments
	class ChallongeClient
		
		# Usage
		# 1. Create a torunament
		# 2. Create multiple participants | Tournament fills with participants
		# 3. Tournament start
		# 4. Display Bracket

		# 

		include ActiveModel::Model

		def initialize(attributes={})
			super
		end

		def create_tournament(attributes={})
			t = Challonge::Tournament.new
			t.name = attributes[:name]
			t.url = attributes[:url]
			t.tournament_type = attributes[:tournament_type]
			t.save
		end

		def find_tournament(params={})
			Challonge::Tournament.find(:all, params: params)
		end

		def start_tournament(tournament)
			tournament.start!
		end

		def create_tournament_participant(attributes={}, tournament)
			Challonge::Participant.create(name: attributes[:name], tournament: tournament)
		end

		def list_tournament_participants(tournament)
			tournament.participants
		end

		def matches_updating(matches)
			m = t.matches(:first)
			m.scores_csv = '3-1,3-2'
			m.winner_id = m.player1_id
			m.save
		end

		private

		def handle_client_error(message = nil, &block)
			begin
				yield
			rescue StandardError
				raise Tournaments::ClientError.new(e.message)
			end
		end
	end
end