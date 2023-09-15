
???+ abstract "Resumo da avaliação"

    A avaliação dos módulos de autenticação do Decidim identificou que vários dos módulos são específicos para cenários de uso individuais,
    como países europeus e plataformas específicas fora do contexto brasileiro, como [CAS Client](https://github.com/Som-Energia/decidim-cas-client),
    [CiviCRM](https://github.com/openpoke/decidim-module-civicrm) e [IdCat mòbil](https://github.com/gencat/decidim-module-idcat_mobil).

    Os módulos que de fato podem agregar ao uso da plataforma são poucos: [Keycloak](https://github.com/Platoniq/decidim-module-keycloak),
    [API auth](https://github.com/mainio/decidim-module-apiauth), [Extra User Fields](https://github.com/PopulateTools/decidim-module-extra_user_fields).

    Além dos módulos da comunidade, foi avaliado também o sistema de autenticação/registro do prórpio Decidim:
    os módulos [Authorizations](https://docs.decidim.org/en/v0.27/customize/authorizations)
    e [Registration Mode](https://docs.decidim.org/en/v0.27/customize/users_registration_mode). Os módulos utilizam o Devise para implementar tais recursos.

    As principais alternativas foram:

     - **Keycloak:** Sistema de autenticação externo, com stack simples com plugin funcional para o Decidim.
     - **Devise:** Módulos Authorization e Registration do Decidim, que podem ser utilizados diretamente.

    A estrutura dos módulos apresentou também a possibilidade de utilização da [API de Verificações](https://andreslucena.gitbooks.io/docs-developers/content/modules/official/verifications.html)
    do Decidim para a validação das contas de usuário criadas.


## Módulos de autenticação

A lista de módulos de autenticação inclui os seguintes repositórios:

1. [API auth](https://github.com/mainio/decidim-module-apiauth): Autenticação JWT via API externa.
2. [Access Codes](https://github.com/Platoniq/decidim-module-access_codes): Utiliza o recurso de Verifications do Decidim para permitir o envio de códigos de acesso a usuários.
3. [Age Action Authorization](https://github.com/diputacioBCN/decidim-diba/tree/master/decidim-age_action_authorization): Verificação de idade mínima como critério de cadastro.
4. [Central Authentication Service (CAS)](https://github.com/Som-Energia/decidim-cas-client): Integração com sistema CAS.
5. [CiviCRM](https://github.com/openpoke/decidim-module-civicrm): Integração com sistema CiviCRM.
6. [Custom CSV Census](https://github.com/CodiTramuntana/decidim-verifications-custom_csv_census): Validação de usuários com base em dados importados via csv.
7. [Direct Verifications](https://github.com/Platoniq/decidim-verifications-direct_verifications): Cadastro de usuários por meio de importação de arquivo csv.
8. [Donations](https://github.com/decidiamo/decidim-module-donations): Validação de usuários por meio de doações via PayPal.
9. **[Extra User Fields](https://github.com/PopulateTools/decidim-module-extra_user_fields): Módulo que adiciona campos ao perfil do usuário e à página de registro.**
10. [File Authorization Handler](https://github.com/MarsBased/decidim-file_authorization_handler): Arquivado. Duplicado com o Custom CSV Census.
11. [IdCat mòbil](https://github.com/gencat/decidim-idcat_mobil): Integração com o sistema IdCat mòbil.
12. **[Keycloak](https://github.com/Platoniq/decidim-module-keycloak): Integração com sistema externo de autenticação Keycloak.**
13. [LDAP](https://github.com/diputacioBCN/decidim-diba/tree/master/decidim-ldap): Integração com sistema LDAP.
14. [MPASSId](https://github.com/mainio/decidim-module-mpassid): Integração com sistema externo MPASSid.
15. [MS Active Directory (AD)](https://github.com/mainio/decidim-module-msad): Integração com sistema AD.
16. [Microsoft](https://github.com/openpoke/decidim-module-microsoft): Integração com Azure ActiveDirectory (v2).
17. [Odoo](https://github.com/Platoniq/decidim-module-odoo): Integração com base de usuários Odoo via plataforma Keycloak.
18. [SPID & CIE](https://github.com/dipartimentofunzionepubblica/decidim-module-spid-cie): Integração com sistema de autenticação Italiano.
19. [Suomi.fi](https://github.com/mainio/decidim-module-suomifi): Integração com sistema Suomi.fi
20. **[Verifications Omniauth](https://github.com/belighted/decidim-module-verifications_omniauth): Inclusão de *Decidim::Verification* para sistema do Governo da Bélgica ou outros Identity Providers (IDP).**

Dos módulos listados, apenas os destacados em negrito são de alguma utilidade para o Brasil Participativo. Fora o Keycloak, os demais sistemas de externos de autenticação são corporativos ou proprietários, ou então integram diretamente com bases fixas de usuários, como LDAP e AD ou Azure AD.

Alguns dos módulos avaliados utilizaram uma implementação de workflow customizado para o `Decidim::Verifications` que auxiliou na busca por mais informações a respeito do recurso e também a estudar uma possível implementação de uma verificação específica para usuários estrangeiros.

## Alternativas

As alternativas identificadas então foram duas:

### 1. Instaciação do Keycloak e integração com o Decidim

A integração do Keycloak com o Decidim terá que incluir a configuração da aplicação do Keycloak e a integração dos fluxos de criação de contas de usuários via API. O plugin de autenticação do Keycloak só integra a autenticação de usuários já cadastrados e carece ainda de um fluxo de cadastro de usuários. Veja a [avaliação mais detalhada](keycloak.md) de uma possível implementação de integração.

### 2. Utilização dos recursos do Decidim via Devise

O módulo [Extra User Fields](https://github.com/PopulateTools/decidim-module-extra_user_fields) demonstra a possibilidade de uso dos [modos de registro](https://docs.decidim.org/en/v0.27/customize/users_registration_mode) do Decidim e da configuração de [Autorizações](https://docs.decidim.org/en/v0.27/customize/authorizations). O [desenho detalhado](devise.md) dessa solução apresenta a estratégia de desenvolvimento para o **Brasil Participativo**.

A avaliação mais completa de cada uma das soluções traz apectos mais específicos de cada abordagem e o desenho de uma proposta de solução viável para cada uma delas, considerando o conjunto de requisitos levantados para a autenticação.

