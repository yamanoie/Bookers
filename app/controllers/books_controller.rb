class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@book = Book.new
  end

  def create
  	book = Blog.new(book_params)
  	book.save
  	redirect_to books_path
  end

  def edit
  end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end

end
