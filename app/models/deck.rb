class Deck < ActiveRecord::Base
  # belongs_to :users
  has_many :rounds
  has_many :cards
end
