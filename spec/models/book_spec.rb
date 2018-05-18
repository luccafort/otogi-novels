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

require 'rails_helper'

RSpec.describe Book, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
