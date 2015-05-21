class Flashcard < ActiveRecord::Base
  validates :name, {:presence => true}
  validates :definition, {:presence => true}
  validates :name, uniqueness: true

    def self.get_question
    return_question = nil
    max_num = Flashcard.count
    rand_num = Random.new.rand(1..max_num)
    temp_question = Flashcard.find(rand_num)
    if temp_question.correct == true && Flashcard.where("correct = false") != nil
      self.get_question #while there are still false questions, loop this to stop when ("correct = false") == nil?
    elsif temp_question.correct == false && Flashcard.where("correct = false") == nil #figure out why this is happening when there are still false questions
      return_question = nil
    else
      return_question = temp_question
    end
    return_question
  end


end
