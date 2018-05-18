class CreateSummaries < ActiveRecord::Migration[5.1]
  def change
    create_table :summaries do |t|
      t.integer :book_id, commnet: '小説の作品ID'
      t.text :summary, comment: 'あらすじ文'

      t.timestamps
    end
  end
end
