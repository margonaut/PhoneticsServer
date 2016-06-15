require 'spec_helper'
require 'rails_helper'

RSpec.describe Word, type: :model do
  
  
  describe "Columns" do
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:transcription) }
  end
  
  describe "Uniqueness" do
    it { should validate_uniqueness_of(:text) }
  end
  


end