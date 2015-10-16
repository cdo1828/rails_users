class User < ActiveRecord::Base
	validates :first_name, :last_name, :password, presence:true
	validates :email, presence:true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i } 
end
