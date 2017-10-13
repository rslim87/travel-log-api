class Api::LogsController < ApplicationController

	def index
		render json: Log.all
	end

	def create
		@log = Log.new(log_params)
		if @log.save
			render json: @log
		end
	end

	def show
		@log = Log.find_by(id: params[:id])
		render json: @log
	end

	def update
		@log = Log.find_by(id: params[:id])
		if @log.update(log_params)
			render json: @log
		end
	end

	def destroy
		@log = Log.find_by(id: params[:id])
		if @log.destroy
			render json: {message: 'successfully destroyed'}
		end
	end

	private

	def log_params
		params.require(:log).permit(:city, :country, :solo_travel, :month, :year, :user_id)
	end

end