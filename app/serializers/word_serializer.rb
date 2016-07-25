require "pry"
class WordSerializer < ActiveModel::Serializer
  attributes :id, :text, :transcription, :phoneme_collection

  def phoneme_collection
    ordered_phonemes = object.words_phonemes
    ordered_phonemes.map do |character|
      character.phoneme
    end
  end
end
