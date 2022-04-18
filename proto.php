<?php

include('geral.php');

InsereCabecalho("Protótipo");
echo "<BODY bgColor=\"#FFFFFF\" leftMargin=\"0\" topMargin=\"0\" marginheight=\"0\" marginwidth=\"0\">";
echo "<BR>";

InsereTitulo("Montagem");
echo "<BR>";
InsereTexto("A seguir mostramos algumas fotos das etapas de montagem do protótipo. Compramos as tábuas e o primeiro problema que tivemos que solucionar foi o de prender o cilindro pneumático. Cortamos uma das tábuas fazendo uma guia, que será o curso do êmbolo 1, que é o carro do cilindro, conforme mostra as figuras 21 e 22.");
InsereImagem("monpro01.jpg","Primeira fase: base do cilindro");
InsereTextoFigura("Figura 21: Corte da primeira tábua da base");
InsereImagem("monpro02.jpg","Primeira fase: base do cilindro");
InsereTextoFigura("Figura 22: Corte da segunda tábua da base");
echo "<BR>";
InsereTexto("Tendo montado a base com o cilindro, partimos para a montagem da segunda base, a base que o quatro barras irá movimentar, conforme mostra figuras 23 e 24.");
InsereImagem("monpro03.jpg","Segunda fase: montagem da base do quatro barras");
InsereTextoFigura("Figura 23: Marcando os pontos da segunda base");
InsereImagem("monpro04.jpg","Segunda fase: montagem da base do quatro barras");
InsereTextoFigura("Figura 24: Início da montagem da segunda base");
echo "<BR>";
InsereTexto("Com a segunda base funcionando, partimos para a montagem da parte problemática do protótipo - a conexão do quatro barras com o biela manivela 2. Usamos barras de alumínio e com elas mesmas fizemos a conexão, sendo que a manivela do biela manivela 2, é uma madeira que será fixada a terceira base, ou seja, seu movimento será igual ao da terceira base, o de rotacionar de 0-90º, conforme mostra as figuras 25 e 26.");
InsereImagem("monpro05.jpg","Terceira fase: montagem da base do biela manivela 2");
InsereTextoFigura("Figura 25: Fixando a madeira para a terceira base que é a manivela 3");
InsereImagem("monpro06.jpg","Terceira fase: montagem da base do biela manivela 2");
InsereTextoFigura("Figura 26: Montando a terceira base");
echo "<BR>";
InsereTexto("Finalmente concluímos a fase da montagem conforme mostra a figura 27.");
InsereImagem("monpro07.jpg","Protótipo montado");
InsereTextoFigura("Figura 27: Protótipo montado");
echo "<BR>";
echo "<BR>";
InsereTitulo("Apresentação");
echo "<BR>";
InsereTexto("Para testar o protótipo, usamos o laboratório da hidráulica e pneumática da faculdade, com bancadas da FESTO. Usamos um regulador de fluxo para controlar a velocidade do cilindro e duas válvulas 3x2 vias, com acionamento por botão e retorno por mola, conforme mostra a figura 28 e 29.");
InsereImagem("promon01.jpg","Protótipo com a parte pneumática instalada");
InsereTextoFigura("Figura 28: Protótipo com a parte pneumática instalada");
InsereImagem("promon02.jpg","Vista do protótipo com instalação pneumática");
InsereTextoFigura("Figura 29: Vista do protótipo com instalação pneumática");
echo "<BR>";
InsereTexto("Para mostrar os dois movimentos finais do protótipo, ou seja, com a segunda base totalmente avançada e a terceira base em 0º e com a segunda base totalmente recuada com a terceira base em 90º, períodos em que a peça produzida seria pega no alimentador e colocada no carro ou esteira, coforme figuras 30 e 31.");
InsereImagem("promon03.jpg","Protótipo totalmente recuado");
InsereTextoFigura("Figura 30: Protótipo totalmente recuado");
InsereImagem("promon04.jpg","Protótipo totalmente avançado");
InsereTextoFigura("Figura 31: Protótipo totalmente avançado");
echo "<BR>";
InsereTexto("Por fim, mostramos na figura 32 um gif animado com o movimento do protótipo.");
InsereImagem("mec.gif","Movimento do protótipo");
InsereTextoFigura("Figura 32: Movimento do protótipo");
echo "<BR>";
InsereRodape();
echo "</BODY></HTML>";
?>