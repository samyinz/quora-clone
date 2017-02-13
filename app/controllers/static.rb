get '/' do
  erb :"static/index"
end


post '/signup' do
	@user = User.new(params[:user])
	if @user.save
		#what should happen if the user is saved?
		@message = "Thank you for signing up"
	else
		# what should happen if the user keyed in invalid date?
		@message = "Please type in a valid email"
	end
	redirect '/'
end
