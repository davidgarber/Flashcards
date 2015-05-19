ENV['RACK_ENV'] = 'test'

require('sinatra/activerecord')
require('capybara/rspec')
require('rspec')
require('pry')
require('pg')

RSpec.configure do |config|
  config.after(:each) do
    Flashcard.all().each do |flashcard|
      flashcard.destroy()
    end
  end
end
