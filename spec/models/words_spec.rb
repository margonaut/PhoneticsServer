require 'spec_helper'
require 'rails_helper'

RSpec.describe Word, type: :model do
  
  
  describe "Columns" do
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:transcription) }
  end
  
  describe "Uniqueness" do
    FactoryGirl.create(:word)
    it { should validate_uniqueness_of(:text) }
  end
  
  describe "Letter values only" do
    it { should_not allow_value("cat1").for(:text) }
    it { should allow_value("catty").for(:text) }
  end
  


end