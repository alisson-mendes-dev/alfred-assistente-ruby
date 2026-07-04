# O módulo Zimbo::Actions é o núcleo da automação do seu assistente,
# responsável pela interface de menu e gerenciamento automatizado do Gemfile.
#
# @author Alisson
# @since 0.1.0

module Zimbo
  module Actions
    # Definição das cores para o visual "hacker"
    CYAN = "\e[36m"
    RESET = "\e[0m"


    # Exibe o menu principal de interação no terminal e gerencia o fluxo de navegação.
    #
    # @return [void]
    def self.menu
      puts "\n#{CYAN}=============================="
      puts "      BEM-VINDO AO ZIMBO     "
      puts "==============================#{RESET}"
      puts "Escolha uma opção:"
      puts "1. Criar arquivo"
      puts "2. Zimbo Run / auto-save"
      puts "3. Sair"
      print "Opção: "
      opcao = STDIN.gets.chomp

      case opcao
      when "1"
        self.criar_arquivo
      when "2"
         self.load_arquivo
      when "3"
        puts "Saindo..."
        exit
      else
        puts "Opção inválida!"
        self.menu
      end
    end

    # Gerencia a adição interativa de novas gems ao Gemfile e executa o bundle install.
    #
    # @example Adicionando gems via terminal:
    #   Zimbo::Actions.criar_gem
    #
    # @return [void] O método modifica o arquivo Gemfile local e instala as dependências.

      def self.load_arquivo
      puts "Digite o comando (z on) para iniciar o server..."
      escolha = STDIN.gets.chomp

      if escolha != "z on"
          puts "Comando errado... Tente novamente."
          self.menu
          return
      end      

      caminho_app = File.expand_path("../../app.rb", __dir__)

      unless File.exist?(caminho_app)
        puts "❌ Arquivo app.rb não encontrado em: #{caminho_app}"
        self.menu
        return
      end

      puts "\n🚀 Zimbo Server Inicializado!"
      puts "Monitorando alterações no arquivo app.rb..."
      puts "Pressione CTRL + C no terminal para encerrar o monitoramento.\n\n"

      # Executa o arquivo pela primeira vez ao ligar o server
      puts "[Zimbo] Inicializando app.rb..."
      system("ruby #{caminho_app}")

      # Guarda o horário da última modificação do arquivo
      ultima_modificacao = File.mtime(caminho_app)

      # Loop infinito que fica vigiando o arquivo em segundo plano
      loop do
        sleep 1 # Checa a cada 1 segundo para não sobrecarregar o processador

        # Se o horário de modificação mudou, significa que o usuário salvou o arquivo
        if File.mtime(caminho_app) > ultima_modificacao
          puts "\n🔄 Alteração detectada! Reinicializando o script..."
          
          # Atualiza a marca de tempo para a nova hora do salvamento
          ultima_modificacao = File.mtime(caminho_app)

          # Executa o comando do sistema para rodar o arquivo Ruby atualizado
          system("ruby #{caminho_app}")
        end
      end
    rescue Interrupt
      # Captura o CTRL+C do usuário de forma amigável para voltar ao menu principal
      puts "\n\n🛑 Servidor Zimbo encerrado."
      self.menu
    end




    def self.criar_gem 
      path = File.join(Dir.pwd, 'Gemfile')
      gems_adicionadas = 0
  
      File.open(path, 'a') do |file|
        loop do
          print "Digite o nome da gem (ou '0' para sair): "
          gem_name = opcao = STDIN.gets.chomp
          break if gem_name == "0"
          next if gem_name.empty?

          file.puts "gem \"#{gem_name}\""
          gems_adicionadas += 1
          puts "✅ Gem \"#{gem_name}\" adicionada!"
        end
      end
         
      if gems_adicionadas > 0 
        puts "Instalando dependências..."
        if system("bundle install") 
          puts "🎉 Dependências instaladas com sucesso!"
        else
          puts "❌ Ocorreu um erro ao rodar o bundle install."
        end
      end
      puts "Processo encerrado. Seu Gemfile foi atualizado!"
    end

    # Verifica a existência ou cria o arquivo Gemfile na pasta de execução atual.
    #
    # @return [void] Após a criação, redireciona automaticamente para o método de adicionar gems.
    def self.criar_arquivo 
      path = File.join(Dir.pwd, 'Gemfile')
      puts "Você está na: #{Dir.pwd}"
      print "Digite 1 para criar o Gemfile aqui: "
      opcao = STDIN.gets.chomp

      if opcao == "1"
        if File.exist?(path)
          puts "⚠️ Arquivo Gemfile já existe."
        else
          File.open(path, 'a') do |file|
            file.puts "source \"https://rubygems.org\""
          end
          puts "✅ Gemfile criado com sucesso!"
        end
        self.criar_gem
      else
        self.menu
      end
    end
  end

  
end