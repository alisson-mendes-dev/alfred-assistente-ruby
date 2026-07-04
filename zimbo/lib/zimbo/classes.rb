# A classe Zimbo atua como o ponto de entrada principal (entry point) 
# para o sistema de automação.
#
# @author Alisson
# @since 0.1.0

module Zimbo
  class Zimbo

    # Inicializa uma nova instância da classe Zimbo.
    # 
    # @return [Zimbo::Zimbo] Uma nova instância configurada.
    def initialize
      @comando_init = "Z -i"
    end
    
    # Inicia o loop de recepção de comandos do terminal.
    # Solicita a entrada do usuário e direciona para o menu de ações 
    # caso o comando de inicialização seja reconhecido.
    #
    # @example Iniciar o programa:
    #   Zimbo = Zimbo::Zimbo.new
    #   Zimbo.iniciar
    #
    # @return [void]
    def iniciar
      puts "Digite o comando para iniciar o programa (ou 'sair' para encerrar): "
      comando = STDIN.gets.chomp
      
      if comando == "sair"
        puts "Encerrando..."
        exit
      elsif comando == @comando_init
        ::Zimbo::Actions.menu 
      else
        puts "Comando inválido!"
        iniciar
      end
    end
  end

end