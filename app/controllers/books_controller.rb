class BooksController < ApplicationController
	def index
		@books = Book.all
	end
	
	def newbook
	end

	#because have table created from db.migrate, need create model to define what happens
	def create
		@books = Book.new(params [:book])

		@books.save

		#redirects to "show" method
		redirect_to @books
	end

	private
		def book_params
			params.require(:book).permit(:title, :author, :pubyear)
		end
end
