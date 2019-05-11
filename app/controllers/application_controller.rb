# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # TODO: 著者の所有者アカウントのみアクセス可能(小説の編集、削除、登録などなど)
  # TODO:アカウント認証チェック

  # レスポンスの共通化(正常系)
  # http status: 200
  def render_ok(json)
    render_by :ok, json: json
  end

  # http status: 201
  def render_created(json)
    render_by :created, json: json
  end

  # http status: 204
  def render_no_content
    render_by :no_content, json: nil
  end

  # レスポンスの共通化(異常系)
  # http status: 400
  def render_bad_request(error_message)
    render_by :bad_request, type: :bad_request_params, message: error_message
  end

  # http status: 401
  def render_unauthorized(error_message)
    render_by :unauthorized, type: :unauthorized_params, message: error_message
  end

  # http status: 403
  def render_forbidden(error_message)
    render_by :forbidden, type: :forbidden_params, message: error_message
  end

  # http status: 404
  def render_not_found(error_message)
    render_by :not_found, type: :not_found_params, message: error_message
  end

  # バリデーションエラーを返す
  # http status: 400
  def render_invalid_validate(error_message)
    render_by :bad_request, type: :invalid_validate_params, message: error_message
  end

  # 何かしらの原因でDBロールバックしたエラーを返す
  # http status: 400
  def render_rollback(error_message)
    render_by :bad_request, type: :rollback_params, message: error_message
  end

  private

  def render_by(http_status, opts)
    # nilの場合はjsonの送信自体を行わない
    opts ||= {} unless opts.nil?
    render status: http_status, json: opts
  end
end
