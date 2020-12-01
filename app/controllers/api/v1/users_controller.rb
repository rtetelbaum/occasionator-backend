class Api::V1::UsersController < ApplicationController

	def index
		users = User.all.includes(:cards, :reminders)
		render json: users
	end

	def show
		user = User.find(params[:id])
		render json: user
	end

	def create
		user = User.create!(user_params)
		render json: user
	end

	def update
		user = User.find(params[:id])
		user.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
		render json: user
	end

	def destroy
		user = User.find(params[:id])
		user.destroy!
		render json: {}
	end
	
	private
	
	def user_params
		params.permit(:first_name, :last_name, :email)
	end

end
