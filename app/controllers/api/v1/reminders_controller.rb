class Api::V1::RemindersController < ApplicationController

	def index
		reminders = Reminder.all
		render json: reminders
	end

	def show
		reminder = Reminder.find(params[:id])
		render json: reminder
	end

	def create
		reminder = Reminder.create!(reminder_params)
		render json: reminder
	end

	def update
		reminder = Reminder.find(params[:id])
		reminder.update(text: params[:text])
		render json: reminder
	end

	def destroy
		reminder = Reminder.find(params[:id])
		reminder.destroy!
		render json: {}
	end
	
	private
	
	def reminder_params
		params.permit(:user_id, :text)
	end

end
