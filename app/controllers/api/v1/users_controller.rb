class Api::V1::UsersController < ApplicationController

	def index
		users = User.all.includes(:cards, :reminders)
		render json: users
	end

	def show
		users = User.all.find(params[:id])
		render json: users
	end

	def create

	end

	def update

	end

	def destroy

	end
	
	private
	
	def user_params
		params.permit(:first_name, :last_name, :email)
	end
end
