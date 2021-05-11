class Book < ApplicationRecord
    #Help do ActiveStorage para que os dados da imagem seja salvos na tabela storage
    has_one_attached :image
    #validação para presença de valor nos campos
    validates_presence_of :title,:author,:description,:status
    #Status definido para os livros onde publicado fica disponivel e arquivado indisponivel na pagina inicial
    enum status: [:publicado, :arquivado]
    #Validação de tamanho de caracteres
    validates_length_of :title, minimum: 4, maximum: 100, allow_blank: true
    validates_length_of :description, minimum: 10, maximum: 260, allow_blank: true
    validates_length_of :author, minimum: 5, maximum: 100, allow_blank: true

end
