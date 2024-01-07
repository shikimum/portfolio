require 'faker'

FactoryBot.define do
  factory :discussion do
    body { Faker::Lorem.paragraph(sentence_count: 5) }
    sequence(:title) { |n| "Discussion Title #{n}" }  # 一意のタイトルを生成する
    sequence(:volume) { |n| "Volume #{n}" } 
    association :user
  end
end