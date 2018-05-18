class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books, id: :bigint, unsigned: true do |t|
      t.string :title, comment: '小説の作品タイトル'
      t.integer :status, comment: '小説の状態["連載中","連載休止","完結済み"]'
      t.integer :summary_id, unsigned: true, comment: 'あらすじの参照ID'
      t.integer :description_id, unsigned: true, comment: '小説の紹介情報ID'

      t.timestamps
    end
  end
end
