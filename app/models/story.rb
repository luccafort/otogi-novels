# == Schema Information
#
# Table name: stories
#
#  id           :bigint(8)        unsigned, not null, primary key
#  book_id      :bigint(8)        unsigned
#  story        :text(65535)
#  status       :integer          unsigned
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Story < ApplicationRecord
end
