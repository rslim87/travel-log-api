class Api::SessionsController < ApplicationController

	def index
		render json: Log.all
	end
	
end