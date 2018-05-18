# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180518155207) do

  create_table "accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.text "uuid", null: false, comment: "accountsとusersを紐付けるユニークなハッシュ値"
    t.string "email", comment: "ログインやアカウント登録に必要なemail"
    t.string "name", comment: "アカウント名(著者名とは違う)"
    t.string "password", null: false, comment: "暗号化されたパスワード"
    t.string "icon_iamge", comment: "アイコン画像"
    t.datetime "arrival_at", comment: "アカウント承認の日時"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "account_id", comment: "アカウントID(著者とアカウントは別扱い)"
    t.string "handle_name", comment: "ハンドルネーム(ペンネーム、著者)"
    t.string "icon_image", comment: "登録されているアイコン画像"
    t.text "profile", comment: "自己紹介文などのプロフィール"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookmarks", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "account_id", comment: "ユーザID"
    t.integer "book_id", comment: "小説の作品ID"
    t.integer "story_id", comment: "栞のあるストーリーID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "title", comment: "小説の作品タイトル"
    t.integer "status", comment: "小説の状態[\"連載中\",\"連載休止\",\"完結済み\"]"
    t.integer "summary_id", comment: "あらすじの参照ID", unsigned: true
    t.integer "description_id", comment: "小説の紹介情報ID", unsigned: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "descriptions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "book_id", comment: "小説の作品ID"
    t.text "description", comment: "小説の詳細説明文"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.text "story", comment: "小説本文"
    t.integer "status", comment: "ストーリーの状態[\"ドラフト(下書き)\", \"掲載\", \"掲載中止\"]"
    t.integer "book_id", comment: "小説の作品ID"
    t.datetime "published_at", comment: "公開日時(公開予約日時)"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "summaries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer "book_id"
    t.text "summary", comment: "あらすじ文"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
