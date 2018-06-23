class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books, id: :bigint, unsigned: true do |t|
      t.string :title, comment: '小説の作品タイトル'
      t.integer :status, limit: 1, comment: '小説の公開状態を表す enum["非公開(draft)","連載中(publish)","連載休止(paused)","完結済み(completed)"]'
      t.text :summary, comment: '小説のあらすじ'
      t.text :description, comment: '小説の詳細説明'

      t.timestamps
    end
  end
end
