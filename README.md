# Teste de Funcionalidades do Bugbank

Este projeto tem como objetivo testar as funcionalidades do software Bugbank, que simula operações bancárias reais.

## Funcionalidades Testadas

- **Registro:** Testes para verificar se o processo de registro de novas contas está funcionando corretamente.

- **Login:** Testes para assegurar que os usuários conseguem acessar suas contas com credenciais válidas.

- **Transferência com Sucesso:** Testes para confirmar que as transferências entre contas são realizadas com sucesso quando todas as condições são atendidas.

- **Transferência sem Sucesso:** Testes para verificar a resposta do sistema quando as condições para uma transferência não são atendidas.

## Singularidades

- Para que a transferência fosse feita com sucesso, era necessário ter duas contas válidas. Para isso, foi necessário, na mesma guia do navegador, criar duas contas e utilizar os dados bancários de uma delas para efetivar a transferência, tudo automaticamente.

## Resolução

- Foi criado um set up específico para as operações que necessitassem de duas contas, garantindo a abertura de duas guias, consequentemente obtendo os números de contas válidas.

## Vantagens

- Todas estas funcionalidades foram testadas em menos de 1 minuto, proporcionando rapidez, efetividade e maior produtividade no teste de software.

