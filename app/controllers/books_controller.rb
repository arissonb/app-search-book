class BooksController < AdminController

    def index
      @q = Book.ransack(params[:q])
      @books = @q.result(distinct: true)
      @status = Book.statuses
    end
    
    def new
      @status = Book.statuses
      @book = Book.new 
    end
    
    def edit
      @status = Book.statuses
      @book = Book.find(params[:id]) 
    end

    def create
      @book = Book.new(book_params)
      respond_to do |format|
        if @book.save
          format.html { redirect_to books_path, success: 'Widget was successfully created.' }
        else
          format.json { render json: @book.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      @book = Book.find(params[:id]) 
      respond_to do |format|
        if @book.update(book_params)
          format.html { redirect_to books_path, success: 'Widget was successfully created.' }
        else
          format.json { render json: @book.errors, status: :unprocessable_entity }
        end
      end
    end

    def show
      @book = Book.find(params[:id]) 
    end
    
    def destroy
      @book = Book.find(params[:id])
      @book.destroy
      redirect_to books_path
    end
    
    private
    def book_params
      params.require(:book).permit(:title, :description,:author,:image,:status)
    end
    
end
