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

ActiveRecord::Schema.define(version: 2018_05_18_153259) do

  create_table "accounts", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.text "uuid", null: false, comment: "アカウントごとにユニークなハッシュ値"
    t.string "email", comment: "emailはユニークかつ全て小文字で登録される"
    t.string "name", comment: "アカウント名(著者名とは違う)"
    t.string "password", null: false, comment: "暗号化されたパスワード"
    t.string "image_url", comment: "アイコン画像"
    t.datetime "approved_at", comment: "アカウント承認日時"
    t.datetime "banned_at", comment: "運営による垢バン日時"
    t.datetime "unsubscribed_at", comment: "退会日時"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "account_id", comment: "アカウントID(著者とアカウントは別扱い)"
    t.string "handle_name", comment: "ハンドルネーム(ペンネーム、著者)"
    t.string "image_url", comment: "登録されているアイコン画像"
    t.text "profile", comment: "自己紹介文などのプロフィール"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookmarks", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "account_id", comment: "ユーザID"
    t.string "booknark_name", comment: "ブックマーク名"
    t.boolean "status", comment: "Enum[:public(公開)、:private(非公開))"
    t.integer "book_id", comment: "小説の作品ID"
    t.integer "story_id", comment: "栞のあるストーリーID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "title", comment: "小説の作品タイトル"
    t.integer "status", comment: "小説の公開状態を表す enum[\"非公開(draft)\",\"連載中(publish)\",\"連載休止(paused)\",\"完結済み(completed)\"]"
    t.text "summary", comment: "小説のあらすじ"
    t.text "description", comment: "小説の詳細説明"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "book_id", comment: "小説の作品ID"
    t.text "story", comment: "小説本文"
    t.integer "status", comment: "ストーリーの状態[\"下書き(draft)\", \"掲載(publish)\", \"掲載中止(paused)\"]"
    t.datetime "published_at", comment: "公開日時(公開予約日時)"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
