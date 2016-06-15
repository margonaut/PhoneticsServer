class Word < ActiveRecord::Base
  validates :text, presence: true
  validates :text, uniqueness: true
  validates :transcription, presence: true
  
end