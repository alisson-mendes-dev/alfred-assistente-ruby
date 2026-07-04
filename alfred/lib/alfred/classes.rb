
#Init no menu

class Alfred 
    def initialize
        @comando_init = "alfred init"
    end

    def iniciar
        puts "Digite o comando para iniciar o programa: "
        comando = gets.chomp

        if comando == @comando_init
            menu
        else
            puts "Comando inválido!"
            iniciar
        end
    end
end


require_relative 'main'