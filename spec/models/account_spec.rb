# == Schema Information
#
# Table name: accounts
#
#  id         :bigint(8)        not null, primary key
#  uuid       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Account, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
