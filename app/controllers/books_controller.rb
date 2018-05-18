class BooksController < ApplicationController
  def index
    @books = Book.all()
    render status: 200, json: @books
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
