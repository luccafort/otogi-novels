class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories, id: :bigint, unsigned: true do |t|
      t.text :story, comment: '小説本文'
      t.integer :status, comment: 'ストーリーの状態["ドラフト(下書き)", "掲載", "掲載中止"]'
      t.integer :book_id, comment: '小説の作品ID'
      t.datetime :published_at, comment: '公開日時(公開予約日時)'

      t.timestamps
    end
  end
end
