# frozen_string_literal: true

class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name, comment: 'アカウント名(著者名とは違う)'
      ## Database authenticatable
      t.string :email,              null: false, default: ''
      t.string :encrypted_password, null: false, default: ''
      t.string :image_url, comment: 'アイコン画像'

      ## Recoverable
      t.string   :reset_password_token, after: :banned_at
      t.datetime :reset_password_sent_at, after: :reset_password_token

      ## Rememberable
      t.datetime :remember_created_at

      t.datetime :approved_at, comment: 'アカウント承認日時'
      t.datetime :banned_at, comment: '運営による垢バン日時'
      t.datetime :unsubscribed_at, comment: '退会日時'

      t.timestamps
    end

    add_index :accounts, :email,                unique: true
    add_index :accounts, :reset_password_token, unique: true
  end
end
