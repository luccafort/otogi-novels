# == Schema Information
#
# Table name: books
#
#  id          :bigint(8)        unsigned, not null, primary key
#  title       :string(255)
#  status      :integer
#  summary     :text(65535)
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :book do
    title "MyString"
    status 1
  end
end
