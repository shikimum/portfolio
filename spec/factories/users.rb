require 'faker'

FactoryBot.define do
  factory :user do
    users_name { Faker::Name.name }
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
  end
end
