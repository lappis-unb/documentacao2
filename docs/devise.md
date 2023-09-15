
???+ abstract "Resumo da análise"

    O Decidim utiliza o Devise como base para autenticação e registro de usuários e disponibiliza features e módulos relevantes para a implementação, contemplando os requisitos
    levantados para a solução.

    A solução proposta é utilizar o formulário de registro do Decidim, sobrescrevendo pontos das Controllers do Devise para adicionar os comportamentos
    específicos do Brasil Participativo. Para a validação das contas, deve ser utilizada a API oficial de Authorizations, implementando fluxos
    alternativos via Verifications para atender aos critérios de cruzamento com as bases do SISP para CNPJ e também ao critério de fornecimento de foto de documento
    oficial.

    Para a incorporação de novos campos ao Perfil do usuário, tem-se como base o módulo Extra User Fields, que é uma referência para a implementação de um
    módulo próprio do Brasil Participativo para adicionar campos ao formulário de registro ou à página de edição do Perfil. Além disso, é possível
    fazer a inclusão dos formulários de enriquecimento da base atualizando os dados do perfil diretamente.

    **Para o contexto da plataforma, essa solução é a mais adequada e simples para implementação**.

## O que é e como funciona

O [Devise](https://github.com/heartcombo/devise) é uma gem bastante flexivel utilizada em projetos Rails para a construção de ferramentas de registro e autenticação de usuários. O Decidim implementa soluções de autenticação variadas e explora vários módulos auxiliares do Devise, como [Omniauth](https://github.com/decidim/omniauth-decidim) (Rails [Omniauth](https://github.com/omniauth/omniauth)), login social e por formulário de login.

O Decidim disponibiliza features e módulos relevantes para a implementação no Brasil Participativo:

  1. [User registration](https://docs.decidim.org/en/v0.27/customize/users_registration_mode): Configuração direta dos recursos de registro e autenticação.
  2. [Verifications](https://andreslucena.gitbooks.io/docs-developers/content/modules/official/verifications.html): Implementação de *Workflows* específicos para verificação de contas.
  3. [Authorization](https://docs.decidim.org/en/v0.27/customize/authorizations): API para implementação de fluxos alternativos para autorização de usuários.
  4. [Extra User Fields](https://github.com/PopulateTools/decidim-module-extra_user_fields): Módulo da comunidade que adiciona novos campos ao Perfil do usuário.

Tais recursos já são utilizados em vários modulos da comunidade e a documentação disponibilizada inclui exemplos de uso e tutoriais de integração.

## Cenário Brasil Participativo

O cenário inclui o uso do próprio formulário de registro do Decidim, sobrescrevendo pontos do fluxo para adicionar os comportamentos específicos do Brasil Participativo.
Para a validação das contas recém criadas, podem ser utilizadas as APIs oficiais de Authorizations e Verifications, atendendo aos critérios de cruzamento com as APIs do SISP
para CNPJ/CPF e também ao critério de fornecimento de foto de documento oficial para pessoas estrangeiras.

Para a incorporação de novos campos ao Perfil do usuário, tem-se como base o módulo Extra User Fields, que pode ser uma referência para a implementação de um
módulo próprio do Brasil Participativo que incluia os campos e adicione ao formulário de registro ou à página de edição do Perfil. Além disso, é possível
fazer a implementação dos formulários de enriquecimento da base atualizando os dados do perfil diretamente e possibilitando ao usuário editar tais dados sempre que
necessário.

## Como pode ser implementado

A estrutura proposta para a autenticação secundária do Brasil Participativo envolve 2 módulos distintos. Um primeiro para a inclusão do novo fluxo utilizando a API de Authorizations, que irá fazer a validação dos dados enviados, via API do SISP no caso de dados de pessoas jurídicas, ou via foto de documento oficial moderado por um administrador, no caso de pessas estrangeiras. Caso o volume de cadastros de pessoas estrangeiras cresça substancialmente, pode ser incluída uma validação adicional por detecção de imagem no frontend, que indique os arquivos enviados que são válidos e os que não puderam ser avaliados. Os documentos considerados fraudulentos não poderão ser submetidos à plataforma.

O segundo módulo irá adicionar novos atributos ao perfil de usuário, como Número de inscrição no CPF, endereço de e-mail, número de telefone, número de inscrição do trabalhador (NIS), municipío, unidade da Federação e região de residência, data de nascimento, Sexo, raça/cor, deficiência, profissão, grau de instrução, beneficiário do Bolsa Família, situação domiciliar, função principal de trabalho, grupos populacionais tradicionais e específicos, família quilombola, residência em reserva indígena e renda. Irá também definir os campos adicionais ao cadastro, caso necessário, além de possibilitar a alteração dos campos na edição do perfil.

É possível que a autenticação com o govbr seja separada como módulo, um plugin adicional do Decidim, disponibilizado como um módulo da comunidade. As correções de autenticação deverão ser implementadas ou migradas para esse módulo.

