# frozen_string_literal: true

FactoryBot.define do
  factory :bookmark do
    user_id { 1 }
    book_id { 1 }
    story_id { 1 }
  end
end
