# **Movie Manager**

Uma aplicação web para gerenciar filmes favoritos, utilizando **Ruby on Rails**, **MongoDB** e integração com a **API OMDb**.

---

## **Como Rodar o Projeto**

### **1. Pré-requisitos**
Certifique-se de ter as seguintes ferramentas instaladas:
- **Docker** e **Docker Compose**
- **Git**

### **2. Clonar o Repositório**
Clone o repositório para sua máquina local:
```bash
https://github.com/jaochavesjr/movie_manager_test.git
cd movie-manager

Crie um arquivo .env na raiz do projeto:

Adicione as seguintes variáveis ao arquivo .env:

OMDB_API_KEY=your_omdb_api_key_here
SECRET_KEY=your_secret_key_here

Execute o comando abaixo para iniciar a aplicação:

docker-compose up --build

Abra o navegador e acesse:

http://localhost:3000
