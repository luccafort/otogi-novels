# == Schema Information
#
# Table name: authors
#
#  id          :bigint(8)        not null, primary key
#  account_id  :integer
#  handle_name :string(255)
#  icon_image  :string(255)
#  profile     :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :author do
    account_id 1
    handle_name "MyString"
    icon_image "MyString"
    profile "MyText"
  end
end
