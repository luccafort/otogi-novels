# == Schema Information
#
# Table name: accounts
#
#  id              :bigint(8)        unsigned, not null, primary key
#  uuid            :text(65535)      not null
#  email           :string(255)
#  name            :string(255)
#  password        :string(255)      not null
#  image_url       :string(255)
#  approved_at     :datetime
#  banned_at       :datetime
#  unsubscribed_at :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Account < ApplicationRecord
  has_many :authors
  has_many :bookmarks
end
