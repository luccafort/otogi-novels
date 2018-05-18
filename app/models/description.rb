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

class Description < ApplicationRecord
  belongs_to :book
end
