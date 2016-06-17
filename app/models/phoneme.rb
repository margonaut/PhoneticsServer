class Phoneme < ActiveRecord::Base
  has_many :words_phonemes
  
  validates :symbol, presence: true
  validates :symbol, uniqueness: true
end