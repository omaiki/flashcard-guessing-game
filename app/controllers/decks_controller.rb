get '/decks' do
   @decks = Deck.all
  erb :'decks/show'
end

get '/decks/:id' do
  @decks = Deck.all
  @deck = Deck.find(params[:id]) #define instance variable for view
  erb :'decks/index' #show single deck view

end

