class Api::SessionsController < ApplicationController

	skip_before_action :authenticate

	def create
		user = User.find_by(email: auth_params[:email])
		if user.authenticate(auth_params[:password])
			jwt = Auth.issue({ user: user.id })
			render json: { jwt: jwt }
		end
	end

	def destroy 
		@auth_token = @current_user.authentication_tokens.find(params[:id])
		@auth_token.destroy!
	end

	private

		def auth_params
			params.require(:auth).permit(:email, :password)
		end
end