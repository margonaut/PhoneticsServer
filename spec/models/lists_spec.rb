require 'spec_helper'
require 'rails_helper'

RSpec.describe List, type: :model do

  describe "List" do
    it { should validate_presence_of :name }

    # it { should belong }
  end
end
