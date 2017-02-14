enable :sessions

get '/sessions/new' do
    erb :"static/index"
end

post '/sessions' do
    # byebug
    user = User.find_by(email:params[:user][:email])
        if user && user.authenticate(params[:user][:password])
        	session[:user_id] = user.id
            @message = "you've logged in"
            erb :"static/mainpage"
        else
          @error = "log in fail"
          erb :"static/index"
  	 end
end  

post '/logout' do
  session[:user_id] = nil
  redirect to '/'
end