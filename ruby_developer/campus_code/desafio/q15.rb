#Questão 15
#Considere as classes do código Ruby abaixo:

class Produto
    
  def initialize(nome, categoria)
    @nome = nome
    @categoria = categoria
  end
end

class Categoria 
  def initialize(nome)
    @nome = nome
  end
end

novo_produto = Produto.new('Livro', Categoria.new('Indefinida') )

print novo_produto.categoria.nome
=begin

Qual alternativa completa corretamente a chamada de novo_produto para que seja criada uma instância de Categoria de nome populado com valor 'Indefinida'?

Alternativas:
Categoria.new()

'Indefinida'

categoria

Categoria.new('Indefinida')
=end