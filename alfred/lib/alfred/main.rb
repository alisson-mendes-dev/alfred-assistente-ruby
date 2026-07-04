require_relative 'classes'

BASE_DIR = __dir__
GEMFILE_PATH = File.join(BASE_DIR, 'Gemfile')

def menu
    puts "\n=============================="
    puts "      BEM-VINDO AO ALFRED     "
    puts "=============================="
    puts "Escolha uma opção:"
    puts "1. Criar arquivo"
    puts "2. Sair"
    print "Opção: "
    opcao = gets.chomp.to_i

    case opcao
    when 1
        criar_arquivo
    when 2
        puts "Saindo..."
        exit
    else
        puts "Opção inválida!"
        menu
    end
end

# Adicionar uma gem

def criar_gem 

    gems_adicionadas = 0

    if File.exist?(GEMFILE_PATH)
        "Este arquivo já existe..."
    end
  
  File.open(GEMFILE_PATH, 'a') do |file|
    loop do
      print "Digite o nome da gem (ou '0' para sair): "
      gem_name = gets.chomp.strip
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

# Mostra e cria um arquivo na pasta 

def criar_arquivo 
  puts "Você está na: #{Dir.pwd}"
  print "Digite 1 para criar o Gemfile em #{BASE_DIR}: "
  opcao = gets.chomp

  if opcao == "1"
    if File.exist?(GEMFILE_PATH)
      puts "⚠️ Arquivo Gemfile já existe."
    else
      File.open(GEMFILE_PATH, 'w') do |file|
        file.puts "# Caminho: #{BASE_DIR}"
        file.puts "source \"https://rubygems.org\""
      end
      puts "✅ Gemfile criado com sucesso!"
    end
    criar_gem
  else
    menu
  end
end


# Chamando as classes e métodos para iniciar o programa

alfred = Alfred.new
alfred.iniciar


menu