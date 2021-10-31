<h1 align="center">Projeto Vesti</h1>

## Descrição do Projeto
<p align="center">Projeto criado no desafio técnico da Vesti</p>

Informações do projeto
=================

- [x] Lista com scroll 
- [x] Visualização de imagens com tamanho dinâmico na lista de produtos 
- [x] Logo da loja na tela inicial do App
- [x] Pesquisa por texto
- [x] Tela de erro ao pesquisar um produto inexistente
- [x] Menu categoria que simula uma pesquisa por categoria 

Dificuldades do projeto
=================
Utilizei a lib flutter_staggered_grid_view, porém o app crashou ao exibir as imagens com tamanho dinâmico e isso dificultou um pouco, pois tive que gastar bastante tempo procurando uma solução, e após perceber que era um problema na lib, baixei os arquivos no site do pub.dev e modifiquei a linha de codigo que estava gerando o erro e implementei manualmente a lib no projeto, por isso existe uma pasta chamada "package". 

Tentei deixar o design o mais parecido com a imagem, porém como o layout era apenas uma imagem, as fonts e espaçamentos escolhi aleatoriamente, tbm tive que deixar todas as letras em maiúsculo, pois alguns produtos tem o tamanho junto no nome(PP38), e como é um dado vindo da API, preferir fazer isso.

Libs
=================
google_fonts 
json_serializable
flutter_staggered_grid_view
dio
mobx
