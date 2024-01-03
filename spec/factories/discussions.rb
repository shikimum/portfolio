FactoryBot.define do
  factory :discussion do
    title { "Sample Discussion" }
    volume { "Volume 1" }
    body { "This is a sample discussion body." }
    association :user, factory: :user
  end
end