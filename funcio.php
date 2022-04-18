<?php

include('geral.php');

InsereCabecalho("Funcionamento do Mecanismo");
echo "<BODY bgColor=\"#FFFFFF\" leftMargin=\"0\" topMargin=\"0\" marginheight=\"0\" marginwidth=\"0\">";

InsereTexto("Nosso projeto é dividido em três partes: biela manivela 1 que chamaremos de BM1, quatro barras que chamaremos de QB e o biela manivela 2 que chamaremos de BM2.");
InsereTexto("O BM1 é a entrada do sistema, ou seja, ele é quem é acionado para fazer o mecanismo funcionar. No caso, usamos um cilindro pneumático de haste passante gentilmente emprestado pela FESTO para realizar esta tarefa. Veja a figura 6 para visualizar melhor esta parte da máquina:");
InsereImagem("bm1_3d.jpg","Ilustração do biela manivela 1");
InsereTextoFigura("Figura 6: Ilustração do biela manivela 1");
InsereTexto("Conforme podemos ver na figura 6, a primeira base ou base principal, na cor cinza, chamaremos de BASE1. Na BASE1, fixaremos o cilíndro pneumático, sendo que o corpo dele funcionará como o êmbolo 1 do BM1 (veja figura 7 para entender os componentes do BM1), em amarelo. Nisso usaremos uma barra que fará o papel da biela 1 do BM1 em vermelho, que junto com uma linha imaginária em azul forma a manivela 1, que liga a extremidade do biela 1 ao ponto onde o êmbolo 1 se encontra com as duas barras em 90º em relação ao curso.");
InsereImagem("bm1_esq.jpg","Esquema do biela manivela 1");
InsereTextoFigura("Figura 7: Esquema do biela manivela 1");
InsereTexto("Repare então que o êmbolo 1 está no mesmo plano que o ponto O1, seu curso que chamaremos de CUR foi feita na BASE1 e que a biela 1 e manivela 1 têm o mesmo comprimento que chamaremos de CB1 (veja figura 8). Para cálculos, usamos como entrada de dados a velocidade (Xd1) e aceleração (Xdd1) do êmbolo 1 fornecidos pelo cilíndro pneumático, o comprimento do curso (CUR) e o comprimento da biela (CB1). Dependendo da posição que o êmbolo 1 se encontra no curso, posição que chamaremos de X, podemos calcular o ângulo das barras q1 = A1 e a posição do ponto D em relação ao ponto O1, as posições Di e Dj.");
InsereImagem("bm1_var.jpg","Variáveis do biela manivela 1");
InsereTextoFigura("Figura 8: Variáveis do biela manivela 1");
InsereTexto("O segundo mecanismos usado é o quatro barras QB conforme mostra figura 9. Ele sustenta a segunda base, a BASE2, onde no seu centro é preso o ponto D do biela 1.");
InsereImagem("qb_3d.jpg","Ilustração do quatro barras");
InsereTextoFigura("Figura 9: Ilustração do quatro barras");
InsereTexto("As quatro barras em lilas, terão o mesmo comprimento que o da biela 1, ou seja, comprimento CB1. Com isso, a BASE2 em azul, terá um movimento de trás para frente e vice-versa, sempre com o plano horizontal constante, ou seja, não apresentará inclinação. Este mecanismo será o responsável de levar a peça à ser montada do alimentador até o carro.");
InsereImagem("qb_esq.jpg","Esquema do quatro barras");
InsereTextoFigura("Figura 10: Esquema do quatro barras");
InsereTexto("Como entrada de dados, temos o comprimento das barras CB1, a distância do ponto D ao H que será explicada adiante, e a distância entre as quatro barras C2. Repare que o ângulo q2 do QB é igual ao ângulo q1 do BM1 pois as barras têm o mesmo comprimento e estão presas no mesmo plano. A diferença é que enquanto o êmbolo 1 do BM1 estiver no início do curso, ou seja, a posição em relação ao ponto O1 que é X = - CUR / 2, a biela 1 estará inclinada ao contrário das quatro barras, ou seja, elas trabalham em sentidos invertidos.");
InsereTexto("Para efeito de cálculos então, o QB terá os mesmo valores calculados em BM1 como a velocidade angular qd1 = qd2, que é a entrada de dados do QB e será a entrada de dados da conexão entre o QB e BM2.");
InsereImagem("qb_var.jpg","Variáveis do quatro barras");
InsereTextoFigura("Figura 11: Variáveis do quatro barras");
InsereTexto("Antes de mostrarmos o terceiro mecanismo, o biela manivela 2 - BM2, precisamos falar sobre o que chamamos nos cálculos e simulações de \"Conexão QB com BM2\". Nesta conexão nos mudamos o plano de trabalho dos mecanismos; ao calcular o ângulo q2 do QB, que é o mesmo ângulo aplicado ao ponto H em relação à BASE2. Em uma das quatro barras do QB, o comprimento da barra é maior que as outras, e isso porque em nosso projeto queremos que só exista uma fonte de energia para movimentar todo o sistema, e para isso fizemos com que esta barra maior tenha uma guia do qual será o curso em relação ao mesmo plano do BM1 e QB do ponto H. Veja a figura 12 que ilustra a mudança de plano dos mecanismos.");
InsereImagem("bm2_3d.jpg","Ilustração do biela manivela 2");
InsereTextoFigura("Figura 12: Ilustração do biela manivela 2");
InsereTexto("Outra medida que determinamos é o comprimento da biela 2 CB2, pois como queremos que o mecanismos tenha uma rotação de 90º, esta medida é igual a distância entre a barra maior do QB até o centro do rolamento usado na manivela 2, e temos o comprimento da manivela 2 que é a medida DF, conforme mostra a figura 13.");
InsereImagem("bm2_var.jpg","Variáveis do biela manivela 2");
InsereTextoFigura("Figura 13: Variáveis do biela manivela 2");
InsereTexto("Ainda falando da barra maior do QB, a guia começa na distância DH em relação ao ponto D, e ao movimentarmos o QB o ponto H que faz o papel de êmbolo 2 do BM2, ele percorre a guia conforme a posição do ângulo q2, porém em relação ao segundo plano, que é o plano onde está o BM2, ele está fixado para não aumentar a altura entre a BASE2 e BASE3, sendo que a BASE3 é a base que será usado para fazer a rotação. Por isso que é necessária a guia na barra do QB, pois queremos que o movimento do ângulo q2 do QB se transforme em um curso ou posição do êmbolo 2 do BM2 em X, ou seja, que o êmbolo 2 tenha o mesmo sentido e direção do êmbolo 1 do BM1.");
InsereTexto("Com um segundo êmbolo então, podemos montar o segundo biela manivela - BM2. Quando o QB estiver na posição máxima na frente, o ângulo q do BM2 deve ser 0º e o A4 deve ser 90º, e a posição do êmbolo 2 será em relação ao ponto G que é o centro do rolamento. Devemos então simular os valores DH, CB2 e DF, além do comprimento da guia, para fazer com que quando o QB estiver na outra extremidade no máximo, ou seja, na volta, o ângulo q do BM2 seja igual à -90º ou 270º, pois a BASE3 será fixada na manivela 2.");
InsereTexto("Feito isso teremos nosso projeto com o acionamento do BM1, movimentando o QB para ir do alimentador ao carro, e com o BM2 fazendo com que a plataforma gire 90º para pegar a peça no alimentador e colocar na frente no carro, conforme figura 14.");
InsereImagem("mec_3d.jpg","Nosso projeto");
InsereTextoFigura("Figura 14: Ilustração do nosso projeto");
echo "<BR><BR>\n";
InsereRodape();
echo "</BODY></HTML>";
?>