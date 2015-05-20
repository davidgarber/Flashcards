ENV['RACK_ENV'] = 'test'

require('sinatra/activerecord')
require('capybara/rspec')
require('flashcard')
require('question')
require('answer')
require('wrong_answer')
require('rspec')
require('pry')
require('pg')

RSpec.configure do |config|
  config.after(:each) do
    Flashcard.all().each do |flashcard|
      flashcard.destroy()
    end
    Question.all().each do |question|
      question.destroy()
    end
    Answer.all().each do |answer|
      answer.destroy()
    end
    WrongAnswer.all().each do |wronganswer|
      wronganswer.destroy()
  end
end
