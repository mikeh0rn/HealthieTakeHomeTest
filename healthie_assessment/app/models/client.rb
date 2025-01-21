class Client < ApplicationRecord
  belongs_to :provider

  enum subscription: { basic: 'basic', premium: 'premium' }

  validates :provider, presence: true

  validates :subscription, inclusion: { in: ['basic', 'premium'] }

  validates :email, presence: true

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "invalid email!" }
  
  validates :email, uniqueness: true
end