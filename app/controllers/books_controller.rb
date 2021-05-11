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
      if @book.save
        flash[:success] = "Cadastro realizado  com sucesso"
        redirect_to books_path
      else
        puts @books.errors.full_messages
      end
    end

    def update
      @book = Book.find(params[:id]) 
      if @book.update(book_params)
        flash[:success] = "Cadastro realizado  com sucesso"
        redirect_to books_path
      else
        puts @book.errors.full_messages
      end
    end

    def show
      @book = Book.find(params[:id]) 
    end
    
    def destroy
      @book = Book.find(params[:id])
      @book.destroy
      # flash[:info] = "Informações salvas com sucesso."
      redirect_to books_path
    end
    
    private
    def book_params
        params.require(:book).permit(:title, :description,:author,:image,:status)
    end
    
end
