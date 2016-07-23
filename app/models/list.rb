class List < ActiveRecord::Base
  has_many :lists_words
  has_many :words, through: :lists_words
  validates :name, presence: true
end
