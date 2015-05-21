class DropBadTables < ActiveRecord::Migration
  def change
    drop_table(:questions)
    drop_table(:wrong_answers)
    drop_table(:answers)
  end
end
