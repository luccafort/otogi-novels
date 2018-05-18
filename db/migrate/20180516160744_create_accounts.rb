class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.text :uuid, :unique => true, null: false, comment: 'accountsとusersを紐付けるユニークなハッシュ値'
      t.string :email, comment: 'ログインやアカウント登録に必要なemail'
      t.string :name, comment: 'アカウント名(著者名とは違う)'
      t.string :password, :unique => true, null: false, comment: '暗号化されたパスワード'
      t.string :icon_iamge, comment: 'アイコン画像'
      t.datetime :arrival_at, comment: 'アカウント承認の日時'

      t.timestamps
    end
  end
end
