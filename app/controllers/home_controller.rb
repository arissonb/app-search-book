class HomeController < ApplicationController
  layout 'home'

  def index
    @books = Book.where(status: :publicado)
  end
end
