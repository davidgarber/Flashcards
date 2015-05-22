require("bundler/setup")
Bundler.require(:default, :production)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

# @@flashcards = Flashcard.all

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

get('/add_card') do
  erb(:add_card)
end

post('/add_card') do
  name = params.fetch("name")
  definition = params.fetch("definition")
  flashcard = Flashcard.new({:name => name, :definition => definition})
  if flashcard.save
    redirect('/add_card_success')
  else
    erb(:card_add_error)
  end
end

get('/add_card_success') do
  erb(:card_success)
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

patch('/reset_flashcards') do
  Flashcard.update_all(:correct => false)
  redirect('/flashcard')
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
 @answer = params["answer"]
  if @answer == nil
     redirect ('/quiz#error')
  else
    @answer = params.fetch("answer")
    @definition = params.fetch("definition")
    if
      @answer == @definition
      @correct = "Correct!"
    else
      @correct = "Not Correct"
    end
    erb(:success)
  end

end


get('/success') do
  erb(:success)
end
