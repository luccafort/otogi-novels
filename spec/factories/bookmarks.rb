# == Schema Information
#
# Table name: bookmarks
#
#  account_id    :integer
#  booknark_name :string(255)
#  status        :boolean
#  book_id       :integer
#  story_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryBot.define do
  factory :bookmark do
    user_id 1
    book_id 1
    story_id 1
  end
end
