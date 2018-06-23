# == Schema Information
#
# Table name: bookmarks
#
#  account_id    :integer
#  booknark_name :string(255)
#  status        :boolean
#  book_id       :integer
#  story_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Bookmark < ApplicationRecord
  belongs_to :account
end
