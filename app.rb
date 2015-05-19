require("bundler/setup")
Bundler.require(:default, :production)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/flashcard') do
  max_num=Flashcard.count
  rand_num = Random.new.rand(1...max_num)
  @flashcard = Flashcard.find(rand_num)
  erb(:flashcard)
end
