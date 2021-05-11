class AdminController < ApplicationController

  #Help do devise para autenticação do usuario na controller Admin
  before_action :authenticate_user!, :check_login_user
  #Layout para autenticação do usuario admin
  layout 'admin'

  protected

  #Verificação de perfil de usuario
  def check_login_user
    if user_signed_in?
      if current_user.inativo? || current_user.comum?
        Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
        redirect_to root_path
      end
    end
  end

end
