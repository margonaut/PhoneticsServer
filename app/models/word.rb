class Word < ActiveRecord::Base
  has_many :words_phonemes
  has_many :lists_words
  has_many :phonemes, through: :words_phonemes

  validates :text, presence: true
  validates :transcription, presence: true

  validates :text, uniqueness: true
end
