class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy

    redirect_to books_path
  end

<<<<<<< HEAD
  private
  def book_params
    params.require(:book).permit(:title, :author, :description, :publication_date, :price, :category_id)
  end

=======

  private
  def book_params
    params.require(:book).permit(:title, :author, :description, :publication_date, :price)
  end
>>>>>>> cbe583fe98d08f2253f6c9cd59266e58ca8f8b5f
end
