# 🚀 Curso de Verão Flutter & Dart - UFF

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
[![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)](https://firebase.google.com/)
[![GetX](https://img.shields.io/badge/GetX-800080?style=for-the-badge&logo=flutter&logoColor=white)](https://pub.dev/packages/get)

## 📌 Sobre o Projeto
Este repositório contém os projetos e exercícios desenvolvidos durante o **Curso de Verão de Flutter e Dart da Universidade Federal Fluminense (UFF)**. O foco do curso foi a construção de aplicações móveis modernas, escaláveis e integradas com serviços de nuvem.

## 🛠️ O que foi implementado
O projeto principal destaca a criação de um catálogo de filmes com funcionalidades completas de autenticação e gerenciamento de dados:

- **Arquitetura e Padrões:** Utilização do padrão **Repository/Provider** para separação de responsabilidades e consumo de APIs/Banco de dados.
- **Gerenciamento de Estado:** Implementação robusta com **GetX** para controle de estados, gerenciamento de dependências (Bindings) e navegação.
- **Integração com Firebase:** - Autenticação de usuários.
  - Armazenamento de dados em tempo real.
- **Módulos Principais:**
  - `Splash`: Tela de carregamento com lógica de verificação de autenticação.
  - `Login`: Interface intuitiva integrada ao Firebase Auth.
  - `Movies`: Listagem, visualização de detalhes e formulários para cadastro/edição de filmes.

## 📁 Estrutura de Pastas
```text
lib/app/
├── modules/
│   ├── dashboard/      # Controladores e UI da tela principal
│   ├── login/          # Autenticação e integração Firebase
│   ├── movies/         # Lógica de negócio e telas do catálogo de filmes
│   └── splash/         # Lógica de inicialização do app
├── data/               # Providers, Repositories e Models
└── routes/             # Definição de rotas nomeadas com GetX
