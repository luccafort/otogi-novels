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

require 'rails_helper'

RSpec.describe Author, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
