# Gym App

Este README documenta os passos necessários para configurar e executar a aplicação.

## Requisitos

- **Ruby versão**: 3.3.0
- **Rails versão**: 8.0.0
- **Banco de Dados**: PostgreSQL

## Dependências do Sistema

- Docker
- Docker Compose

## Configuração

1. Clone o repositório:
    ```sh
    git clone https://github.com/tianosouza/gym_app
    cd gym_app
    ```

## Criação do .env


  ```sh
  DB_HOST=gym_app-db
  POSTGRES_DB=gym_app-pg
  POSTGRES_USER=gym_app
  POSTGRES_PASSWORD=gym_app
  ```


## Inicialização do Banco de Dados

1. Execute as migrações:
    ```sh
    bin/rails db:migrate
    ```

2. Popule o banco de dados com dados iniciais (se aplicável):
    ```sh
    bin/rails db:seed
    ```

## Instruções de Container

1. Construa a imagem Docker:
    ```sh
    docker-compose up --build -d web 
    ```

2. Execulte o containers:
    ```sh
    docker exec -ti gym_app bash
    ```

3. Acesse a aplicação em `http://localhost:4002`

## Contribuição

1. Faça um fork do projeto
2. Crie uma nova branch apartir da branch homologation (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -am 'Adiciona nova feature'`)
4. Faça o push para a branch (`git push origin feature/nova-feature`)
5. Abra um Pull Request

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.
