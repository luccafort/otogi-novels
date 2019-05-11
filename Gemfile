source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Use sqlite3 as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.6' # mysqlのドライバー
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'global'

gem 'devise' # ログインをいい感じにハンドリングする
gem 'faraday' # HTTPのリクエストをwrapしてくれる
gem 'dotenv-rails' # .envを自動的に読みこむ
gem 'activerecord-import' # Model#importメソッドを生やしてbulk insertできるようにする
gem 'draper' # Modelに表示用のメソッドを生やすためのdecoratorを定義できるようにする
gem 'carrierwave' # アップロードされてきたデータをハンドリングして、カラムへの割当や、バリデーションやリサイズをしてくれる
gem 'carrierwave-base64' # BASE64されたファイルのアップロードをできるようにする
gem 'mini_magick' # carrierwaveの動作に必要なimage magickのドライバ
gem 'whenever', require: false # cronをデプロイと同時に設定してくれる
gem 'validates_timeliness', '~> 4.0' # 時間関係のvalidationを追加してくれる

# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'faker' # いろいろなパターンのダミーデータを作成してくれるgem
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'rspec-rails', '~> 3.5' # rspecのrailsに対する拡張
  gem 'database_rewinder' # テストの時にDBを毎回クリアしてくれるgem(database_cleanerより高速)
  gem 'letter_opener_web' # メールサーバになって、開発時にメールの受信の確認やテストを書きやすくしてくれる
  gem "autodoc" # テスト時にAPIのドキュメントを生成してくれる
  gem 'json-schema' # JSON Schemaによるバリデーションをできるようにする
  gem 'factory_bot_rails' # テストの初期値
  gem 'timecop' # テスト実行時に現在時間を操作してタイムトラベルするためのgem
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', require: false
  gem 'annotate' # migration時に、モデルファイルにカラム構成などのスキーマ情報をコピーしてくれる
  gem 'brakeman'
  gem 'better_errors', '>= 2.4.0' # web-consoleよりリッチなエラー画面を提供する
  gem 'bullet' # n+1問題を見つけてエラーを出してくれる
  gem "pre-commit", require: false # コミットにフックして、各種テストを実行してくれる
  gem 'rack-cors', :require => 'rack/cors' # Cross-Origin Resource Sharing の設定をRackで書けるようにする
  gem 'pry-byebug' # binding.pryできるようにする
  gem 'pry-rails' # Railsにpryの機能を拡張する
  gem 'binding_of_caller' # pry時にスタックトレースを辿れるようにする
end