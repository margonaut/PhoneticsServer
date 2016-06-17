class WordsPhoneme < ActiveRecord::Base
  belongs_to :word
  belongs_to :phoneme
  
  validates :word, presence: true
  validates :phoneme, presence: true
  validates :position, presence: true
  
  validates :position, numericality: true
end