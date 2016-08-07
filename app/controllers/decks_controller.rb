get '/decks' do
   @decks = Deck.all
  erb :'decks/index'
end

get '/decks/:id' do
  @decks = Deck.all
  @deck = Deck.find(params[:id]) #define instance variable for view
  erb :'decks/show' #show single deck view

end

