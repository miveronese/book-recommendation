class User < ActiveRecord::Base

  def self.search(search)
    where("name LIKE ?", "%#{search}%").first 
  end

  def recommended_books

    @user_id = self.id

    @favorite_books = Like.where(user_id: @user_id).map do |x|
      Book.find(x.book_id)
    end

    @likes_in_commom_user_and_other_users = @favorite_books.map do |x|
      Like.where(book_id: x.id).map do |y|
        y
      end.flat_map {|i| i}
    end

    @similar_users = @likes_in_commom_user_and_other_users.flat_map do |i| 
      i
    end.map do |x|
      x.user_id if x.user_id != @user_id
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

    @user_books = @favorite_books.map do |title|
      title.title
    end

    @recommendations = @similar_users_books - @user_books

  end


end
