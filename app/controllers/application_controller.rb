class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # TODO:著者の所有者アカウントのみアクセス可能(小説の編集、削除、登録などなど)
  # TODO:アカウント認証チェック
  # TODO:レスポンスの共通化(正常系)
  # TODO:レスポンスの共通化(異常系)
end
