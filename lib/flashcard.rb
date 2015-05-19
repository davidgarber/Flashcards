class Flashcard < ActiveRecord::Base
  validates(:name, :definition {:presence => true})
  validates(:name, uniqueness: true)
end
