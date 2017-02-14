# route new user to signup page
get '/signup/new' do
	erb :"static/signup"
end

# show specific user
get '/users/:id' do
	erb :"static/profile"
end

# create new user
post '/signup' do
  @user = User.new(params[:user])
  if @user.save
  	@message = "You have successfully signed up"
    session[:user_id] = @user.id
    erb :"static/login"
    #route user to the login page to find their id
  else
  	@error = "The Form is incomplete. Please fill in all fields"
  	redirect to '/'
  	#pending: how to authenticate whether customer has fully filled in the forms?
  end
end  


