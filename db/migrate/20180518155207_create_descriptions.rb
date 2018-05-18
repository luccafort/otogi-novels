class CreateDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :descriptions do |t|
      t.integer :book_id, comment: '小説の作品ID'
      t.text :description, comment: '小説の詳細説明文'

      t.timestamps
    end
  end
end
