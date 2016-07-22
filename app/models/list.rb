class List < ActiveRecord::Base
  has_many :lists_words
  validates :name, presence: true
end
