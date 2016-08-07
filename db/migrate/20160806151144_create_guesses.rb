class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.boolean :correct, default: false
      t.boolean :asked?, default: false
      t.integer :round_id
      t.integer :card_id

      t.timestamps null:false
    end
  end
end
