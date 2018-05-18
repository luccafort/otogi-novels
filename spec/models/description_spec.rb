# == Schema Information
#
# Table name: descriptions
#
#  id          :bigint(8)        not null, primary key
#  book_id     :integer
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Description, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
