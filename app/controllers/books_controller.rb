class BooksController < ApplicationController
<<<<<<< HEAD
  before_action :set_book, only: [:show, :edit, :update, :destroy]

=======
  before_action :authenticate_user!, except: [:index, :show]
  
>>>>>>> 63c162ed6f6f39aff0fb9217a17c12ac009d172c
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
<<<<<<< HEAD
      redirect_to @book
=======
      redirect_to books_path
>>>>>>> 63c162ed6f6f39aff0fb9217a17c12ac009d172c
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
<<<<<<< HEAD
      redirect_to @book
=======
      redirect_to books_path
>>>>>>> 63c162ed6f6f39aff0fb9217a17c12ac009d172c
    else
      render :edit
    end
  end

  def destroy
<<<<<<< HEAD
    @book = Book.find(params[:id])
    @book.destroy
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :author, :description, :publication_date, :price)
    end
=======
    book = Book.find(params[:id])
    book.destroy

    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :description, :publication_date, :price, :category_id)
  end
>>>>>>> 63c162ed6f6f39aff0fb9217a17c12ac009d172c
end
