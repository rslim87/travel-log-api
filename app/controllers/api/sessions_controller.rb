class Api::SessionsController < ApplicationController

	def new
		
	end

	def create

	end

	def destroy
	end

	private

		def auth_params
			params.require(:auth).permit(:email, :password)
		end
end