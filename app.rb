require("bundler/setup")
Bundler.require(:default, :production)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

# get('/flashcard') do
#   max_num=Flashcard.count
#   rand_num = Random.new.rand(1...max_num)
#   @flashcard = Flashcard.find(rand_num)
#   erb(:flashcard)
# end

get('/flashcard') do
  @flashcard = Flashcard.get_question
  erb(:flashcard)
end

patch('/flashcard_success') do
  flashcard = Flashcard.find(params.fetch("id"))
  flashcard.update(correct: true)
  redirect('/flashcard')
end

get('/correct') do
  @flashcards = Flashcard.where("correct = true")
  erb(:correct_cards)
end

get('/quiz') do
  @flashcard = Flashcard.get_question
  @wrong1 = @flashcard.wrong1
  @wrong2 = @flashcard.wrong2
  @wrong3 = @flashcard.wrong3

  @wronganswer1 = Flashcard.find(@wrong1)
  @wronganswer2 = Flashcard.find(@wrong2)
  @wronganswer3 = Flashcard.find(@wrong3)

  @choice1 = @flashcard.definition
  @choice2 = @wronganswer1.definition
  @choice3 = @wronganswer2.definition
  @choice4 = @wronganswer3.definition
  @choices = []
  @choices.push(@choice1, @choice2, @choice3, @choice4)
  @choices.sort_by! { rand }

  erb(:quiz)
end

post('/quiz') do
  @answer = params.fetch("answer")
  erb(:success)
end


get('/success') do
  erb(:success)
end
