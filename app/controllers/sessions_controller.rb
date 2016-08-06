
# Sessions NEW
get '/sessions/new' do
 erb :'sessions/new'
end

# Sessions CREATE
post '/sessions' do
#MAKE SURE THIS MATCHES UP WITH PAIR
 @user = User.find_by(username: params[:user][:username])
 if @user
   if @user && @user.authenticate(params[:user][:password])
     session[:user_id] = @user.id
     redirect "/users/#{session[:user_id]}"
   else
   	 @error = "Invalid login information. Please try again."
     redirect 'sessions/new'
   end
 else
   @error = "You are not in the user database. Please sign up."
   redirect 'users/new'
 end
end

# Sessions DELETE
delete '/sessions/:id' do
 session[:user_id] = nil
 redirect "/"
end