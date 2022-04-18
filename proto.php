<?php

include('geral.php');

InsereCabecalho("Prot�tipo");
echo "<BODY bgColor=\"#FFFFFF\" leftMargin=\"0\" topMargin=\"0\" marginheight=\"0\" marginwidth=\"0\">";
echo "<BR>";

InsereTitulo("Montagem");
echo "<BR>";
InsereTexto("A seguir mostramos algumas fotos das etapas de montagem do prot�tipo. Compramos as t�buas e o primeiro problema que tivemos que solucionar foi o de prender o cilindro pneum�tico. Cortamos uma das t�buas fazendo uma guia, que ser� o curso do �mbolo 1, que � o carro do cilindro, conforme mostra as figuras 21 e 22.");
InsereImagem("monpro01.jpg","Primeira fase: base do cilindro");
InsereTextoFigura("Figura 21: Corte da primeira t�bua da base");
InsereImagem("monpro02.jpg","Primeira fase: base do cilindro");
InsereTextoFigura("Figura 22: Corte da segunda t�bua da base");
echo "<BR>";
InsereTexto("Tendo montado a base com o cilindro, partimos para a montagem da segunda base, a base que o quatro barras ir� movimentar, conforme mostra figuras 23 e 24.");
InsereImagem("monpro03.jpg","Segunda fase: montagem da base do quatro barras");
InsereTextoFigura("Figura 23: Marcando os pontos da segunda base");
InsereImagem("monpro04.jpg","Segunda fase: montagem da base do quatro barras");
InsereTextoFigura("Figura 24: In�cio da montagem da segunda base");
echo "<BR>";
InsereTexto("Com a segunda base funcionando, partimos para a montagem da parte problem�tica do prot�tipo - a conex�o do quatro barras com o biela manivela 2. Usamos barras de alum�nio e com elas mesmas fizemos a conex�o, sendo que a manivela do biela manivela 2, � uma madeira que ser� fixada a terceira base, ou seja, seu movimento ser� igual ao da terceira base, o de rotacionar de 0-90�, conforme mostra as figuras 25 e 26.");
InsereImagem("monpro05.jpg","Terceira fase: montagem da base do biela manivela 2");
InsereTextoFigura("Figura 25: Fixando a madeira para a terceira base que � a manivela 3");
InsereImagem("monpro06.jpg","Terceira fase: montagem da base do biela manivela 2");
InsereTextoFigura("Figura 26: Montando a terceira base");
echo "<BR>";
InsereTexto("Finalmente conclu�mos a fase da montagem conforme mostra a figura 27.");
InsereImagem("monpro07.jpg","Prot�tipo montado");
InsereTextoFigura("Figura 27: Prot�tipo montado");
echo "<BR>";
echo "<BR>";
InsereTitulo("Apresenta��o");
echo "<BR>";
InsereTexto("Para testar o prot�tipo, usamos o laborat�rio da hidr�ulica e pneum�tica da faculdade, com bancadas da FESTO. Usamos um regulador de fluxo para controlar a velocidade do cilindro e duas v�lvulas 3x2 vias, com acionamento por bot�o e retorno por mola, conforme mostra a figura 28 e 29.");
InsereImagem("promon01.jpg","Prot�tipo com a parte pneum�tica instalada");
InsereTextoFigura("Figura 28: Prot�tipo com a parte pneum�tica instalada");
InsereImagem("promon02.jpg","Vista do prot�tipo com instala��o pneum�tica");
InsereTextoFigura("Figura 29: Vista do prot�tipo com instala��o pneum�tica");
echo "<BR>";
InsereTexto("Para mostrar os dois movimentos finais do prot�tipo, ou seja, com a segunda base totalmente avan�ada e a terceira base em 0� e com a segunda base totalmente recuada com a terceira base em 90�, per�odos em que a pe�a produzida seria pega no alimentador e colocada no carro ou esteira, coforme figuras 30 e 31.");
InsereImagem("promon03.jpg","Prot�tipo totalmente recuado");
InsereTextoFigura("Figura 30: Prot�tipo totalmente recuado");
InsereImagem("promon04.jpg","Prot�tipo totalmente avan�ado");
InsereTextoFigura("Figura 31: Prot�tipo totalmente avan�ado");
echo "<BR>";
InsereTexto("Por fim, mostramos na figura 32 um gif animado com o movimento do prot�tipo.");
InsereImagem("mec.gif","Movimento do prot�tipo");
InsereTextoFigura("Figura 32: Movimento do prot�tipo");
echo "<BR>";
InsereRodape();
echo "</BODY></HTML>";
?>