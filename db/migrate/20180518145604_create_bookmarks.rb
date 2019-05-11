# frozen_string_literal: true

class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks, id: false, primary_key: [:account_id, :book_id, :story_id] do |t|
      t.integer :account_id, limit: 8, unsigned: true, comment: 'ユーザID'
      t.string :label, null: false, comment: 'ラベル(ブックマーク名)'
      t.boolean :published, default: true, null: false, comment: '公開|非公開'
      t.integer :story_id, null: false, comment: '栞のあるストーリーID'

      t.timestamps
    end
  end
end
