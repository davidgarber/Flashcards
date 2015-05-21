class Flashcard < ActiveRecord::Base
  validates :name, {:presence => true}
  validates :definition, {:presence => true}
  validates :name, uniqueness: true

  def self.get_question
    return_question = nil
    if Flashcard.where("correct = false").any?
      max_num = Flashcard.count
      rand_num = Random.new.rand(1..max_num)
      temp_question = Flashcard.find(rand_num)
      if temp_question.correct == true
        return self.get_question
      else
        return temp_question
      end
    else
      return nil
    end
  end

end
