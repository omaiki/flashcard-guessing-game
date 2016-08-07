post '/guesses' do
  #need to count our guesses
  correct_answer = true if params[:user_answer] == params[:correct_answer]
  Guess.create(correct: correct_answer,
                round_id: session[:round_id],
                card_id: params[:card_id])
  card = Guess.all.where(correct: false).uniq.sample.card
  p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
  puts "card_id: #{card.id}, card_question: #{card.question}"
  redirect "/cards/#{card.id}"
end