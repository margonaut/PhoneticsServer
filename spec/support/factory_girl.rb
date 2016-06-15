require "factory_girl"

FactoryGirl.define do
  factory :word do
    # binding.pry
    sequence(:text) { |n| "apples#{n}" }
    transcription 'applzzz'
  end
end