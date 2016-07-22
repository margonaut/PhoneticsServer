class ListsWord < ActiveRecord::Base
  belongs_to :list
  belongs_to :word

  validates :list, presence: true
  validates :word, presence: true
end
