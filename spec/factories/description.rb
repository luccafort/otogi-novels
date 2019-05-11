# frozen_string_literal: true

FactoryBot.define do
  factory :description do
    book_id { 1 }
    description { 'MyText' }
  end
end
