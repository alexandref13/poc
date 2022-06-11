# 0.0.1

## FIRST_RELEASE: Reselase inicial do projeto

    > Arquitetura com modular
    > Roteamento básico
    > TOOLS:
        - SCRIPT: pub_get.sh
          * BAIXAR todas as dependencias do projeto
            > sh tools/scripts/pub_get.sh
        - SCRIPT: run.sh
          * EXECUTAR o projeto
            > sh tools/scripts/run.sh
        - SCRIPT: fix_build.sh
          * EXECUTAR a correção do build para IOS e MAcOS
            > sh tools/scripts/fix_build.sh
        - SCRIPT: git_delete_branchs.sh
          * EXECUTAR a remoção de branchs antigas do projeto
            > sh tools/scripts/git_delete_branchs.sh
    > FEATURE: onboarding
        - Tela splash
          * Carregamento dos dados de configuração do usuário
          * Navegar para a tela home ou aceite de termos de uso
        - Tela Termos de uso
          * Exibe para o usuário os termos de uso
          * Permite o usuário aceitar os termos de uso ou negar
          * Navegar para a tela home
        - Tela Home
          * Exibe a tela básica do aplicativo com as opções disponíveis
