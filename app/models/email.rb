class Email < ApplicationRecord
	validates :email, uniqueness: {case_sensitive: true}, length: {maximum: 300}
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
