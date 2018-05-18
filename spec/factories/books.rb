# == Schema Information
#
# Table name: books
#
#  id             :bigint(8)        unsigned, not null, primary key
#  title          :string(255)
#  status         :integer
#  summary_id     :integer          unsigned
#  description_id :integer          unsigned
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryBot.define do
  factory :book do
    title "MyString"
    status 1
  end
end
