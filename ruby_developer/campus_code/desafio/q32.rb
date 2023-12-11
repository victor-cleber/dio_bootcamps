=begin
Questão 32
Considere uma aplicação de uma loja em que são utilizadas duas classes principais: Produto e Venda. Cada produto possui um nome e um preço. A cada nova venda, uma instância é iniciada sem atributos, mas a classe possui dois métodos: adiciona_produtos, que recebe um array de produtos como parâmetro, e conta, que retorna o valor total da venda. Escolha a alternativa que demonstra corretamente um exemplo de uso do código principal da aplicação em Ruby abaixo:
=end
bola = Produto.new('Bola', 40)
livro = Produto.new('Livro', 60)
panela = Produto.new('Panela', 260)
caneta = Produto.new('Caneta', 2)
venda = Venda.new()

produtos = [bola, livro, panela, caneta]
venda.adiciona_produtos(produtos)
valor_total = venda.conta()

puts "O valor total da venda foi de #{valor_total} reais."

=begin
Alternativas:
produtos = [bola, livro, panela, caneta]
venda.adiciona_produtos(produtos)
valor_total = venda.conta()
produtos = [bola, livro, panela, caneta]
valor_total = venda.conta(adiciona_produtos(produtos))
produtos = [bola, livro, panela, caneta]
venda = adiciona_produtos()
valor_total = venda.conta()
produtos = ['Bola', 'Livro', 'Panela', 'Caneta']
venda = adiciona_produtos(produtos)
valor_total = venda.conta()

=end