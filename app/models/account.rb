class Account < ApplicationRecord
  has_many :assignments
  has_many :tasks, through: :assignments

  has_many :team_memberships

  # Validation for username
  validates_presence_of :username
  validates_uniqueness_of :username

  # Validation for email
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP

  # Validation for password
  validates_presence_of :password
  validates_length_of :password, minimum: 6
end


