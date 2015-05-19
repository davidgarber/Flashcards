class Flashcard < ActiveRecord::Base
  validates :name, {:presence => true}
  validates :definition, {:presence => true}
  validates :name, uniqueness: true
end
