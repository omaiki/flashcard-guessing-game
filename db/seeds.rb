
# d = Deck.create(title: "Pokemon")
# x = Card.create(question: "Who's that Pokemon?", answer: "Pikachu")
# # Deck.all.each { |deck| deck.cards << x}
# d.cards << x
# y = Card.create(question: "Who's that Pokemon?", answer: "Charmander")
# # Deck.all.each { |deck| deck.cards << y }
# d.cards << y
# z = Card.create(question: "Who's that Pokemon?", answer: "Bulbasaur")
# # Deck.all.each { |deck| deck.cards << z}
# d.cards << z


# history = Deck.create(title: "History")
# 3.times do
#   x = Card.create(question: "question", answer: "answer")
#   history.cards << x
# end

# sports = Deck.create(title: "Sports")
# 3.times do
#   x = Card.create(question: "question", answer: "answer")
#   sports.cards << x
# end

# politics = Deck.create(title: "Politics")
# 3.times do
#   x = Card.create(question: "question", answer: "answer")
#   politics.cards << x
# end

# misc = Deck.create(title: "Miscellaneous")
# 3.times do
#   x = Card.create(question: "question", answer: "answer")
#   misc.cards << x
# end

# bob = User.create(username: "bob", email: "bob@bob.com", password: "bob")

# bob.decks << d
# bob.decks << history
# bob.decks << sports
# bob.decks << politics
# bob.decks << misc


users = User.all
users.each {|user| user.destroy}
decks = Deck.all
decks.each {|deck| deck.destroy}
cards = Card.all
cards.each {|card| card.destroy}
rounds = Round.all
rounds.each {|round| round.destroy}

user = User.create(username: "bob", password: "bob")
deck = Deck.create(title: "Pokemon deck")

random_title = ["History", "Politics", "Geography", "Sports"]

5.times do
  Deck.create(title: "random deck")
end

5.times do
  Card.create(question: "question", answer: "answer", deck_id: deck.id)
end
round = Round.create(user_id: user.id, deck_id: deck.id)

card = Card.create(question: "question", answer: "answer", deck_id: deck.id)

10.times do
  Guess.create(round_id: round.id, card_id: card.id)
end