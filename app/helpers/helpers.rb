helpers do

  def update_guess(guess, answer)
    if answer == guess.card.answer
      guess.correct = true
      @message = "Correct"
    end
    if guess.attempts == nil
      guess.attempts = 0
    end
    guess.attempts += 1
  end


  def next_guess(total_cards)
    guess = Guess.find(rand(1..@round))
    if guess.attempts == 0 || guess.attempts == nil
      return guess
    else
      @game_over = "Flashcards are done!"

      next_guess(total_cards)
    end
  end

end