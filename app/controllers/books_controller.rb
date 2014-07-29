class BooksController < ApplicationController
	respond_to :html, :json
	
	def index
		respond_with(@books = Book.all)
	end

	def show
		respond_with(@book = Book.find(params[:id]))
	end

	def create
		@book = Book.new(book_params)
		@book.save
		respond_with @book
	end

	def update
		@book = Book.find(params[:id])
		@book.update_attributes(book_params)
		@book.save!
		respond_with @book
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
	end

	private

	def book_params
      params.require(:book).permit(:title, :author, :releaseDate, :coverImage)
    end

end
