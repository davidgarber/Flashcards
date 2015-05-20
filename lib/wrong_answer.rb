class WrongAnswer < ActiveRecord::Base
  has_and_belongs_to_many(:question)
end
