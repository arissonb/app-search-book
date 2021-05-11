class AdminController < ApplicationController
  #Help do devise para autenticação do usuario na controller Admin
  before_action :authenticate_user!
  #Layout para autenticação do usuario
  layout 'admin'
end
