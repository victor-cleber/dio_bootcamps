#Tadeu e Juliana utilizam um algoritmo simples para trocar mensagens encriptadas. Por exemplo, se quiserem dizer "traz pao", enviam "38-34-2-46-0-30-2-28". O trecho incompleto de código Ruby abaixo poderia ser utilizado numa das etapas de decodificação:



def step(code) 
    temp = [] 
    code.split("-").each do |character| 
        temp + (character.to_i / 2).to_s
    end
    temp.join("-") 
    print temp
end

step("38-34-2-46-0-30-2-28")

#* ou /

Alternativas:
temp + (character.to_i * 2).to_s

temp + (character.to_s / 2).to_i

temp << (character.to_i * 2).to_s

temp << (character.to_i / 2).to_s