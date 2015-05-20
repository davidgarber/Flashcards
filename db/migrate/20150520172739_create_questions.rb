class CreateQuestions < ActiveRecord::Migration
  def change
    create_table(:questions) do |t|
      t.column(:question, :string)
      t.column(:correct, :boolean)
    end

    create_table(:answers) do |t|
      t.column(:answer, :string)
    end

    create_table(:wrong_answers) do |t|
      t.column(:wrong_answer1, :string)
      t.column(:wrong_answer2, :string)
      t.column(:wrong_answer3, :string)
    end
  end
end
