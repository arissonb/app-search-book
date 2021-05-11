class BooksController < AdminController

    #Action para visualizar todos os livros cadastrados
    def index
      @q = Book.ransack(params[:q])
      @books = @q.result(distinct: true)
      @status = Book.statuses
    end

    #Action para criação de um novo livro
    def new
      @status = Book.statuses
      @book = Book.new 
    end

    #Action de edição do livro
    def edit
      @status = Book.statuses
      @book = Book.find(params[:id]) 
    end

    #Action de criação do livro
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

    #Action para atualizar um livro cadastrado
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

    #Action para mostrar mais detalhes um livro cadastrado
    def show
      @book = Book.find(params[:id]) 
    end

    #Action para excluir um livro cadastrado
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
