require 'rails_helper'
require 'spec_helper'

RSpec.describe WordsPhoneme do
  
  describe "WordsPhoneme" do
    # it { should validate_presence_of(:) }
    it { should belong_to(:word) }
    it { should belong_to(:phoneme) }
  end
end