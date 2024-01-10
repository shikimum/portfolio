require 'faker'

FactoryBot.define do
  factory :review do
    body { Faker::Lorem.paragraph(sentence_count: 5) }
    manga { Manga.find(1) }
    association :user
  end
end
