class UsersController < ApplicationController
  def show
   @user = User.find(params[:id])
   @book = @user.book.page(params[:page]).reverse_order
　 @book = Book.new
   @books = Book.all
  end

 def index
    @users = User.all
    @user = current_user
 end

end
