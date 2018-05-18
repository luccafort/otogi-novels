class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks, id: false, primary_key: [:account_id, :book_id, :story_id] do |t|
      t.integer :account_id, comment: 'ユーザID'
      t.integer :book_id, comment: '小説の作品ID'
      t.integer :story_id, comment: '栞のあるストーリーID'

      t.timestamps
    end
  end
end
