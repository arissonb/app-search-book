require 'rails_helper'

RSpec.describe Book, :type => :model do

  #Variavel temporario para validação de atributo, o error é acionado quando o valor é passado como nulo ou excendendo o tamanho
  subject {
   described_class.new(title: "Anything",
                       author: "Desconhecido",
                       description: "Lorem ipsum",
                       status: "publicado"
                      )
 }

 it "is valid with valid attributes" do
    expect(subject).to be_valid
 end

 #Teste para validar o campo title
 it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
 end

 #Teste para validar o campo author
 it "is not valid without a author" do
    subject.author = nil
    expect(subject).to_not be_valid
 end

 #Teste para validar o campo description
 it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
 end

 #Teste para validar o campo status
 it "is not valid without a status" do
    subject.status = nil
    expect(subject).to_not be_valid
 end

end