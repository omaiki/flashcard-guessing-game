class Guess < ActiveRecord::Base #fix
  belongs_to :round
  belongs_to :card
end
