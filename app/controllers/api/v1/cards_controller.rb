class Api::V1::CardsController < ApplicationController

	def index
		cards = Card.all
		render json: cards
	end

	def show
		card = Card.find(params[:id])
		render json: card
	end

	def create
		card = Card.create!(card_params)
		render json: card
	end

	def update
		card = Card.find(params[:id])
		card.update(image_url: params[:image_url], sender_email: params[:sender_email], recipient_email: params[:recipient_email], subject: params[:subject], message: params[:message])
		render json: card
	end

	def destroy
		card = Card.find(params[:id])
		card.destroy!
		render json: {}
	end
	
	private
	
	def card_params
		params.permit(:image_url, :sender_email, :recipient_email, :subject, :message, :user_id)
	end
	
end
