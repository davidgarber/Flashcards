class CreateWrongColumns < ActiveRecord::Migration
  def change
    add_column :flashcards, :wrong1, :integer
    add_column :flashcards, :wrong2, :integer
    add_column :flashcards, :wrong3, :integer

  end
end
