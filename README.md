

# Relatórios

Repositório para documentação de relatórios

## Configuração

Execute `make docs` para acessar o servidor. Para construir os estáticos, execute `make build-docs`.


## Adição de novos documentos

1. Adicionar novo documento na pasta `./docs`
2. Adicionar o nome do arquivo no `mkdocs.yml`

``
nav:
  - Home: 'index.md'
  - 'Checklist Conferências': 'conferencias.md'
  - Moderadores: 'moderacao.md'
  - 'Conferência da Juventude':
    - 'Relatório 13/09': 'conjuv/relatorio_conjuv-13-09.md'
    - 'Relatório 27/09': 'conjuv/relatorio_conjuv-27-09.md'
    - 'Relatório 03/10': 'conjuv/relatorio_conjuv-03-10.md'
    - 'Relatório 05/10': 'conjuv/relatorio_conjuv_03-10.md'
``
3. testar localmente
# Visualizando 
Para visualizar os relatórios, acessar :

[https://documentacao-lappis-unb-decidimbr-0bc4b1f026bf71df159b7aaaa9694.gitlab.io](https://documentacao-lappis-unb-decidimbr-0bc4b1f026bf71df159b7aaaa9694.gitlab.io)
