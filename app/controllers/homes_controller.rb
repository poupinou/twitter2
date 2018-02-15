class HomesController < ApplicationController

		def index

	end

	def twitte

		SendTweet.new(params[:tweet]).perform

	end
	
end
