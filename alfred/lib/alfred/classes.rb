module Alfred
  class Alfred 
    def initialize
      @comando_init = "alfred init"
    end

    def iniciar
      puts "Digite o comando para iniciar o programa: "
      comando = gets.chomp

      if comando == @comando_init
        ::Alfred::Actions.menu 
      else
        puts "Comando inválido!"
        iniciar
      end
    end
  end
end