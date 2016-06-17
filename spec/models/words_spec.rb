require 'spec_helper'
require 'rails_helper'

RSpec.describe Word, type: :model do

  describe "Word" do
    FactoryGirl.create(:word)
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:transcription) }
    
    it { should validate_uniqueness_of(:text) }
    
    it { should have_many(:words_phonemes) }
  end
end