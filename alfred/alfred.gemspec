Gem::Specification.new do |spec|
  spec.name          = "alfred"
  spec.version       = "0.1.0"
  spec.authors       = ["Alisson"] # Coloque seu nome aqui
  spec.email         = ["alissonmendesw3@gmail.com"] # Opcional, mas recomendado

  spec.summary       = "Um assistente CLI para automação de fluxo de trabalho."
  spec.description   = "Alfred é uma ferramenta para automatizar a criação de arquivos e configuração de dependências em projetos Ruby."
  spec.homepage      = "https://github.com/alisson-mendes-dev/alfred-assistente-ruby" # Se for colocar no GitHub
  spec.license       = "MIT" 

  # Especifica os arquivos que serão incluídos na gem
  spec.files         = Dir["lib/**/*.rb", "bin/*", "README.md", "LICENSE.txt"]
  
  # Define o executável que será instalado no PATH do sistema
  spec.executables   = ["alfred"] 
  
  # Certifique-se de que o diretório executável é o correto
  spec.bindir        = "bin"
  spec.require_paths = ["lib"]

  # Se sua gem depender de outras (como 'tty-prompt' no futuro), liste aqui:
  # spec.add_dependency "tty-prompt", "~> 0.23"
end