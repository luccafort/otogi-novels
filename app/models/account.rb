# ## Schema Information
#
# Table name: `accounts`
#
# ### Columns
#
# Name                   | Type               | Attributes
# ---------------------- | ------------------ | ---------------------------
# **`id`**               | `bigint`           | `not null, primary key`
# **`email`**            | `string(255)`      |
# **`name`**             | `string(255)`      |
# **`password`**         | `string(255)`      | `not null`
# **`image_url`**        | `string(255)`      |
# **`approved_at`**      | `datetime`         |
# **`banned_at`**        | `datetime`         |
# **`unsubscribed_at`**  | `datetime`         |
# **`created_at`**       | `datetime`         | `not null`
# **`updated_at`**       | `datetime`         | `not null`
#

class Account < ApplicationRecord
  has_many :authors
  has_many :bookmarks

  validates :uuid, presence: true
  validates :name, presence: true
  validates :name, allow_blank: true, length: {in: 1..255}
end
