require 'bcrypt'

class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!

# has_many :questions
# has_many :answers

has_secure_password
validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
validates_uniqueness_of :email
validates :password, length: { minimum: 6 }

# def self.authenticate(email)
# @user = User.find_by(email: params[:email], password_digest: params[:password])
# byebug
#    if (@user != nil)
#     return @user.id if @user.password == password
#     return "password_invalid" if @user.password_digest != password
#    else
#     return "email_invalid"
#    end
# end

end
