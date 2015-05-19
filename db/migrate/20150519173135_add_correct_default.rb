class AddCorrectDefault < ActiveRecord::Migration
  def self.up
    change_column :flashcards, :correct, :boolean, {:default => false}
  end
end
