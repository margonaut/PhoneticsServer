require 'spec_helper'
require 'rails_helper'

RSpec.describe Phoneme, type: :model do
  
  describe "Symbol" do
    it { should validate_presence_of(:symbol) }
    it { should validate_uniqueness_of(:symbol) }
    
    it { should have_many(:words_phonemes) }
  end
  
end