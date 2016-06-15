require 'spec_helper'
require 'rails_helper'

RSpec.describe Word, type: :model do
  
  
  it { should validate_presence_of(:text) }
  it { should validate_presence_of(:transcription) }


end