# frozen_string_literal: true

# == Schema Information
#
# Table name: bookmarks
#
#  account_id    :bigint           unsigned
#  booknark_name :string(255)
#  status        :boolean
#  book_id       :integer
#  story_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
