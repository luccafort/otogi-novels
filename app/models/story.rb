# frozen_string_literal: true

# ## Schema Information
#
# Table name: `stories`
#
# ### Columns
#
# Name                | Type               | Attributes
# ------------------- | ------------------ | ---------------------------
# **`id`**            | `bigint`           | `unsigned, not null, primary key`
# **`book_id`**       | `bigint`           | `unsigned`
# **`content`**       | `text(65535)`      |
# **`status`**        | `integer`          | `unsigned`
# **`published_at`**  | `datetime`         |
# **`created_at`**    | `datetime`         | `not null`
# **`updated_at`**    | `datetime`         | `not null`
#

class Story < ApplicationRecord
  belongs_to :book, dependent: :destroy
  enum status: { draft: 0, publish: 1, paused: 2, banned: 3 }
end
