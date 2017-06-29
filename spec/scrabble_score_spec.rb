require ('rspec')
  require ('scrabble_score')

describe('String#word_score') do
  it("returns a scrabble score for a letter") do
      expect("A".word_score()).to(eq(1))
    end
end
