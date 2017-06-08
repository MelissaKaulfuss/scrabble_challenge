require 'scrabble'

describe Scrabble do

  let (:game) { Scrabble.new }
  let (:word) { "cabbage" }


  describe '#score' do
    context 'when the string contains expected content' do
      it 'returns a number score when given a word' do
        expect(game.score(word)).to eq(14)
      end
    end

    context 'when the string contains unexpected content' do
      context 'when it is an empty string' do
        let(:word) { " " }

        it 'returns a zero when given an empty string' do
          expect(game.score(word)).to eq(0)
        end
      end

      context 'when it is nil' do
        let(:word) { nil }

        it 'returns a zero when given nothing' do
          expect(game.score(word)).to eq(0)
        end
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