class Account < ApplicationRecord

	validates_presence_of :username, :email, :password
	validates_uniqueness_of :username, :email
	validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP 
	validates_length_of :password, minimum: 6

end
