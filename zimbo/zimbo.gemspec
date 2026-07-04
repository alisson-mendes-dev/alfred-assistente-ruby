Gem::Specification.new do |spec|
  spec.name          = "zimbo"
  spec.version       = "0.2.3"
  spec.authors       = ["Alisson"] 
  spec.email         = ["alissonmendesw3@gmail.com"] # Opcional

  spec.summary       = "Um assistente CLI para automação de fluxo de trabalho."
  spec.description   = "zimbo é uma ferramenta para automatizar a criação de arquivos e configuração de dependências em projetos Ruby."
  spec.homepage      = "https://github.com/alisson-mendes-dev/ruby_zimbo" 
  spec.license       = "MIT" 

  spec.files         = Dir["lib/**/*.rb", "bin/*", "README.md", "LICENSE.txt"]
  
  spec.executables   = ["zimbo"] 
  
  
  spec.bindir        = "bin"
  spec.require_paths = ["lib"]

end