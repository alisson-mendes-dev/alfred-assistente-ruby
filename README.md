<div align="center">

# 🚀 Zimbo!

### Seu microframework e assistente de automação para projetos Ruby

**Automatize tarefas repetitivas. Monitore seus arquivos em tempo real. Foque no que realmente importa: escrever código.**

<p align="center">

![Ruby](https://img.shields.io/badge/Ruby-3.x-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![CLI](https://img.shields.io/badge/Terminal-CLI-4CAF50?style=for-the-badge&logo=gnubash&logoColor=white)
![MIT](https://img.shields.io/badge/Licença-MIT-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-success?style=for-the-badge)

</p>

### ⚡ Menos configuração. Mais desenvolvimento.

</div>

---

# 🚀 O que é o Zimbo?

O **Zimbo** é uma ferramenta de linha de comando (CLI) desenvolvida em Ruby criada inicialmente para automatizar o gerenciamento de dependências e evoluindo para se tornar um microframework completo.

Com o Zimbo, você não precisa ficar salvando e reiniciando seus scripts manualmente ou configurando Gemfiles do zero. Ele traz um ecossistema inteligente com suporte nativo a **Hot Reload** direto no seu terminal.

O objetivo é um só:

> **Economizar seu tempo para que você possa focar no desenvolvimento do seu software.**


---

# ✨ Funcionalidades

<table>
<tr>

<td width="50%">

## 🔄 Hot Reload integrado

Assista arquivos como `app.rb` e reinicie a aplicação automaticamente a cada salvamento.

</td>

<td width="50%">

## 📦 Gerenciamento do Gemfile

Adicione Gems dinamicamente sem precisar abrir e editar o arquivo manualmente.

</td>

</tr>

<tr>

<td>

## ⚡ Instalação automática

Instale todas as novas dependências do projeto imediatamente via Bundle.

</td>

<td>

## 💻 Interface Interativa

Uma experiência visual minimalista em estilo "hacker" direto no seu terminal.

</td>

</tr>

<tr>

<td>

## 🎯 Mais produtividade

Elimine gargalos de configuração ao iniciar novos scripts ou testar Gems.

</td>

<td>

## 🔌 Arquitetura de Microframework

Base leve e modular projetada para crescer junto com a sua aplicação.

</td>

</tr>

</table>

---

# 📸 Demonstração

```text
==============================
      BEM-VINDO AO ZIMBO     
==============================
Escolha uma opção:
1. Criar arquivo
2. Zimbo Run / auto-save
3. Sair
Opção: 2

🚀 Zimbo Server Inicializado!
Monitorando alterações no arquivo app.rb...

[Zimbo] Inicializando app.rb...
Hello, World!

🔄 Alteração detectada! Reinicializando o script...
Hello, Zimbo!
```

# 📦 Instalação

### Compilando a Gem localmente

```bash
gem build zimbo.gemspec
```

### Adicionando ao seu projeto via Gemfile

```ruby
gem 'zimbo', path: '.'
```

### No RubyGems

```bash
gem install zimbo
```

---

# 🚀 Começando

Para inicializar a interface interativa da gem, execute:

```bash
bundle exec zimbo
```

Se preferir rodar o script de menu diretamente sem compilar a estrutura binária:

```bash
ruby lib/zimbo/main.rb
```

---

# ❤️ Por que usar o Zimbo?

Todo desenvolvedor Ruby passa por ciclos repetitivos: criar pastas, estruturar arquivos, monitorar processos e gerenciar dependências de teste. 

O Zimbo elimina essas etapas mecânicas, unificando a automação de pacotes com um servidor de desenvolvimento reativo que se adapta ao seu editor de código.

---

# 🎯 Filosofia

O Zimbo segue os princípios fundamentais do ecossistema Ruby.

❤️ Felicidade do Desenvolvedor

⚡ Convenção acima de Configuração

🎨 Experiência agradável no Terminal

🚀 Automação sempre que possível

🛠 Simplicidade acima da complexidade

---

# 🛣 Roadmap

| Status | Funcionalidade |
|---------|----------------|
| ✅ | Interface Interativa (Menu CLI) |
| ✅ | Gerenciamento automatizado do Gemfile |
| ✅ | Servidor com monitoramento Hot Reload |
| 🚧 | Templates estruturais de Projetos |
| 🚧 | Biblioteca de Rotas HTTP (Baseada em Rack) |
| 🚧 | Sistema de Plugins extensíveis |
| ⏳ | Gerador de APIs minimalistas |
| ⏳ | Autocompletar inteligente no Terminal |

---

# 📁 Estrutura do Projeto

```text
zimbo/
│
├── bin/
│   └── zimbo
├── lib/
│   ├── zimbo/
│   │   └── main.rb
│   └── zimbo.rb
│
├── Gemfile
├── zimbo.gemspec
├── LICENSE.txt
└── README.md
```

---

# 🤝 Como contribuir

Toda contribuição é muito bem-vinda! Se você deseja colaborar com a evolução do Zimbo:

```bash
git clone https://github.com

cd ruby_zimbo

bundle install
```

Depois:
- Faça um Fork do projeto.
- Crie uma nova branch para a sua feature (`git checkout -b feature/minha-melhoria`).
- Implemente e teste suas alterações.
- Envie um Pull Request detalhado!

---

# 📜 Licença

Distribuído sob a licença **MIT**. Consulte o arquivo `LICENSE.txt` para mais informações.

---

<div align="center">

## ⭐ Gostou do projeto?

Se o Zimbo facilitou seu fluxo de desenvolvimento, considere deixar uma **⭐ Star** no repositório.

Isso ajuda o projeto a alcançar mais desenvolvedores da comunidade Ruby!

<br>

**Feito com ❤️ utilizando Ruby.**

</div>
