class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts, id: :bigint, unsigned: true do |t|
      t.text :uuid, unique: true, null: false, comment: 'アカウントごとにユニークなハッシュ値'
      t.string :email, comment: 'emailはユニークかつ全て小文字で登録される'
      t.string :name, comment: 'アカウント名(著者名とは違う)'
      t.string :password, unique: true, null: false, comment: '暗号化されたパスワード'
      t.string :image_url, comment: 'アイコン画像'
      t.datetime :approved_at, comment: 'アカウント承認日時'
      t.datetime :banned_at, comment: '運営による垢バン日時'
      t.datetime :unsubscribed_at, comment: '退会日時'

      t.timestamps
    end
  end
end
