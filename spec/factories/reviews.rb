require 'faker'

FactoryBot.define do
  factory :review do
    body { Faker::Lorem.paragraph(sentence_count: 5) }
    manga { Manga.first }
    association :user
  end
end
