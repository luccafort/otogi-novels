# frozen_string_literal: true

FactoryBot.define do
  factory :account do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { Faker::Alphanumeric.alphanumeric 32 }
    image_url { Faker::Avatar.image }
  end

  trait :with_author do
    transient do
      create_author_count { 1 }
    end

    after(:create) do |account, evaluator|
      evaluator.create_author_count.times do
        FactoryBot.create :author, account: account
      end
    end
  end
end
