require 'scrabble'
require 'dictionary'

describe Scrabble do
  subject(:scrabble) { Scrabble.new }

  it 'starts a new game of scrabble' do
    expect(game).to eq(Scrabble.new)
  end

  describe '#score' do
    context 'when the string contains expected content' do
      it 'returns a number score when given a word' do
        expect(game.score("cabbage")).to eq(7)
      end
    end

    context 'when the string contains unexpected content' do
      it 'returns a zero when given an empty string' do
        expect(game.score(" ")).to eq(0)
      end

      it 'returns a zero when given nothing' do
        expect(game.score(nil)).to eq(0)
      end
    end
  end

end

# > game = Scrabble.new
# > game.score("hello")
# => 8
# > game.score("cabbage")
# => 14
# > game.score("")
# => 0
# > game.score(nil)
# => 0