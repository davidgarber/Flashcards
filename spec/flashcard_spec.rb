require('spec_helper')

describe(Flashcard) do
  it("validates the presence of a name") do
    flashcard = Flashcard.new({:name => ""})
    expect(flashcard.save()).to(eq(false))
  end
  it("checks to make sure correct is set to false") do
    flashcard= Flashcard.new(name: "Test")
    flashcard.save
    expect(flashcard.correct).to(eq(false))
  end

end
