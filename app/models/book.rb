class Book < ApplicationRecord
    has_one_attached :image
    #validação para presença de valor nos campos
    validates_presence_of :title,:author,:description,:status
    #Status definidor para os livros on publicado fica disponivel e arquivado indisponivel na pagina inicial
    enum status: [:publicado, :arquivado]

end
