require 'rails_helper'
require 'spec_helper'

RSpec.describe WordsPhoneme do
  
  describe "WordsPhoneme" do
    it { should belong_to(:word) }
    it { should belong_to(:phoneme) }
    
    it { should validate_presence_of(:word) }
    it { should validate_presence_of(:phoneme) }
  end
  
  
end