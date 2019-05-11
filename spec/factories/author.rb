# frozen_string_literal: true

FactoryBot.define do
  factory :author do
    handle_name { Faker::Twitter.screen_name }
    image_url { Faker::Avatar.image }
    profile { Faker::Twitter.user[:description] }
  end
end
