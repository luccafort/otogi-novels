# frozen_string_literal: true

# == Schema Information
#
# Table name: stories
#
#  id           :bigint           unsigned, not null, primary key
#  book_id      :bigint           unsigned
#  story        :text(65535)
#  status       :integer          unsigned
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe Story, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
