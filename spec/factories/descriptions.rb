# == Schema Information
#
# Table name: descriptions
#
#  id          :bigint(8)        not null, primary key
#  book_id     :integer
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :description do
    book_id 1
    description "MyText"
  end
end