# == Schema Information
#
# Table name: summaries
#
#  id           :bigint(8)        not null, primary key
#  book_id      :integer
#  summary_text :text(65535)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Summary < ApplicationRecord
end
