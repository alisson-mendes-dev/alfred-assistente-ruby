# O módulo Alfred::Actions é o núcleo da automação do seu assistente,
# responsável pela interface de menu e gerenciamento automatizado do Gemfile.
#
# @author Alisson
# @since 0.1.0

module Alfred
  module Actions
    # Definição das cores para o visual "hacker"
    CYAN = "\e[36m"
    RESET = "\e[0m"


    # Exibe o menu principal de interação no terminal e gerencia o fluxo de navegação.
    #
    # @return [void]
    def self.menu
      puts "\n#{CYAN}=============================="
      puts "      BEM-VINDO AO ALFRED     "
      puts "==============================#{RESET}"
      puts "Escolha uma opção:"
      puts "1. Criar arquivo"
      puts "2. Sair"
      print "Opção: "
      opcao = STDIN.gets.chomp

      case opcao
      when "1"
        self.criar_arquivo
      when "2"
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
    #   Alfred::Actions.criar_gem
    #
    # @return [void] O método modifica o arquivo Gemfile local e instala as dependências.

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