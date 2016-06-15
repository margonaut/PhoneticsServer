require 'spec_helper'

describe Word do
  
  it { should validate_presence_of(:text) }
  it { should validate_presence_of(:transcription) }
  
end