# == Schema Information
#
# Table name: authors
#
#  id          :bigint(8)        unsigned, not null, primary key
#  account_id  :bigint(8)        unsigned
#  handle_name :string(255)
#  image_url   :string(255)
#  profile     :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Author < ApplicationRecord
  has_many :books
  belongs_to :account
end
