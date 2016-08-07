class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.boolean :correct, null: false
      t.belongs_to :round
      t.integer :attempts
      t.integer :card_id

      t.timestamps null:false
    end
  end
end
