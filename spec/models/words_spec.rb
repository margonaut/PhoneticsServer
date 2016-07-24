require 'spec_helper'
require 'rails_helper'
require 'pry'

RSpec.describe Word, type: :model do

  describe "Word" do

    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:transcription) }

    it { should have_many(:words_phonemes) }
    it { should have_many(:phonemes) }

    it { should have_many(:lists_words) }

    describe "uniqueness" do
      # Currently separated out due to a bug with
      # this version of shoulda-matchers
      before(:each) do
        Word.destroy_all
        FactoryGirl.create(:word)
      end
      it { should validate_uniqueness_of(:text) }

    end

  end
end
