require 'spec_helper'
require 'rails_helper'

RSpec.describe List, type: :model do

    it { should validate_presence_of(:name) }

    it { should have_many(:words_lists) }
end
