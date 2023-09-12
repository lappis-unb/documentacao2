
Este repositório contém os estudos feitos sobre as ferramentas de autenticação e registro de usuários disponíveis no ecossistema Decidim, mais especificamente sobre [Keycloak](https://www.keycloak.org/) e [Devise](https://github.com/heartcombo/devise), ferramentas utilizadas pelo Decidim para autenticação e registro de usuários.

Foram levados em consideração e avaliados também os demais [módulos de autenticação](https://decidim.org/modules/#auth) da comunidade e possíveis aplicabilidades ao cenário de uso da plataforma **Brasil Participativo**.

## Requisitos gerais

Para o desenvolvimento de autenticação alternativa ao gov.br, é necessário primeiro que exista a premissa do **gov.br como primeira alternativa de autenticação**. A ferramenta proposta precisa ser secundária e, consequentemente, mais complexa ou burocrática para que não se torne a principal forma de autenticação.

A necessidade de um segundo mecanismo de registro/login se dá para os casos que não são cobertos pelo gov.br, como:

  1. Autenticação de pessoas estrangeiras
  2. Autenticação de pessoas jurídicas

A autenticação de pessoas estrangeiras é uma garantia legal e precisa ser disponibilizado para que o Brasil Participativo consiga substituir plenamente a plataforma participa + Brasil. A autenticação deverá ser feita de forma a garantir a pessoalidade do acesso e critérios de segurança, como autenticação em dois fatores ou pelo reconhecimento de documentação oficial (selfie com passaporte, por exemplo).


Já para pessoas jurídicas, a autenticação precisa garantir a unicidade e veracidade dos dados fornecidos. Nesse sentido, foram avaliadas APIs públicas e governamentais de consulta de dados da receita para validação das informações com a finalidade última de evitar perfis falsos e robôs. Nessa avaliação, inclímos as bases do SISP que a presidência já possui acesso.

Além das questões que dizem respeito exclusivamente aos dados de acesso à plataforma, foi necessário incorporar na pesquisa, soluções que possibilitem o enriquecimento da base, para que o cidadão possa informar dados como: número de telefone, número de inscrição do trabalhador (NIS), municipío, unidade da Federação e região de residência, data de nascimento, sexo legal, raça/cor, deficiência, profissão, grau de instrução, se é beneficiário do Bolsa Família, situação domiciliar, função principal de trabalho, grupos populacionais tradicionais e específicos, família quilombola, residência em reserva indígena e renda. Esse fluxo precisa ser possibilitado fora do registro, porém serão dados incorporados ao Perfil e deverão ser confgurados como uma extensão do Decidim. Uma solução semelhante seria o módulo [extra_user_fields](https://github.com/PopulateTools/decidim-module-extra_user_fields).
