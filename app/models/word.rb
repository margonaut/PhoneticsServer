class Word < ActiveRecord::Base
  has_many :words_phonemes
  
  validates :text, presence: true
  validates :transcription, presence: true
  
  validates :text, uniqueness: true
end