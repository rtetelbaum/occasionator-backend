class User < ApplicationRecord
	has_many :cards, dependent: :destroy
	has_many :reminders, dependent: :destroy
end
