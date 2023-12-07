class PrepararPalavras
  @palavras = []

  def self.pegar
    File.open('palavras.txt', 'r') do |file|
      file.each_line do |linha|
        @palavras << linha.chomp
      end
    end
  end

  def self.sortear
    pegar if @palavras.empty?
    palavra_sorteada = @palavras.sample
    @palavra_sorteada = palavra_sorteada
    caractares_palavra_sorteada = @palavra_sorteada.size
    sleep(3)
    system "clear"
    File.open('img/erro1.txt', 'r') do |file|
      while content = file.gets
        puts content
      end
    end
    puts "A sua palavra tem #{caractares_palavra_sorteada} caracteres!!!"
    puts @palavra_sorteada
  end

  def self.dividir
    palavra_dividida = @palavra_sorteada.split('')
    @palavra_dividida = palavra_dividida
  end

  def self.chute1
    sleep(0.2)
    puts 'Chute a uma letra: '
    @primeira_letra = gets.chomp

    if !@palavra_dividida.include?(@primeira_letra)
      File.open('img/erro2.txt', 'r') do |file|
        while content = file.gets
          puts content
        end
        chute2
      end
    else
      puts 'VOCÊ ACERTOU UMA LETRA'
      chute2
    end
  end

  def self.chute2
    sleep(0.2)
    puts @primeira_letra
    puts 'Chute a uma letra: '
    @segunda_letra = gets.chomp

    if !@palavra_dividida.include?(@segunda_letra)
      File.open('img/erro3.txt', 'r') do |file|
        while content = file.gets
          puts content
        end
        chute3
      end
    else
      puts 'VOCÊ ACERTOU MAIS UMA LETRA'
      chute3
    end
  end

  def self.chute3
    sleep(0.2)
    puts @primeira_letra + @segunda_letra
    puts 'Chute a uma letra: '
    @terceira_letra = gets.chomp

    if !@palavra_dividida.include?(@terceira_letra)
      File.open('img/erro4.txt', 'r') do |file|
        while content = file.gets
          puts content
        end
        chute4
      end
    else
      puts 'VOCÊ ACERTOU MAIS UMA LETRA'
      chute4
    end
  end

  def self.chute4
    sleep(0.2)
    puts @primeira_letra + @segunda_letra + @terceira_letra
    puts 'Chute a uma letra: '
    @quarta_letra = gets.chomp

    if !@palavra_dividida.include?(@quarta_letra)
      File.open('img/erro7.txt', 'r') do |file|
        while content = file.gets
          puts content
        end
      end
    else
      puts 'VOCÊ ACERTOU TODAS'
      exibir_palavra
    end
  end
  def self.exibir_palavra
    palavra_exibida = @palavra_dividida.map { |letra| letra.nil? ? '_' : letra }.join(' ')
    puts "Palavra: #{palavra_exibida}"
  end
end
