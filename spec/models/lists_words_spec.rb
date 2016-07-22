require 'rails_helper'
require 'spec_helper'

RSpec.describe ListsWord, type: :model do
  it { should validate_presence_of(:word) }
  it { should validate_presence_of(:list) }
end
