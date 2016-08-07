post '/rounds' do
  round = Round.create(user_id: session[:user_id], deck_id: params[:deck_id])
  cards = round.deck.cards
  cards.each do |card|
    Guess.create(round_id: round.id, card_id: card.id)
  end

  card = round.deck.cards.sample
  session[:round_id] = round.id
  redirect "/cards/#{card.id}"
end