# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.6'
# Use sqlite3 as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.6' # mysqlのドライバー
# Use Puma as the app server
gem 'puma', '~> 5.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'activerecord-import' # Model#importメソッドを生やしてbulk insertできるようにする
gem 'carrierwave' # アップロードされてきたデータをハンドリングして、カラムへの割当や、バリデーションやリサイズをしてくれる
gem 'carrierwave-base64' # BASE64されたファイルのアップロードをできるようにする
gem 'devise' # ログインをいい感じにハンドリングする
gem 'dotenv-rails' # .envを自動的に読みこむ
gem 'draper' # Modelに表示用のメソッドを生やすためのdecoratorを定義できるようにする
gem 'faraday' # HTTPのリクエストをwrapしてくれる
gem 'global' # Railsでいい感じの設定ファイルを使うためのgem
gem 'mini_magick' # carrierwaveの動作に必要なimage magickのドライバ
gem 'validates_timeliness', '~> 5.0' # 時間関係のvalidationを追加してくれる
gem 'whenever', require: false # cronをデプロイと同時に設定してくれる

# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'faker' # いろいろなパターンのダミーデータを作成してくれるgem
  # Adds support for Capybara system testing and selenium driver
  gem 'autodoc' # テスト時にAPIのドキュメントを生成してくれる
  gem 'capybara', '~> 3.37'
  gem 'database_rewinder' # テストの時にDBを毎回クリアしてくれるgem(database_cleanerより高速)
  gem 'factory_bot_rails' # テストの初期値
  gem 'json-schema' # JSON Schemaによるバリデーションをできるようにする
  gem 'letter_opener_web' # メールサーバになって、開発時にメールの受信の確認やテストを書きやすくしてくれる
  gem 'rspec-rails', '~> 5.1' # rspecのrailsに対する拡張
  gem 'timecop' # テスト実行時に現在時間を操作してタイムトラベルするためのgem
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.8'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'annotate' # migration時に、モデルファイルにカラム構成などのスキーマ情報をコピーしてくれる
  gem 'better_errors', '>= 2.4.0' # web-consoleよりリッチなエラー画面を提供する
  gem 'binding_of_caller' # pry時にスタックトレースを辿れるようにする
  gem 'brakeman'
  gem 'bullet' # n+1問題を見つけてエラーを出してくれる
  gem 'pre-commit', require: false # コミットにフックして、各種テストを実行してくれる
  gem 'pry-byebug' # binding.pryできるようにする
  gem 'pry-rails' # Railsにpryの機能を拡張する
  gem 'rack-cors', require: 'rack/cors' # Cross-Origin Resource Sharing の設定をRackで書けるようにする
  gem 'rubocop', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
