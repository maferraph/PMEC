<?php

include('geral.php');

InsereCabecalho("Funcionamento do Mecanismo");
echo "<BODY bgColor=\"#FFFFFF\" leftMargin=\"0\" topMargin=\"0\" marginheight=\"0\" marginwidth=\"0\">";

InsereTexto("Nosso projeto � dividido em tr�s partes: biela manivela 1 que chamaremos de BM1, quatro barras que chamaremos de QB e o biela manivela 2 que chamaremos de BM2.");
InsereTexto("O BM1 � a entrada do sistema, ou seja, ele � quem � acionado para fazer o mecanismo funcionar. No caso, usamos um cilindro pneum�tico de haste passante gentilmente emprestado pela FESTO para realizar esta tarefa. Veja a figura 6 para visualizar melhor esta parte da m�quina:");
InsereImagem("bm1_3d.jpg","Ilustra��o do biela manivela 1");
InsereTextoFigura("Figura 6: Ilustra��o do biela manivela 1");
InsereTexto("Conforme podemos ver na figura 6, a primeira base ou base principal, na cor cinza, chamaremos de BASE1. Na BASE1, fixaremos o cil�ndro pneum�tico, sendo que o corpo dele funcionar� como o �mbolo 1 do BM1 (veja figura 7 para entender os componentes do BM1), em amarelo. Nisso usaremos uma barra que far� o papel da biela 1 do BM1 em vermelho, que junto com uma linha imagin�ria em azul forma a manivela 1, que liga a extremidade do biela 1 ao ponto onde o �mbolo 1 se encontra com as duas barras em 90� em rela��o ao curso.");
InsereImagem("bm1_esq.jpg","Esquema do biela manivela 1");
InsereTextoFigura("Figura 7: Esquema do biela manivela 1");
InsereTexto("Repare ent�o que o �mbolo 1 est� no mesmo plano que o ponto O1, seu curso que chamaremos de CUR foi feita na BASE1 e que a biela 1 e manivela 1 t�m o mesmo comprimento que chamaremos de CB1 (veja figura 8). Para c�lculos, usamos como entrada de dados a velocidade (Xd1) e acelera��o (Xdd1) do �mbolo 1 fornecidos pelo cil�ndro pneum�tico, o comprimento do curso (CUR) e o comprimento da biela (CB1). Dependendo da posi��o que o �mbolo 1 se encontra no curso, posi��o que chamaremos de X, podemos calcular o �ngulo das barras q1 = A1 e a posi��o do ponto D em rela��o ao ponto O1, as posi��es Di e Dj.");
InsereImagem("bm1_var.jpg","Vari�veis do biela manivela 1");
InsereTextoFigura("Figura 8: Vari�veis do biela manivela 1");
InsereTexto("O segundo mecanismos usado � o quatro barras QB conforme mostra figura 9. Ele sustenta a segunda base, a BASE2, onde no seu centro � preso o ponto D do biela 1.");
InsereImagem("qb_3d.jpg","Ilustra��o do quatro barras");
InsereTextoFigura("Figura 9: Ilustra��o do quatro barras");
InsereTexto("As quatro barras em lilas, ter�o o mesmo comprimento que o da biela 1, ou seja, comprimento CB1. Com isso, a BASE2 em azul, ter� um movimento de tr�s para frente e vice-versa, sempre com o plano horizontal constante, ou seja, n�o apresentar� inclina��o. Este mecanismo ser� o respons�vel de levar a pe�a � ser montada do alimentador at� o carro.");
InsereImagem("qb_esq.jpg","Esquema do quatro barras");
InsereTextoFigura("Figura 10: Esquema do quatro barras");
InsereTexto("Como entrada de dados, temos o comprimento das barras CB1, a dist�ncia do ponto D ao H que ser� explicada adiante, e a dist�ncia entre as quatro barras C2. Repare que o �ngulo q2 do QB � igual ao �ngulo q1 do BM1 pois as barras t�m o mesmo comprimento e est�o presas no mesmo plano. A diferen�a � que enquanto o �mbolo 1 do BM1 estiver no in�cio do curso, ou seja, a posi��o em rela��o ao ponto O1 que � X = - CUR / 2, a biela 1 estar� inclinada ao contr�rio das quatro barras, ou seja, elas trabalham em sentidos invertidos.");
InsereTexto("Para efeito de c�lculos ent�o, o QB ter� os mesmo valores calculados em BM1 como a velocidade angular qd1 = qd2, que � a entrada de dados do QB e ser� a entrada de dados da conex�o entre o QB e BM2.");
InsereImagem("qb_var.jpg","Vari�veis do quatro barras");
InsereTextoFigura("Figura 11: Vari�veis do quatro barras");
InsereTexto("Antes de mostrarmos o terceiro mecanismo, o biela manivela 2 - BM2, precisamos falar sobre o que chamamos nos c�lculos e simula��es de \"Conex�o QB com BM2\". Nesta conex�o nos mudamos o plano de trabalho dos mecanismos; ao calcular o �ngulo q2 do QB, que � o mesmo �ngulo aplicado ao ponto H em rela��o � BASE2. Em uma das quatro barras do QB, o comprimento da barra � maior que as outras, e isso porque em nosso projeto queremos que s� exista uma fonte de energia para movimentar todo o sistema, e para isso fizemos com que esta barra maior tenha uma guia do qual ser� o curso em rela��o ao mesmo plano do BM1 e QB do ponto H. Veja a figura 12 que ilustra a mudan�a de plano dos mecanismos.");
InsereImagem("bm2_3d.jpg","Ilustra��o do biela manivela 2");
InsereTextoFigura("Figura 12: Ilustra��o do biela manivela 2");
InsereTexto("Outra medida que determinamos � o comprimento da biela 2 CB2, pois como queremos que o mecanismos tenha uma rota��o de 90�, esta medida � igual a dist�ncia entre a barra maior do QB at� o centro do rolamento usado na manivela 2, e temos o comprimento da manivela 2 que � a medida DF, conforme mostra a figura 13.");
InsereImagem("bm2_var.jpg","Vari�veis do biela manivela 2");
InsereTextoFigura("Figura 13: Vari�veis do biela manivela 2");
InsereTexto("Ainda falando da barra maior do QB, a guia come�a na dist�ncia DH em rela��o ao ponto D, e ao movimentarmos o QB o ponto H que faz o papel de �mbolo 2 do BM2, ele percorre a guia conforme a posi��o do �ngulo q2, por�m em rela��o ao segundo plano, que � o plano onde est� o BM2, ele est� fixado para n�o aumentar a altura entre a BASE2 e BASE3, sendo que a BASE3 � a base que ser� usado para fazer a rota��o. Por isso que � necess�ria a guia na barra do QB, pois queremos que o movimento do �ngulo q2 do QB se transforme em um curso ou posi��o do �mbolo 2 do BM2 em X, ou seja, que o �mbolo 2 tenha o mesmo sentido e dire��o do �mbolo 1 do BM1.");
InsereTexto("Com um segundo �mbolo ent�o, podemos montar o segundo biela manivela - BM2. Quando o QB estiver na posi��o m�xima na frente, o �ngulo q do BM2 deve ser 0� e o A4 deve ser 90�, e a posi��o do �mbolo 2 ser� em rela��o ao ponto G que � o centro do rolamento. Devemos ent�o simular os valores DH, CB2 e DF, al�m do comprimento da guia, para fazer com que quando o QB estiver na outra extremidade no m�ximo, ou seja, na volta, o �ngulo q do BM2 seja igual � -90� ou 270�, pois a BASE3 ser� fixada na manivela 2.");
InsereTexto("Feito isso teremos nosso projeto com o acionamento do BM1, movimentando o QB para ir do alimentador ao carro, e com o BM2 fazendo com que a plataforma gire 90� para pegar a pe�a no alimentador e colocar na frente no carro, conforme figura 14.");
InsereImagem("mec_3d.jpg","Nosso projeto");
InsereTextoFigura("Figura 14: Ilustra��o do nosso projeto");
echo "<BR><BR>\n";
InsereRodape();
echo "</BODY></HTML>";
?>