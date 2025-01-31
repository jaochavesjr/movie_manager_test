# **Movie Manager**

Uma aplicação web para gerenciar filmes favoritos, utilizando **Ruby on Rails**, **MongoDB** e integração com a **API OMDb**.

---

## **Como Rodar o Projeto**

```bash
# Passo 1: Pré-requisitos
# Certifique-se de ter as seguintes ferramentas instaladas:
# - Docker e Docker Compose
# - Git

# Passo 2: Clonar o Repositório
git clone https://github.com/jaochavesjr/movie_manager_test.git
cd movie-manager

# Passo 3: Configurar Variáveis de Ambiente
# Crie um arquivo .env na raiz do projeto e adicione as seguintes variáveis:
echo "OMDB_API_KEY=your_omdb_api_key_here" > .env
echo "SECRET_KEY=your_secret_key_here" >> .env

# Passo 4: Construir e Iniciar a Aplicação
docker-compose up --build

# Passo 5: Acessar a Aplicação
# Após iniciar o projeto, abra o navegador e acesse:
http://localhost:3000

