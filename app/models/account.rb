# == Schema Information
#
# Table name: accounts
#
#  id         :bigint(8)        not null, primary key
#  uuid       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Account < ApplicationRecord
end
