class BooksController < ApplicationController

  def welcome
  end

  def index
    if params[:search]
      @user_db = User.where("name LIKE ?", "%#{params[:search]}%")
    end 
       
    @user = @user_db.map do |x|
      x.id
    end
    
    @user_name_array = @user_db.map do |x|
      x.name
    end

    @user_name = @user_name_array[0]

    @user_favorite_books = Like.where(user_id: @user).map do |x|
      Book.find(x.book_id)
    end

    @likes_in_commom_user_and_other_users = @user_favorite_books.map do |x|
      Like.where(book_id: x.id).map do |y|
        y
      end.flat_map {|i| i}
    end

    @similar_users = @likes_in_commom_user_and_other_users.flat_map do |i| 
      i
    end.map do |x|
      x.user_id if x.user_id != @user
    end

    @similar_users_ids = []
    @similar_users.map do |x|
      if x != nil
        @similar_users_ids << x
      end
    end
    
    @similar_users_likes = @similar_users_ids.map do |x|
      Like.where(user_id: x).map do |y|
        y
      end
    end.flat_map do |i| 
      i
    end

    @similar_users_books = @similar_users_likes.map do |x|
      Book.find(x.book_id).title
    end

    @user_books = @user_favorite_books.map do |title|
      title.title
    end

    @recommendations = @similar_users_books - @user_books
  end

end
