class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Status do usuario
  enum status: [:ativo, :inativo]
  # Perfil de acesso
  enum profile: [:admin, :comum]

end
