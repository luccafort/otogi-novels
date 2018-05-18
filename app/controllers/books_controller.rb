class BooksController < ApplicationController
  def index
    # 小説作品の一覧は誰でも閲覧可能、アカウント持ってなくてもOK
    # TODO:将来的にはparams[:account_id]で取得する小説作品一覧のwhere()をいれる
    @books = Book.all()
    if @books.present?
      render status: :ok, json: @books
    else
      render status: :no_content, json: nil
    end

  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
