# frozen_string_literal: true

# ## Schema Information
#
# Table name: `bookmarks`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`account_id`**  | `bigint`           | `unsigned`
# **`label`**       | `string(255)`      | `not null`
# **`published`**   | `boolean`          | `default(TRUE), not null`
# **`story_id`**    | `integer`          | `not null`
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#

class Bookmark < ApplicationRecord
  belongs_to :account
  belongs_to :story
end
