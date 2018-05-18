# == Schema Information
#
# Table name: accounts
#
#  id         :bigint(8)        not null, primary key
#  uuid       :text(65535)      not null
#  email      :string(255)
#  name       :string(255)
#  password   :string(255)      not null
#  icon_iamge :string(255)
#  arrival_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Account < ApplicationRecord
  has_many :authors
  has_many :bookmarks
end
