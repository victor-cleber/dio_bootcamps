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



biblioteca = []
teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 70.5
web_design_responsivo = Livro.new "Tárcio Zemel", "452565", 189, 67.9
biblioteca << teste_e_design
biblioteca << web_design_responsivo
puts biblioteca