class User < ApplicationRecord
	has_secure_password
	has_many :logs

	validates :email, :username, presence: true
	validates :email, :username, uniqueness: true
	
end
