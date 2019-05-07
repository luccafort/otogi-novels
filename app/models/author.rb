# ## Schema Information
#
# Table name: `authors`
#
# ### Columns
#
# Name               | Type               | Attributes
# ------------------ | ------------------ | ---------------------------
# **`id`**           | `bigint`           | `unsigned, not null, primary key`
# **`account_id`**   | `bigint`           | `unsigned`
# **`handle_name`**  | `string(255)`      |
# **`image_url`**    | `string(255)`      |
# **`profile`**      | `text(65535)`      |
# **`created_at`**   | `datetime`         | `not null`
# **`updated_at`**   | `datetime`         | `not null`
#

class Author < ApplicationRecord
  has_many :books
  belongs_to :account
end
