module Tournaments
	class ClientError < StandardError
		
		def initialize(message = "Something wrond has happened while trying to consume the tournaments client")
			super(message)
		end

	end
end