class BooksController < ApplicationController

	def index
		@books = Book.all
	end

	def create
		@book = Book.new(book_params)
		@book.user_id =current_user.id
		if @post_image.save
            redirect_to books_path
        else
            render :new
        end

	end

	def new
		@book = Book.new
	end

	def edit
  		@book = Book.find(params[:id])
	end

	def update
  		@book = book.find(params[:id])
  		if @book.update(book_params)
	    	redirect_to book_path(@book.id)
	    else
	    	render :edit
	    end
  	end

	private

    def book_params
        params.require(:book).permit(:name, :opinion)
    end

end
