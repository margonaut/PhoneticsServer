require "factory_girl"

FactoryGirl.define do
  factory :word do
    sequence(:text, 'b') { |n| "apples#{n}" }
    transcription 'applzzz'
  end
end
