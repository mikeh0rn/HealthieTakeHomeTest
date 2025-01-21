class Provider < ApplicationRecord
	validates :email, presence: true

	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "invalid email!" }
	
	validates :email, uniqueness: true
end