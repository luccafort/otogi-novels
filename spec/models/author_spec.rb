# == Schema Information
#
# Table name: authors
#
#  id          :bigint           unsigned, not null, primary key
#  account_id  :bigint           unsigned
#  handle_name :string(255)
#  image_url   :string(255)
#  profile     :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Author, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
