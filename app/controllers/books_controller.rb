class BooksController < ApplicationController
  def index
    @new_book = Book.new
    @books = Book.all
    @user = current_user
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
  end

  def edit
    @book = Book.find(params[:id])
  end


  def update
  end

  def destroy
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
