Rails.application.routes.draw do
  # resources :reminders
  # resources :user_cards
  # resources :cards
	# resources :users
	
	namespace :api do
    namespace :v1 do
      resources :reminders
    end
	end

	namespace :api do
    namespace :v1 do
      resources :user_cards
    end
	end
	
	namespace :api do
    namespace :v1 do
      resources :cards
    end
	end
	
	namespace :api do
    namespace :v1 do
      resources :users
    end
  end
	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
