require 'faker'

FactoryBot.define do
  factory :like do
    association :user
    manga { Manga.first }
  end
end
