require 'faker'

FactoryBot.define do
  factory :like do
    association :user
    manga { Manga.find(1) }
  end
end
