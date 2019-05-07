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
# **`story`**         | `text(65535)`      |
# **`status`**        | `integer`          | `unsigned`
# **`published_at`**  | `datetime`         |
# **`created_at`**    | `datetime`         | `not null`
# **`updated_at`**    | `datetime`         | `not null`
#

class Story < ApplicationRecord
end
