# frozen_string_literal: true

FactoryBot.define do
  factory :summary do
    book_id { 1 }
    summary_text { 'MyText' }
  end
end
