class FavoritesController < ApplicationController
    def create
        ＠a = Book.find(params[:book_id])
        favorite = current_user.favorites.new(book_id: ＠a.id)
        favorite.save
    end

    def destroy
        ＠book = Book.find(params[:book_id])
        favorite = current_user.favorites.find_by(book_id: ＠book.id)
        favorite.destroy
    end
end
