# frozen_string_literal: true

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

require 'rails_helper'

RSpec.describe Summary, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
