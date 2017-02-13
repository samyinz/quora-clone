require 'bcrypt'

class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	
	validates :name, :email, :password, presence: true
	validates :email,  confirmation: true
	validates :email, :uniqueness => {:case_sensitive => false}
	validates :password, length: {in: 6..20}

	has_secure_password

# 	include BCrypt

#   	def password
#    	 @password ||= Password.new(password_hash)
#   	end

#   	def password=(new_password)
#   	  @password = Password.create(new_password)
#   	  self.password_hash = @password
#  	end


#  	def create
#  		@user = User.new(params[:user])
#  		@user.password = params[:password]
#  		@user.save!
#  	end
end




