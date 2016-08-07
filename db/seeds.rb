

d = Deck.create(title: "Pokemon")

x = Card.create(question: "Who's that Pokemon?", answer: "Pikachu")
# Deck.all.each { |deck| deck.cards << x}
d.cards << x

y = Card.create(question: "Who's that Pokemon?", answer: "Charmander")
# Deck.all.each { |deck| deck.cards << y }
d.cards << y

z = Card.create(question: "Who's that Pokemon?", answer: "Bulbasaur")
# Deck.all.each { |deck| deck.cards << z}
d.cards << z

# d.save


# 5.times do
#   deck = Deck.create(title: Faker::App.name)
# end

history = Deck.create(title: "History")
3.times do
  x = Card.create(question: "question", answer: "answer")
  history.cards << x
end

sports = Deck.create(title: "Sports")
3.times do
  x = Card.create(question: "question", answer: "answer")
  sports.cards << x
end

politics = Deck.create(title: "Politics")
3.times do
  x = Card.create(question: "question", answer: "answer")
  politics.cards << x
end

misc = Deck.create(title: "Miscellaneous")
3.times do
  x = Card.create(question: "question", answer: "answer")
  misc.cards << x
end

bob = User.create(username: "bob", email: "bob@bob.com", password: "bob")

bob.decks << d
bob.decks << history
bob.decks << sports
bob.decks << politics
bob.decks << misc


# 3.times do
#   x = Card.create(question: Faker::StarWars.quote, answer: Faker::StarWars.character)
#   star_wars << x
# end

# 3.times do
#   x = Card.create(question: "question", answer: "answer")
#   history << x
# end


