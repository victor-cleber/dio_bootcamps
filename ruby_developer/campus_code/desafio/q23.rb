=begin
Questão 23
No código Ruby abaixo, descrevemos uma classe Aluno e instanciamos objetos dessa classe.
=end
class Aluno
  attr_accessor :nome, :disciplina
  def initialize(nome, disciplina)
    @nome = nome
    @disciplina = disciplina
    @notas = []
  end

  def adiciona_nota(nota)
    @notas << nota
  end

  def media
    media = 0
    @notas.each do |n|
        media += n
    end
    return media / @notas.length
  end
end

andre = Aluno.new('André', 'Matemática')
luana = Aluno.new('Luana', 'Filosofia')

andre.adiciona_nota(5)
andre.adiciona_nota(7)

puts "#{andre.nome} tirou média #{andre.media} em #{andre.disciplina}."
# André tirou média 6 em Matemática.
=begin
Qual alternativa completa o método media da classe Aluno para que ele realize o cálculo da média corretamente para qualquer objeto de Aluno.

Alternativas:
def media
    @notas.each do |n|
        media += n
    end
    return media / @notas.length
end
def media
    media = 5 + 7 
    return media/2
end
def media
  media = 0
  @notas.each do |n|
    media += n
  end
  return media / @notas.length
end
def media
    media = 0
    @notas.each do |n|
        media += n
    end
    return media / 2
end

=end