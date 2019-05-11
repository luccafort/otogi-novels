class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories, id: :bigint, unsigned: true do |t|
      t.integer :book_id, limit: 8, unsigned: true, comment: '小説の作品ID'
      t.text :content, comment: '小説本文'
      t.integer :status, limit: 1, unsigned: true, comment: 'ストーリーの状態["下書き(draft)", "掲載(publish)", "掲載中止(paused)", "掲載停止(banned)"]'
      t.datetime :published_at, comment: '公開日時(公開予約日時)'

      t.timestamps
    end
  end
end
