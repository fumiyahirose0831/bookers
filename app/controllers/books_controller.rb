class BooksController < ApplicationController
  def new
  @book = Book.new
  end

  def create
    @user = current_user
    @book = Book.new(book_params)
    @books = Book.all
    @book.user_id = current_user.id
    if @book.save
     redirect_to book_path(@book.id), notice: 'You have created book successfully.'
    else
     render :index
    end
  end



  def index
  @book = Book.new
  @books = Book.all
  @user = current_user
  end

  def show
  end

  def destroy
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
