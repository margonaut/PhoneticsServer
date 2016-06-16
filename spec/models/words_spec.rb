require 'spec_helper'
require 'rails_helper'

RSpec.describe Word, type: :model do
  
  
  describe "Text" do
    FactoryGirl.create(:word)
    it { should validate_uniqueness_of(:text) }
    it { should validate_presence_of(:text) }
    
    it { should_not allow_value("cat1").for(:text) }
    it { should allow_value("catty").for(:text) }
  end
  
  describe "Transcription" do
    it { should validate_presence_of(:transcription) }
  end
end