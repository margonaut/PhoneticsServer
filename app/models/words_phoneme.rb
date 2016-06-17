class WordsPhoneme < ActiveRecord::Base
  belongs_to :word
  belongs_to :phoneme
end