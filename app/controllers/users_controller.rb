
get '/signup/new'do
    erb :"static/signup"
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


get '/users/:id' do
  # some code here
  byebug
  user = User.find_by(id:params[:user][:id])

	if user == nil
		redirect '/'
	else
		@message = "Name: #{@user.name}"
	end

	erb :"/static/profile"
end