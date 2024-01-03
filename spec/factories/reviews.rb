require 'faker'

FactoryBot.define do
  factory :review do
    title { Faker::Lorem.sentence(word_count: 5) }
    body { Faker::Lorem.paragraph(sentence_count: 5) }
    association :manga
    association :user
  end
end