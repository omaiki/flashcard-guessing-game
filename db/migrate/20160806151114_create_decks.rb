class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :title, null: false
      # t.integer :user_id

      t.timestamps null:false
    end
  end
end
