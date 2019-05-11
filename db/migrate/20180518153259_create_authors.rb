# frozen_string_literal: true

class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors, id: :bigint, unsigned: true do |t|
      t.integer :account_id, limit: 8, unsigned: true, comment: 'アカウントID(著者とアカウントは別扱い)'
      t.string :handle_name, comment: 'ハンドルネーム(ペンネーム、著者)'
      t.string :image_url, comment: '登録されているアイコン画像'
      t.text :profile, comment: '自己紹介文などのプロフィール'

      t.timestamps
    end
  end
end
