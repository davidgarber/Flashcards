class BuildTables < ActiveRecord::Migration
  def change
    create_table(:flashcards) do |t|
      t.column(:name, :string)
      t.column(:definition, :string)
      t.column(:correct, :boolean)
    end
  end
end
