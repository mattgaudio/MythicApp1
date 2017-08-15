module Tournaments
	class Main

		attr_accessor :tournaments_service

		def initialize(tournaments_service)
			@tournaments_service = tournaments_service
		end

		def method_missing(*args, &block)
			@tournaments_service.send(*args, &block)
		end
	end
end