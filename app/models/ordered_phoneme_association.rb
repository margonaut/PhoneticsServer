require 'pry'

class OrderedPhonemeAssociation
  def initialize(word, phonemes)
    @word = word
    @phonemes = phonemes
    @ordered_phonemes = order_word_phonemes
  end

  def order_word_phonemes
    @phonemes.each_with_index do |symbol, i|
      phoneme = Phoneme.find_by(symbol: symbol)
      WordsPhoneme.create!(word: @word, phoneme: phoneme, position: i)
    end
  end
end
