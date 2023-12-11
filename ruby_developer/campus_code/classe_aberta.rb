#O que fizemos foi “abrir” a classe String durante a execução
#do código e adicionamos um novo método que estará disponível para todos os ob-
#jetos do tipo String que existem. Esse recurso é conhecido como classes abertas
#(OpenClasses),

class String
    def plural
        "#{self}s"
    end
end

puts "caneta".plural


1 = "Lucas" # não funciona
nome = "Lucas" # funciona
$nome = "Lucas" # funciona
_nome = "Lucas" # funciona

=begin
Em Ruby, utilizamos outra convenção para separar as palavras. Nela, usamos sem-
pre letras minúsculas e como separador o _ , dessa forma poderíamos ter a variável
telefone_celular .
=end
telefone_celular = "(11) 91234-5678"


idade = 90
idade.class

habitantes = 7000000000
7 bilhões de habitantes é um número consideravelmente grande. Mas e se fosse
70 bilhões?
habitantes = 70000000000
Repare que não é tão fácil perceber que há um zero a mais nesse grande número.
Para esses casos, Ruby nos permite separar os milhares através do %_
habitantes = 7_000_000_000

peso = 77.9
peso.class


#String :
nome_completo = "Lucas Souza"
twitter = '@Lucasas'
puts nome_completo.class # => String
puts twitter.class # => String
=begin
Mas por qual motivo e quando eu uso String com aspas simples ou duplas?
Imagine que você possui uma amiga chamada Joana d’Arc e precisamos armaze-
nar o nome dela em uma variável:
=end
nome_com_aspas_simples = 'Joana d'Arc' # não funciona
nome_com_aspas_duplas = "Joana d'Arc" # funciona

Repare que quando definimos String com aspas simples, não conseguimos
adicionar outra aspas simples dentro do texto, pois dessa forma é o interpretador
não sabe onde fica o final da String . Neste caso o único jeito é usar aspas duplas.
Mas existem outros casos onde Strings com aspas duplas são mais interessantes.
Precisamos agora exibir uma mensagem de boas-vindas contendo o nome da pessoa
que está definido dentro da variável nome . O mais natural seria repetir o compor-
tamento de outras linguagens e usar o operador + para realizar uma concatenação.
nome = "Joana d'Arc"
boas_vindas = "Seja bem-vinda(o) " + nome
puts boas_vindas # => Seja bem-vinda(o) Joana d'Arc

Porém em Ruby quando precisamos concatenar duas String , preferimos fazer
o uso da interpolação:
nome = "Joana d'Arc"
boas_vindas = "Seja bem-vinda(o) #{nome}"
puts boas_vindas # => Seja bem-vinda(o) Joana d'Arc




A única preocupação que devemos ter é com o que vamos interpolar dentro de
uma String . Por exemplo:
puts 'mensagem' # => mensagem
puts "#{sleep 1}mensagem" # => mensagem
A String declarada com aspas duplas interpola a chamada de um método da
classe Kernel que interrompe a execução do código por 1 segundo, ou seja, o tempo
para impressão da segunda String mensagem será de pelo menos 1 segundo.




idade = 27
nome = "Lucas"
if(idade > 18)
puts nome # => Lucas
end
Uma maneira de deixar o código Ruby ainda mais simples é removendo os pa-
rênteses da chamada do if .
idade = 27
nome = "Lucas"
if idade > 18
puts nome # => Lucas
end


#Syntax Sugar ou “açúcar sintático” 

idade = 27
nome = "Lucas"
puts nome if idade > 18 # => Lucas
=begin
Repare que parece que estamos lendo um texto em inglês: “Imprima nome se
a idade for maior que 18”. Esta é uma das grandes vantagens da linguagem, maior
legibilidade sempre que possível.
=end



Quando desejamos representar algum valor vazio em Ruby, usamos a palavra reser-
vada nil . O nil não representa uma String vazia ou o número zero, ele re-
presenta um valor vazio, um espaço vazio. Quando atribuímos nil a uma variável,
queremos dizer que ela não possui nenhum valor.
caixa = nil


nome = "Lucas"
puts "Seja bem-vindo #{nome}" if not nome.nil? # => Seja bem-vindo Lucas
Se executarmos o código acima, a mensagem ‘Seja bem-vindo Lucas’ será exi-
bida. Mas e no caso da variável possuir o valor nil :
nome = nil
puts "Seja bem-vindo #{nome}" if not nome.nil?
Neste caso nenhuma mensagem será exibida, a variável nome é nula e o método
nil? retorna true . Como fazemos a negação usando o not o valor é invertido e
portanto false .


#Substitua o “if not” por “unless”
nome = nil
puts "Seja bem-vindo #{nome}" unless nome.nil?

Podemos ler o código: “Imprima ‘Seja bem vindo ...’ a menos que o nome seja
nulo”. Na maioria das vezes que implementamos um if not , ele pode ser conver-
tido para um unless .






#Se usadas dentro de condicionais como if e unless a variável quando nil
#assume automaticamente o valor true e no caso contrário, assume o valor false .
nome = nil
puts "Seja bem vindo #{nome}" if nome
#A variável nome possui o valor nil e assume o valor false na condicional
#anterior, sendo assim nenhuma mensagem é impressa no terminal. Se a variável
#possuir algum valor não nil :
nome = "Lucas"
puts "Seja bem-vindo #{nome}" if nome # => Seja bem-vindo Lucas
#A mensagem Seja bem-vindo Lucas é impressa, pois a variável não é nil e por-
#tanto assume o valor true .


Desejamos imprimir os números de 1 até 100. Apenas adicionando uma mensa-
gem ‘Numero: X’ para deixarmos nossas mensagens mais elegantes.
for numero in (1..100)
puts "Numero: #{numero}"
end

=begin
while , que assim como em linguagens tradicionais como
    Java e C, executando um bloco de código até que uma determinada condição seja
    falsa (conteúdo que também é delimitado pela palavra reservada end ).
=end
numero = 0
while numero <= 100
    puts "Numero: #{numero}"
    numero += 1
end
=begin
Quando for executado o código acima executará a impressão da mensagem ‘Nu-
mero: x’ imprimindo de 1 até 100, quando a condição do while será false .
=end



#until
 #Ao contrário do while que termina sua execução quando uma condição falsa
 #seja alcançada, a estrutura de repetição until executa um determinado bloco de
 #código até que uma condição verdadeira seja encontrada:
 numero = 0
    until numero == 100
    puts "Numero: #{numero}"
    numero += 1
 end
 #A diferença é que o código acima executará a impressão da mensagem ‘Numero:
 #x’ de 1 até 100, até que o valor da variável numero seja 100 e ocorra o término na
 #execução do until .



 Mas como proceder caso precisemos declarar String com aspas duplas e aspas
simples dentro, por exemplo: "Isso é “normal” e ‘útil’ no mundo Ruby”. Nenhuma das
duas abordagens anterior resolvem o problema sem o uso do caractere de escape \ .
string_especial_usando_aspas_simples =
'Isso é "normal" e \'util\' no mundo Ruby'
string_especial_usando_aspas_duplas =
"Isso é \"normal\" e 'util' no mundo Ruby"



#As outras formas de declarar Strings
 #Aprendemos e discutimos duas formas de declarar String :
 aspas_simples = 'linguagem_ruby'
 aspas_duplas = "linguagem_ruby"
 #Mas como proceder caso precisemos declarar String com aspas duplas e aspas
 #simples dentro, por exemplo: "Isso é “normal” e ‘útil’ no mundo Ruby”. Nenhuma das
 #duas abordagens anterior resolvem o problema sem o uso do caractere de escape \ .
 string_especial_usando_aspas_simples = 'Isso é "normal" e \'util\' no mundo Ruby'
 string_especial_usando_aspas_duplas = "Isso é \"normal\" e 'util' no mundo Ruby"
 puts string_especial_usando_aspas_simples
 # => 'Isso é "normal" e \'util\' em Ruby'
 puts string_especial_usando_aspas_duplas
 # => "Isso é \"normal\" e 'util' em Ruby"
 #Existe uma notação na linguagem Ruby que foi inspirada no Perl que permite
 #declararmos este tipo de String especial. Basta declará-la da seguinte forma:
 string_especial = %{Isso é "normal" e 'util' no mundo Ruby}
 puts string_especial
 # => "Isso é \"normal\" e 'util' em Ruby"
 #Na verdade qualquer caractere não alfa numérico pode ser usado após o
 #por exemplo:
 string_especial = %[Isso é "normal" e 'util' no mundo Ruby]
puts string_especial
# => "Isso é \"normal\" e 'util' em Ruby"
string_especial = %?Isso é "normal" e 'util' no mundo Ruby?
puts string_especial
# => "Isso é \"normal\" e 'util' em Ruby"
string_especial = %~Isso é "normal" e 'util' no mundo Ruby~
puts string_especial
# => "Isso é \"normal\" e 'util' em Ruby"
Obviamente o caractere utilizado para delimitar a String deve ser escapado
com “\” caso apareça dentro do texto que está sendo declarado:

    string_especial = %{Isso é "normal" e \{util no mundo Ruby}
puts string_especial
# => "Isso é \"normal\" e {util em Ruby"
Entretanto se você utilizar como delimitador os caracteres (parenteses) ,
[colchetes] , {chaves} ou <menor e maior> eles podem aparecer dentro
da String sem serem escapados caso sejam usados em pares (diferentemente do
exemplo dado anteriormente):
string_especial = %{Isso é "normal" e {util} no mundo Ruby}
puts string_especial
# "Isso é \"normal\" e {util} em Ruby"
Existem algumas outras variações que vamos aprender ao longo do livro. Esta
    maneira de declarar String permite que sejam elas também criadas com múltiplas
    linhas:
    string_especial = %{Isso é "normal" e {util} no mundo Ruby
    e a partir de agora veremos a 'todo' momento}
    puts string_especial
    Repare que uma quebra de linha (\n) é inserida exatamente no lugar onde que-
    bramos a linha em nosso código. Essa característica é muito útil quando precisamos
    criar String grandes e precisamos deixá-las mais legíveis.




#Classes
 class Livro
  def initialize(autor, numero_de_paginas, isbn)
  end
  def initialize(autor, numero_de_paginas)
  end
 end
 #Mas isso também não funcionará, pois o interpretador do Ruby considera apenas
 #o último método definido na classe. Ruby não suporta sobrecarga. Para essa situação,
 #a linguagem suporta o uso de argumentos com valores padrão:

 lass Livro
def initialize(autor, numero_de_paginas, isbn = "1")
end
end
Quando declaramos o argumento isbn = "1" , definimos que no momento da
inicialização dos objetos do tipo Livro , podemos omitir o último argumento:
Livro.new "Lucas Souza", 198
O valor do argumento isbn é “1”.





    O arquivo lib/livro.rb não está em nenhum dos diretório listados em
$LOAD_PATH, que em geral, contém os diretórios onde estão os arquivos .rb
das classes core do Ruby. Sendo assim temos dois caminhos para fazer com que o
Ruby consiga carregar o arquivo que contém a classe Livro . O primeiro é adicionar
na constante $LOAD_PATH, que é um objeto Array , o diretório lib do projeto
loja_virtual:
$LOAD_PATH << "caminho relativo do projeto loja_virtual/lib"
Ao executar este código, o require pode ser feito apenas com o nome do ar-
quivo da pasta lib que desejamos carregar:
require 'livro'

A segunda opção, e melhor na minha opinião, é carregar o arquivo passando o
seu caminho absoluto. Porém, isso pode ser um pouco custoso já que você pode
simplesmente resolver alterar o nome da pasta de loja_virtual para loja .
O ideal é utilizar o método expand_path da classe File que retorna o cami-
nho absoluto de um nome de arquivo passado como parâmetro, levando em con-
sideração o diretório onde a chamada do método é executado. Supondo que o
arquivo livro.rb esteja dentro da pasta lib , que por sua vez está dentro do
diretório '/home/lucas/loja_virtual' ao executar a chamada ao método
expand_path dentro deste diretório passando a String ‘lib/livro’ o retorno do
método será '/home/lucas/loja_virtual/lib/livro' :
# executando a partir do diretório /home/lucas/loja_virtual
puts File.expand_path("lib/livro")
# => "/home/lucas/loja_virtual/lib/livro"


# executando a partir do diretório /home/lucas/loja_virtual
require File.expand_path("lib/livro")
# objeto Livro criado com sucesso
Livro.new "Lucas Souza", 200







Encoding arquivos . R B
Os arquivos que contém as classes criadas em nosso sistema, ficarão
em arquivos .rb dentro de um diretório de sua preferência. Porém é
importante ressaltar que arquivos .rb possuem um encoding US-ASCII
por padrão. Caso seu código contenha qualquer caractere que não for
compatível com o ASCII, a interpretador Ruby será finalizado e acusará
o erro: invalid multibyte char (US-ASCII) .
Se você quiser alterar o encoding padrão do arquivo .rb , basta adi-
cionar a seguinte linha do arquivo:
# encoding: utf-8
Neste exemplo, ajustamos o encoding do arquivo para UTF-8, que
permitirá que você use acentos e outros caracteres.




class Livro
    def initialize(autor, isbn = "1", numero_de_paginas)
    puts "Autor: #{autor}, ISBN: #{isbn}, Pág: #{numero_de_paginas}"
    end
    end

    class Livro
        def initialize(autor, isbn = "1", numero_de_paginas)
        @autor = autor
        @isbn = isbn
        @numero_de_paginas = numero_de_paginas
        end
        end
        Repare que as variáveis de instância tem um caractere @ antes do nome. O im-
        portante aqui é percebermos que as variáveis podem ter nomes iguais, porém, variá-
        veis com @ são de instância e compõem o estado interno do objeto que está sendo
        criado, enquanto variáveis locais possuem um escopo mais curto, elas duram apenas
        até o término da execução do método.

            Em Ruby, todas as variáveis de instância criadas são privadas, ou seja,
não possuem acesso externo, nem para leitura, nem para escrita. Se qui-
sermos acessá-las, vamos utilizar recursos da própria linguagem, que ve-
remos nas próximas seções.


teste_e_design = Livro.new("Mauricio Aniche", "123454", 247)
web_design_responsivo = Livro.new("Tárcio Zemel", "452565", 321)
p teste_e_design
p web_design_responsivo





puts ou p?
Quando precisamos imprimir informações no console em Ruby, po-
demos utilizar os métodos puts ou p . A primeira delas já havíamos
visto, o método puts . No exemplo de código onde testamos nossas va-
riáveis de instância, usamos o método p .
O método puts imprime o retorno do método to_s do objeto que
foi passado para ser impresso. Isto é, caso você faça puts variavel ,
é como se ele mostrasse o valor de variavel.to_s , método que vere-
mos logo em seguida. Já o método p é mais utilizado quando queremos
realizar o debug do conteúdo do objeto passado como argumento. Nesse
caso, o método inspect do objeto é invocado e o retorno é impresso
na tela. Quando o conteúdo das variáveis de instância são impressas, é
porque o método inspect da classe Livro retorna os valores de todas
as variáveis do objeto criado.




sobrecarga de metodo
Em Ruby podemos aplicar a mesma prática sobrescrevendo o método to_s ,
que é herdado naturalmente por todas as classes, pois faz parte da classe Object , e
fazendo com que ele devolva uma String :
# coding: utf-8
class Livro
def initialize(autor, isbn = "1", numero_de_paginas)
@autor = autor
@isbn = isbn
@numero_de_paginas = numero_de_paginas
end

def to_s
    "Autor: #{@autor}, Isbn: #{@isbn}, Páginas: #{@numero_de_paginas}"
    end
    end



    Uma novidade nesse código é que em Ruby, quando desejamos retornar um de-
terminado valor não precisamos explicitamente colocar a palavra return antes do
valor que desejamos retornar, o retorno de qualquer método escrito em Ruby sempre
será a última instrução de código (veremos este comportamento com mais detalhes
no capítulo ‘Ruby Funcional’). Se a última instrução de um método for, por exem-
plo, a String "Um texto qualquer" , ao invocarmos este método receberemos
como retorno do método a própria String Um texto qualquer . Porém, em
algumas ocasiões o uso da palavra return é necessário, dependendo da lógica que
estamos implementando, mas lembre-se que ele nunca é obrigatório.
Lembre-se que o método to_s é invocado quando utilizamos o método puts .
Portanto vamos alterar o código que testa a criação dos objetos com suas variáveis
de instância:
teste_e_design = Livro.new("Mauricio Aniche", "123454", 247)
web_design_responsivo = Livro.new("Tárcio Zemel", "452565", 321)
puts teste_e_design
puts web_design_responsivo


p chama o inspect
puts chama o to_s



#Alteração e leitura de atributos

# coding: utf-8
class Livro
    def initialize(autor, isbn = "1", numero_de_paginas, preco)
    @autor = autor
    @isbn = isbn
    @numero_de_paginas = numero_de_paginas
    @preco = preco
    end
    def to_s
    "Autor: #{@autor}, Isbn: #{@isbn}, Páginas: #{@numero_de_paginas}"
    end
    end

    E podemos instanciar novos livros informando o preço:
teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9
Agora para todos os objetos do tipo Livro que foram criados, desejamos tam-
bém saber seu preço. Mas lembre-se que as variáveis de instância são sempre pri-
vadas, ou seja, só conseguimos acessá-las dentro da classe Livro . A solução neste
caso é criar um método público que retorne o valor da variável @preco :


# coding: utf-8
class Livro
    # outros métodos
    def preco
    @preco
    end
    end
    Agora, dada qualquer instância de um Livro , podemos invocar o método
    preco que retornará o valor da variável @preco :
    teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9
    puts teste_e_design.preco # => 60.9
    Repare que fizemos um método com o mesmo nome da variável. Essa é uma
    convenção utilizada pelos desenvolvedores Ruby, onde o método que acessa a variá-
    vel e a própria variável possuem o mesmo nome.


    O Brasil é um país que possui inflação que gira em torno de 6% a 7% ao ano.
Em nossa aplicação, permitiremos que os nossos livros sofram alterações de preços
também. Dessa forma, dada uma instância do tipo Livro desejamos alterar seu
preço:
teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9
teste_e_design.preco = 79.9
# => NoMethodError: undefined method `preco=' for
Autor: Mauricio Aniche, Isbn: 123454, Páginas: 247:Livro


Lembre-se novamente, as variáveis de instância são sempre privadas. Então por
enquanto não conseguimos alterar o preço de um objeto Livro . A solução é criar-
mos um método público que recebe o novo preço do livro como argumento e atribua
este preço a variável que guarda o valor do nosso livro, @preco :
# coding: utf-8
class Livro
# outros métodos
def preco
@preco
end
def preco=(preco)
@preco = preco
end

end

Para alterar o preço de uma instância do tipo Livro podemos agora invocar o
    método preco= :
    teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9
    teste_e_design.preco=(79.9)
    puts teste_e_design.preco


    teste_e_design.preco=79.9
Quando definimos métodos que possuem sinal de = em sua nomenclatura, po-
demos adicionar um espaço na chamada do método:
teste_e_design.preco = 79.9

# coding: utf-8
class Livro
    attr_writer :preco
    attr_reader :preco
    # outros métodos
    end


    teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9
teste_e_design.preco = 79.9
puts teste_e_design.preco


Se você deseja criar um par de métodos, um de leitura e outro de escrita para
uma determinada variável de instância, existe uma maneira mais simples do que
utilizar os métodos attr_reader e attr_writer . Com esse intuito, o método
attr_accessor foi criado:

# coding: utf-8
class Livro
    attr_accessor :preco
    # outros métodos
    end



#Símbolos
 #Símbolos são palavras que parecem com variáveis, eles podem conter letras, nú-
#  meros e _ . Símbolos são String mais leves e geralmente utilizados como identifi-
# cadores.
# A verdade é que símbolos são strings, como uma diferença importante, eles são
# imutáveis, ou seja, seu valor interno não pode ser alterado. Por isso geralmente os
# utilizamos como identificadores.
:um_simbolo_qualquer.object_id == :um_simbolo_qualquer.object_id
# true
"um_simbolo_qualquer".object_id == "um_simbolo_qualquer".object_id
# false


# Veja que independente da quantidade de vezes que referenciamos um símbolo,
# ele sempre será o mesmo objeto (o método object_id retorna o um identificador
# do objeto na memória). Já no caso das String , mesmo sendo exatamente iguais,
# são objetos diferentes na memória. Como String são imutáveis, cada objeto tem
# seu próprio espaço em memória, quando elas não são mais referenciadas, poderão
# ser coletadas pelo coletor de lixo (Garbage Collector - GC).
# Já os símbolos, por terem um única instância na memória, nunca serão coleta-
# dos pelo GC. Além disso, símbolos não são guardados somente na memória, eles
# também ficam em um dicionário de símbolos otimizado pelo interpretador




ATRIBUTOS NEM TÃO PRIVADOS ASSIM
# Umas das características de variáveis de instância é que elas são privadas, ou seja,
# seu valor não pode ser alterado de fora da classe, apenas com métodos públicos que
# internamente em sua implementação alteram o valor da variável. Vimos isso quando
# precisamos alterar o valor da variável preco .
# Infelizmente, existem maneiras de burlar estas restrições, e uma vez que temos
# em mãos a instância de um objeto qualquer, podemos ler e alterar o valor das variá-
# veis de instância.
teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9
puts teste_e_design.instance_variable_get "@preco" # => 60.9
# O método instance_variable_get retorna o valor de uma variável de ins-
# tância qualquer. Basta passar como argumento o nome da variável com o @ . No
# código acima, o resultado será 60.9 . Ler o valor da variável não é tão problemático
# se compararmos com o fato de que podemos alterar o valor de qualquer variável de
#instância também:
teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9
teste_e_design.instance_variable_set "@preco", 75.5
puts teste_e_design.preco # => 75.5
# O método instance_variable_set recebe dois argumentos, o primeiro é
# o nome da variável de instância que você deseja alterar, o segundo o valor que você
# deseja atribuir à variável.
# Os métodos instance_variable_set e instance_variable_get são
# métodos herdados por todos os objetos Ruby. Eles pertencem a classe Object ,
# que é a classe pai da hierarquia de classes que temos na linguagem. Esses métodos
# nos apesentam o começo de um assunto muito discutido e poderoso da linguagem
# conhecido como meta-programação.




podem nos trazer grandes dores de cabeça. Vamos tomar como exemplo a nossa
classe Livro :
# coding: utf-8
class Livro
attr_accessor :preco
def initialize(autor, isbn = "1", numero_de_paginas, preco)
@autor = autor
@isbn = isbn
@numero_de_paginas = numero_de_paginas
@preco = preco
end
def to_s
"Autor: #{@autor}, Isbn: #{@isbn}, Páginas: #{@numero_de_paginas}"
end
end




Você sentindo-se o Peter Parker da vida real, resolve alterar o valor de alguma
variável usando o instance_variable_set :
teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9
teste_e_design.instance_variable_set "@preco", 75.5
puts teste_e_design.preco # 75.5



epois de alguns anos, você decide casar-se com Mary Jane e abandonar sua vida
de homem aranha e também o desenvolvimento de software. O projeto é assumido
por outro desenvolvedor que resolve alterar o nome da variável preco para valor :
# coding: utf-8
class Livro
attr_accessor :valor
def initialize(autor, isbn = "1", numero_de_paginas, valor)
@autor = autor
@isbn = isbn
@numero_de_paginas = numero_de_paginas
@valor = valor
end

def to_s

    "Autor: #{@autor}, Isbn: #{@isbn}, Páginas: #{@numero_de_paginas}"
end
end
teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9
puts teste_e_design.preco
# => NoMethodError: undefined method `preco'
for Autor: Mauricio Aniche, Isbn: 123454, Páginas: 247:Livro
A chamada ao método preco retornará o erro: NoMethodError , obviamente
porque o método agora se chama valor :

teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9
puts teste_e_design.valor
Porém o antigo desenvolvedor homem aranha deixou em algum lugar do sistema
uma chamada ao instance_variable_set :
teste_e_design.instance_variable_set "@preco", 75.5
puts teste_e_design.instance_variable_get "@preco"
O problema é que além de tentarmos alterar o valor da uma variável que não
existe mais, o código acima é silencioso, não retorna nenhum erro avisando que
aquela variável não existe, pelo contrário, ele cria uma variável nova chamada
@preco que não tem relação alguma com nosso domínio, já que quando a variá-
vel não existe, ao tentarmos acessá-la ela será criada

O código tornou-se obsoleto, se não existirem testes de unidade que validem este
comportamentos, provavelmente ele seria observado somente em produção quando
algum cliente usasse o sistema.
A dica é simples aqui, se a variável de instância é privada, mesmo que a lingua-
gem lhe permita burlar essa característica, não faça, resolva o problema de outra
maneira. Certamente existirá algum método na interface pública do seu objeto que
faça por você a alteração da variável de uma forma segura e correta.


#Trabalhe com Arrays
Arrays em Ruby são coleções indexadas, ou seja, guardam objetos em uma determi-
nada ordem e disponibilizam métodos que permitem acessar objetos destas coleções
através do seu índice. Diferente do que acontece com a linguagem C ou Java, onde
precisamos definir arrays com uma quantidade máxima de objetos, em Ruby os ar-
rays não precisam ter seu tamanho pré definido, eles crescem conforme a necessi-
dade.
Existem várias formas de definir um Array em Ruby, sendo que a mais simples
é utilizando [] :
numeros = [1, 2, 3]



puts numeros.class # => Array
Criamos um objeto do tipo Array utilizando dois colchetes e separando os vá-
rios elementos do Array com a vírgula. Para acessar os elementos de um Array ,
utilizamos o método [indice] que recebe como argumento a posição do elemento
que desejamos acessar, lembrando que em Ruby os índices começam em 0:
numeros = [1, 2, 3]
puts numeros[0] # => 1
puts numeros[1] # => 2
puts numeros[2] # => 3
Quando precisamos acessar o primeiro ou o último elemento podemos fazê-lo
através de métodos ( first e last ) da classe Array :



numeros = [1, 2, 3]
puts numeros.first # => 1
puts numeros.last # => 3
Como Ruby é uma linguagem com tipagem dinâmica, podemos adicionar ob-
jetos (adicionar novos elementos em um array se dá através do método << , bem
parecido com um append, que adicionará o novo elemento no final do Array ) de
qualquer tipo dentro de um mesmo Array :
numeros = [1, 2, 3]
numeros << "ola"
puts numeros # [1, 2, 3, "ola"]
# => 1, 2, 3, "ola"
O problema de adicionar qualquer tipo de objeto dentro de um Array , é que
muitas vezes não sabemos qual o objeto que estamos lidando. Por exemplo, vamos
definir um método que recebe um Array como argumento, busca pelo primeiro
elemento, o multiplica por 2 e por fim imprime o resultado na tela:
def multiplica_primeiro_elemento_por_dois(numeros)
    puts 2 * numeros.first
end
multiplica_primeiro_elemento_por_dois [1, 2, 3] # 2
multiplica_primeiro_elemento_por_dois ["abc", 2, 3]
# => TypeError: String can't be coerced into Fixnum




Para nos protegermos desse problema, podemos isolar o código que faz essa atri-
buição em um único ponto, que será invocado em outras partes do código. Assim,
alteramos em um só lugar e o sistema inteiro está modificado. Essa conceito chama-
se encapsulamento.
Vamos isolar este comportamento de guardar livros dentro de um array, em
uma classe que podemos chamar de Biblioteca , e quando houver a necessidade
de mudarmos de Array para alguma outra estrutura, faremos em apenas um lu-
gar. Adicione a definição da classe Biblioteca dentro de um arquivo chamado
biblioteca.rb dentro do diretório lib :
    class Biblioteca
        def initialize
        @livros = []
        end
        def adiciona(livro)
        @livros << livro
        end
        end



        gora para guardar os livros que criamos, não vamos criar um Array e apendar
os valores diretamente nele. Criaremos um objeto do tipo Biblioteca e chama-
remos o método responsável por adicionar novos livros na biblioteca. Porém, para
testar a classe Biblioteca é necessário carregar o arquivo que contém sua defini-
ção:
require File.expand_path('lib/livro')
require File.expand_path('lib/biblioteca')
Ao passar do tempo, os arquivos necessários para efetuar os testes serão um
maior número. Para não dificultar os testes, vamos criar um único arquivo que fará o
require de todos os outros. Vamos chamá-lo de loja_virtual.rb e adicioná-
lo no diretório lib da pasta loja_virtual . Dentro dele faremos o carregamento
dos arquivos biblioteca.rb e livro.rb :

require File.expand_path('lib/livro')
require File.expand_path('lib/biblioteca')




Agora para efetuar os testes basta executar um único require , do arquivo
    loja_virtual.rb :
    require File.expand_path('lib/loja_virtual')
    E executar os testes da classe Biblioteca :
    biblioteca = Biblioteca.new
    teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 70.5
    web_design_responsivo = Livro.new "Tárcio Zemel", "452565", 189, 67.9

    biblioteca.adiciona teste_e_design
biblioteca.adiciona web_design_responsivo


Se precisarmos acessar quais são os livros que existem dentro da nossa biblioteca,
basta expor a variável @livros através do attr_reader :



biblioteca = Biblioteca.new
teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 70.5
web_design_responsivo = Livro.new "Tárcio Zemel", "452565", 189, 67.9
biblioteca.adiciona teste_e_design
biblioteca.adiciona web_design_responsivo
p biblioteca.livros


biblioteca = Biblioteca.new
# popula a biblioteca
for livro in biblioteca.livros do
p livro.valor
end


#Como separar os livros por categoria: trabalhe com Hash
A medida que nossa biblioteca cresce, precisamos separar os livros dentro da bibli-
oteca por categorias. Dessa forma, o primeiro passo para fazermos essa separação é
adicionarmos um atributo chamado categoria à classe Livro :
```ruby
# coding: utf-8
class Livro
    attr_accessor :valor
    attr_reader :categoria
    def initialize(autor, isbn = "1", numero_de_paginas, valor, categoria)
        @autor = autor
        @isbn = isbn
        @numero_de_paginas = numero_de_paginas
        @valor = valor
        @categoria = categoria
    end
    def to_s
        "Autor: #{@autor}, Isbn: #{@isbn},
        Páginas: #{@numero_de_paginas}, Categoria: #{@categoria}"
    end
end
```

teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9,
:testes
puts teste_e_design.categoria





Vamos utilizar um Hash , estrutura que guarda sempre uma chave (identificador
    único, que geralmente é um símbolo) e um valor (que pode ser qualquer tipo de
    objeto Ruby). Sua inicialização é feita utilizando {} :
    teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9,
    :testes
    web_design_responsivo = Livro.new "Tárcio Zemel", "452565", 189, 70.9,
    :web_design
    hash = {"123454" => web_design_responsivo,
    "452565" => web_design_responsivo}
    O hash acima possui dois containers, um cujo identificador é a String
    "123454" , que corresponde ao isbn do objeto teste_e_design , e outro

        cujo identificador é a String "452565" , que corresponde ao isbn do ob-
            jeto web_design_responsivo . Cada um destes containers possui um deter-
            minado valor, no Hash acima o container “123454” possui como valor o objeto
            teste_e_design , já o container, cujo identificado é “452565”, possui como valor o
            objeto web_design_responsivo .
            Quando desejamos acessar o valor que está incluso dentro um Hash , basta in-
            vocarmos o método [:chave] passando a chave identificadora do container:

```teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9, :testes
web_design_responsivo = Livro.new "Tárcio Zemel", "452565", 189, 70.9, :web_design
hash = { "123454" => web_design_responsivo, "452565" => web_design_responsivo }
p hash["123454"]
```

Agora vou provar que o encapsulamento que fizemos ao definir a classe
Biblioteca nos ajudará a migrar sem sofrimentos de Array para Hash a es-
trutura que guardava os livros:
class Biblioteca
attr_reader :livros
def initialize
@livros = {} # Inicializa com um hash
end
def adiciona(livro)
@livros[livro.categoria] ||= []
@livros[livro.categoria] << livro
end
end

O código que instancia os livros e os guarda dentro da biblioteca, continua fun-
cionando.
biblioteca = Biblioteca.new
teste_e_design = Livro.new "Mauricio Aniche", 247, "123454",
:testes
web_design_responsivo = Livro.new "Tárcio Zemel", 189, "452565",
:web_design
biblioteca.adiciona teste_e_design
biblioteca.adiciona web_design_responsivo
O problema agora é o método que utilizamos para retornar os livros que estão
dentro da nossa biblioteca, retornam um Hash e não mais um Array e a forma de
iterar sobre estas duas estruturas de dados são diferentes.