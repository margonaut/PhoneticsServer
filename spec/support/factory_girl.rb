require "factory_girl"

FactoryGirl.define do
  factory :word do
    sequence(:text, 'a') { |n| "apples#{n}" }
    transcription 'applzzz'
  end
end
