class UsersController < ApplicationController

	def index

	@users = User.all
	
		# Rescue an HTTP error
    	begin
		  #Prepare URI and submit for a http response, set response to a variable
    	  r = Net::HTTP.get_response(URI.parse("http://localhost:3001/v1/ping_pong_scores")) 
		rescue StandardError
		  false
		end

    	if r.is_a? Net::HTTPSuccess
    		#Use ActiveSupport to transfer to nicer JSON format - make variable accessible on index view
    		@jsonResponse = ActiveSupport::JSON.decode(r.body)
    	else 
    		@jsonResponse = {"ping_pong_scores"=> []}
    	end

    #Used for testing variables in rails console
    #binding.pry
	end

	def ajax
		@users = User.all
	end
end
