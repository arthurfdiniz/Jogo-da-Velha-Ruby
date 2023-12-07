require_relative 'pegar_palavras.rb'
class Menu
    def self.menu
        puts "\n\n******** MENU DO JOGO ********\n\n"
        sleep(2)
        puts "---------------------"                                        #MENU DO JOGO
        puts "1 - Iniciar o jogo."
        puts "0 - Sair do jogo."
        puts "Digite a opção escolhida: "
        escolha = gets.chomp.to_i

     if escolha == 0
            system "clear"
            puts "\n\nENCERRANDO JOGO\n\n"
            sleep(0.5)
            puts "."
            sleep(0.5)
            puts "."                                                         #DA BREACK NO NO GAME QUANDO 0
            sleep(0.5)
            puts "."
            sleep(0.5)
            puts "\n\n|||| JOGO ENCERRADO |||||\n\n"
            return
     elsif escolha != 1
        puts 'OPCAO INVALIDA'
     else escolha == 1
        system "clear"
        puts ''
        puts 'É ISSO AI! LÁ VAMOS NÓS...'
        sleep (2)
        system "clear"
        puts 'Sorteando uma palavra para você poder adivinhar...'         #INICIA O GAME
        puts ''
        sleep (2)
        system "clear"
        puts 'Palavra Sorteada!'
        puts ''
        PrepararPalavras.pegar
        PrepararPalavras.sortear
        PrepararPalavras.dividir
        PrepararPalavras.chute1
        end
    end
end