# frozen_string_literal: true

# ## Schema Information
#
# Table name: `accounts`
#
# ### Columns
#
# Name                          | Type               | Attributes
# ----------------------------- | ------------------ | ---------------------------
# **`id`**                      | `bigint`           | `not null, primary key`
# **`name`**                    | `string(255)`      |
# **`email`**                   | `string(255)`      | `default(""), not null`
# **`encrypted_password`**      | `string(255)`      | `default(""), not null`
# **`image_url`**               | `string(255)`      |
# **`reset_password_token`**    | `string(255)`      |
# **`reset_password_sent_at`**  | `datetime`         |
# **`remember_created_at`**     | `datetime`         |
# **`approved_at`**             | `datetime`         |
# **`banned_at`**               | `datetime`         |
# **`unsubscribed_at`**         | `datetime`         |
# **`created_at`**              | `datetime`         | `not null`
# **`updated_at`**              | `datetime`         | `not null`
#
# ### Indexes
#
# * `index_accounts_on_email` (_unique_):
#     * **`email`**
# * `index_accounts_on_reset_password_token` (_unique_):
#     * **`reset_password_token`**
#

class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :authors, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  validates :name, presence: true
  validates :name, allow_blank: true, length: {in: 1..255}
end
