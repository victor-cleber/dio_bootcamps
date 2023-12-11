#Questão 33
#Analise o código Ruby da classe FormaGeometrica de uma aplicação fictícia que gera formas geométricas na tela do computador.

class FormaGeometrica
  attr_accessor :quantidade_lados, :tamanho_lado

  def initialize(quantidade_lados, tamanho_lado)
    @quantidade_lados = quantidade_lados
    @tamanho_lado = tamanho_lado
  end
end

forma = FormaGeometrica.new(3, 4)
puts forma.quantidade_lados
puts forma.tamanho_lado

forma = FormaGeometrica.new(2, 2)
puts forma.quantidade_lados
puts forma.tamanho_lado
=begin
Avalie as afirmações abaixo:

I. O código FormaGeometrica.new(3, 4) criaria um triângulo com lados de tamanho 4.

II. Para criar um retângulo com lados de tamanho 2 e 4, basta o comando FormaGeometrica,new(4, 2, 4).

III. A estrutura da classe FormaGeometrica só é capaz de criar formas geométricas com lados de tamanhos iguais.

Indique a alternativa correta:

Alternativas:
Apenas a afirmação II é incorreta.

Apenas a afirmação III é correta.

Apenas as afirmações I e II são corretas.

Todas as afirmações são incorretas.
=end