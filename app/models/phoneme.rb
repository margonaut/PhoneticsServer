class Phoneme < ActiveRecord::Base
  validates :symbol, presence: true
  validates :symbol, uniqueness: true
  
end