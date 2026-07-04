Gem::Specification.new do |spec|
  spec.name          = "alfred-flow"
  spec.version       = "0.2.1"
  spec.authors       = ["Alisson"] 
  spec.email         = ["alissonmendesw3@gmail.com"] # Opcional

  spec.summary       = "Um assistente CLI para automação de fluxo de trabalho."
  spec.description   = "Alfred é uma ferramenta para automatizar a criação de arquivos e configuração de dependências em projetos Ruby."
  spec.homepage      = "https://github.com/alisson-mendes-dev/alfred-assistente-ruby" 
  spec.license       = "MIT" 

  spec.files         = Dir["lib/**/*.rb", "bin/*", "README.md", "LICENSE.txt"]
  
  spec.executables   = ["alfred-flow"] 
  
  
  spec.bindir        = "bin"
  spec.require_paths = ["lib"]

end