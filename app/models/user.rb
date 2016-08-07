require 'bcrypt'

class User < ActiveRecord::Base

  # users.password_hash in the database is a :string
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end


  has_many :rounds
  has_many :guesses, through: :rounds
  has_many :decks, through: :rounds
end
