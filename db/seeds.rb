d = Deck.create(title: "Who's that Pokemon?")

x = Card.create(question: "Who's that Pokemon?", answer: "Pikachu")
# Deck.all.each { |deck| deck.cards << x}
d.cards << x

y = Card.create(question: "Who's that Pokemon?", answer: "Charmander")
# Deck.all.each { |deck| deck.cards << y }
d.cards << y



z = Card.create(question: "Who's that Pokemon?", answer: "Bulbasaur")
# Deck.all.each { |deck| deck.cards << z}
d.cards << z

d.save


