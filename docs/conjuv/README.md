## Execução do notebook de criação dos relatórios semanais

### Fluxo de execução do notebook
- **Extração de dados**: é feito a extração dos dados em `.csv` das plataformas Brasil Participativo e Matomo via Scraping.
- **Tratamento e Manipulação de dados**: é feito uma transformação dos dados mantendo apenas os arquivos necessários para a análise. Por ultimo o Dataframe é criado para acessar apenas os dados com as informações importantes.
- **Gráficos e Análise**: após os dados serem estruturados, os gráficos e tabelas com as análises dos dados especificos são gerados.
- **Escrita do Relaório em Markdown**: por ultimo, é gerado o relatório em markdown com os textos pré-definidos que estão em `textos.yml` e os graficos que estão no repositório `/data` de cada relatório.

### Pré-requisitos

Clonar o repositório:
```bash
git clone https://gitlab.com/lappis-unb/decidimbr/documentacao.git
```

Antes de executar o notebook, certifique-se de ter as seguintes dependências instaladas:
- Python 3.x
- Jupyter Notebook
- As bibliotecas Python listadas no arquivo `requirements.txt`

Execute esse comando para instalar as dependências: 

```bash
pip install -r requirements.txt
```

Além disso, você precisará ter o Chrome WebDriver instalado em seu sistema. Você pode baixá-lo [aqui](https://chromedriver.chromium.org/downloads).


### Configuração
Antes de executar o notebook, configure as variáveis de autenticação que estão no arquivo `credentials.env`.

### Executando o Notebook

- Abra o terminal na pasta do projeto.
- Inicie o Jupyter Notebook comando: 
    ```bash 
    jupyter notebook
    ```
- No navegador abra o notebook `relatorio_conjuv.ipynb`.
- Execute célula por célula, todos os dados de saídas serão salvos em seus respectivos diretórios.





