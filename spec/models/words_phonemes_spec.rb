require 'spec_helper'
require 'rails_helper'

RSpec.describe WordsPhoneme do
  
  describe "WordsPhoneme" do
    it { should belong_to(:word) }
    it { should belong_to(:phoneme) }
    
    it { should validate_presence_of(:word) }
    it { should validate_presence_of(:phoneme) }
    it { should validate_presence_of(:position) }
    
    it { should validate_numericality_of(:position) }
  end
end