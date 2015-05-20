class Question < ActiveRecord::Base
  belongs_to(:answer)
  has_and_belongs_to_many(:wrong_answer)
end
