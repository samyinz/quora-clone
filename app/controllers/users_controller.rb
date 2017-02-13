# create new user
get '/signup' do
	erb :'users/new'
end

post '/signup' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    erb :'users/new'
  else
  	@error = "Invalid user/password. Please try again"
  	redirect to '/'
  # elsif (#if customer would like to sign up)
  	
    # what should happen if the user keyed in invalid date?
  end
end  


