# == Schema Information
#
# Table name: stories
#
#  id           :bigint(8)        unsigned, not null, primary key
#  story        :text(65535)
#  status       :integer
#  book_id      :integer
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Story < ApplicationRecord
end
