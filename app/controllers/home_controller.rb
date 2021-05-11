class HomeController < ApplicationController
  #Layout para acesso a usuarios comuns e administradores
  layout 'home'
  #Action para mostra a pagina inicial do sistema
  def index
    @books = Book.where(status: :publicado)
  end
end
