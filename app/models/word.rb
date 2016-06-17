class Word < ActiveRecord::Base
  validates :text, presence: true
  validates :transcription, presence: true
  
  validates :text, uniqueness: true
  
  
end