require 'bcrypt'

class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!

has_secure_password
validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
validates_uniqueness_of :email
validates :password, length: { minimum: 6 }

end
