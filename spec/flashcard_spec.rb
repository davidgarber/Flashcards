require('spec_helper')

describe(Flashcard) do

    it("validates the presence of a name") do
      flashcard = Flashcard.new({:name => ""})
      expect(flashcard.save()).to(eq(false))
    end
  end
