class Word < ActiveRecord::Base
  validates :text, presence: true
  validates :text, uniqueness: true
  validates_format_of :text, :with => /\A[a-zA-Z]+\z/,  :message => "Words should contain only regular letters"
  
  validates :transcription, presence: true
  
end