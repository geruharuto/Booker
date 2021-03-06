
class BlogsController < ApplicationController
  def top
  end

  def index
  	@books = Book.all
    @book = Book.new
  end

  def create
  	book = Book.new(book_params)
  	book.save
  	redirect_to blog_path(book)
  end

  def show
  	@blog = Blog.find(params[:id])
  end

  def edit
  	@book = Blog.find(params[:id])
  end
  def update
  	book = Book.find(params[:id])
  	book.update(book_params)
  	redirect_to show_path(book.id)
  end

  def destroy
  		book = Book.find(params[:id])
  		book.destroy
  		redirect_to index_path
  end

  private

  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
