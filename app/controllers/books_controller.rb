class BooksController < ApplicationController
    def index
        books = Book.all 
        render json: books
    end 
    
    def show
        book = Book.find(params[:id])
        render json: book
    end 

    def create
        book = Book.create(
            title: params[:title],
            genre: params[:genre],
            price: params[:price],
        )
        render json: book
    end 

    def update
        book = Book.find(params[:id])
        book.update(
            title: params[:title],
            genre: params[:genre],
            price: params[:price],
        )
        render json: book
    end 

    def destroy
        books = Book.all
        book = Book.find(params[:id])
        book.destroy
        render json: books 
    end 


end

