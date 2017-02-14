enable :session

get '/session/new' do
	erb :"static/index"
end


# apply a authentication method to check if a user has entered a valid email and password
# if a user has successfully been authenticated, you can assign the current user id to a session
post '/session' do
	user = User.find_by(email: params[:user][:email])
	if user && user.authenticate(params[:user][:password])
		session[:id] = user.id
		erb :"static/homepage"
	else
		@error = "Invalid email / password. Please try again or sign up if you have not registered"
		erb :"static/index"
	end

end

# kill a session when a user chooses to logout, for example, assign nil to a session
# redirect to the appropriate page
post '/logout' do
	session[:user_id] = nil
	redirect to '/'
end
