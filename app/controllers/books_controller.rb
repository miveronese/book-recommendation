class BooksController < ApplicationController

  def welcome
  end

  def index
    
    @user = User.search(params[:search])

    @favorite_books = Like.where(user_id: @user.id).map do |x|
      Book.find(x.book_id)
    end
  end

end
