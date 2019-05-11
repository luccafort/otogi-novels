# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_180_518_153_259) do
  create_table 'accounts', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.string 'name', comment: 'アカウント名(著者名とは違う)'
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'image_url', comment: 'アイコン画像'
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'approved_at', comment: 'アカウント承認日時'
    t.datetime 'banned_at', comment: '運営による垢バン日時'
    t.datetime 'unsubscribed_at', comment: '退会日時'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_accounts_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_accounts_on_reset_password_token', unique: true
  end

  create_table 'authors', id: :bigint, unsigned: true, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.bigint 'account_id', comment: 'アカウントID(著者とアカウントは別扱い)', unsigned: true
    t.string 'handle_name', comment: 'ハンドルネーム(ペンネーム、著者)'
    t.string 'image_url', comment: '登録されているアイコン画像'
    t.text 'profile', comment: '自己紹介文などのプロフィール'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'bookmarks', id: false, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.bigint 'account_id', comment: 'ユーザID', unsigned: true
    t.string 'label', null: false, comment: 'ラベル(ブックマーク名)'
    t.boolean 'published', default: true, null: false, comment: '公開|非公開'
    t.integer 'story_id', null: false, comment: '栞のあるストーリーID'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'books', id: :bigint, unsigned: true, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.bigint 'author_id', null: false, unsigned: true
    t.string 'title', comment: '小説の作品タイトル'
    t.integer 'status', limit: 1, comment: '小説の公開状態を表す enum["非公開(draft)","連載中(publish)","連載休止(paused)","完結済み(completed)"]'
    t.text 'summary', comment: '小説のあらすじ'
    t.text 'description', comment: '小説の詳細説明'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'stories', id: :bigint, unsigned: true, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.bigint 'book_id', comment: '小説の作品ID', unsigned: true
    t.text 'content', comment: '小説本文'
    t.integer 'status', limit: 1, comment: 'ストーリーの状態["下書き(draft)", "掲載(publish)", "掲載中止(paused)", "掲載停止(banned)"]', unsigned: true
    t.datetime 'published_at', comment: '公開日時(公開予約日時)'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
