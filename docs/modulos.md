
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


## Módulos de autenticação



