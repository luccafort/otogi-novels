# == Schema Information
#
# Table name: stories
#
#  id           :bigint(8)        unsigned, not null, primary key
#  book_id      :bigint(8)        unsigned
#  story        :text(65535)
#  status       :integer          unsigned
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :story do
    novel_text "MyText"
    posted_at "2018-05-18 23:53:18"
    published_at "2018-05-18 23:53:18"
  end
end
