require 'tty-progressbar'

class Inicializacao
    def self.iniciando
      bar = TTY::ProgressBar.new("INICIANDO [:bar]", total: 60)
      60.times do
      sleep(0.1)
      bar.advance
      end
    end
      system 'clear'
      File.open('img/jogo_da_forca.txt', 'r') do |file|
    while content = file.gets
      puts content
      end
    end 
end


