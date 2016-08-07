get '/users' do
redirect :"users/new"
end

get '/users/new' do
  erb :"users/new"
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
      redirect "/sessions/new"
  else
    # @errors = @user.errors.full_messages
    erb :"users/new"
  end
end

get '/users/:id' do
  @user = User.find(session[:user_id])
  @decks = Deck.all
  erb :"/users/show"
end