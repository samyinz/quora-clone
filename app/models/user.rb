
class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	
	validates :name, :email, :password, presence: true
	validates :email,  confirmation: true
	validates :email, :uniqueness => {:case_sensitive => false}
	validates :password, length: {in: 6..20}

	has_secure_password

	# def self.authenticate(email, password_digest)
		
	# 	@user = User.find_by(email: email, password_digest: password_digest)
 #  		if (@user != nil)
 #    			return @user.id if @user.password_digest == password_digest
 #    			return "password_invalid" if @user.password_digest != password_digest
 #   		else
 #   		 	return "username_invalid"
 #   		end
	# end

	# def self.authenticate(email,password)
	# 	byebug
	# 	user = User.where(email: email).find_by(password_digest: password)
	# 	return user
	# end





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




