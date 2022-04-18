<?php
include('geral.php');
InsereCabecalho("Cálculo das Tabelas Cinemáticas");

//VERIFICA SE JA FOI COLOCADO O FORM POR POST
if ( (!$TXT_Curso ) && (!$TXT_Interacoes) && (!$TXT_XdBM1) && (!$TXT_XddBM1) && (!$TXT_CompBiela1) && (!$TXT_C2) && (!$TXT_DH) && (!$TXT_CB2) && (!$TXT_DF) )
{
   echo "<BR>";
   InsereTexto("Antes de realizar a simulação dos cálculos, você deve ler a página sobre o funcionamento para poder entender melhor as variáveis aqui utilizadas dos mecanismos.");
   InsereTexto("Mostramos como foi calculado cada mecanismo, e montamos uma tabela onde mostra a sequência dos cálculos que serão simulados.");
   echo "<BR><BR>\n";
   $celinicen = "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"CON\">";
   $celinilef = "<TD ALIGN=\"LEFT\" VALIGN=\"MIDDLE\"><FONT CLASS=\"CON\">";
   $celfim = "</FONT></TD>\n";
   //EXPLICACAO DAS VARIAVEIS DO BM1
   InsereTitulo("Biela Manivela 1");
   InsereTexto("Os cálculos do BM1 são feitos em relação a posição do êmbolo 1, que é a variável X, sendo que para esquerda do ponto O1 é o -X e para a diretira o +X.");
   InsereTexto("A entrada de dados do BM1 são as variáveis:");
   InsereLista("X:" , "posição do êmbolo 1, sendo X = CUR / 2, vai de -X para +X");
   InsereLista("CB1:" , "comprimento das barras do BM1 e QB");
   InsereLista("CUR:" , "curso do êmbolo 1 do BM1");
   InsereLista("Xd1:" , "velocidade do êmbolo 1 do BM1");
   InsereLista("Xdd1:" , "aceleração do êmbolo 1 do BM1");
   InsereLista("INT:" , "número de interações, de linhas de cálculo");
   InsereImagem("bm1_var.jpg","Variáveis do Biela Manivela 1");
   InsereTextoFigura("Figura 15: Variáveis do biela manivela 1");
   echo "<BR>";
   echo "<TABLE CELLPADDING=\"0\" CELLSPACING=\"0\" WIDTH=\"100%\" BORDER=\"1\" VALIGN=\"TOP\">\n";
   echo "<TR VALIGN=\"MIDDLE\">\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Variável</FONT></TD>\n";
   echo "<TD ALIGN=\"LEFT\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Descrição</FONT></TD>\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Unidade</FONT></TD>\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Fórmula</FONT></TD>\n";
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Qr1" , $celfim ;
   echo $celinilef , "Ângulo Q1" , $celfim ;
   echo $celinicen , "rad" , $celfim ;
   echo $celinicen , "Qr1 = ACos(X / (2 * CB1))" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Ar1" , $celfim ;
   echo $celinilef , "Ângulo A1" , $celfim ;
   echo $celinicen , "rad" , $celfim ;
   echo $celinicen , "Ar1 = Qr1" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "KA1" , $celfim ;
   echo $celinilef , "Coeficiente de velocidade de A1" , $celfim ;
   echo $celinicen , "-" , $celfim ;
   echo $celinicen , "KA1 = (CB1 * Cos(Qr1)) / (CB1 * Cos(Ar1))" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "LA1" , $celfim ;
   echo $celinilef , "Coeficiente de aceleração de A1" , $celfim ;
   echo $celinicen , "-" , $celfim ;
   echo $celinicen , "LA1 = (-((CB1 * Sen(Qr1)) / (CB1 * Cos(Ar1))) + (KA1^2 * Tan(Ar1)))" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "KX1" , $celfim ;
   echo $celinilef , "Coeficiente de velocidade de X" , $celfim ;
   echo $celinicen , "-" , $celfim ;
   echo $celinicen , "KX1 = -(X * Tan(Ar1))" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "LX1" , $celfim ;
   echo $celinilef , "Coeficiente de aceleração de X" , $celfim ;
   echo $celinicen , "-" , $celfim ;
   echo $celinicen , "LX1 = (-(CB1 * Cos(Qr1)) - (KA1^2 * Cos(Ar1) * CB1) - (LA1 * CB1 * Sen(Ar1)))" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Qg1" , $celfim ;
   echo $celinilef , "Ângulo Q1" , $celfim ;
   echo $celinicen , "graus" , $celfim ;
   echo $celinicen , "Qg1 = Rad2Deg(Qr1)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Qd1" , $celfim ;
   echo $celinilef , "Velocidade angular de Q1" , $celfim ;
   echo $celinicen , "rad/s" , $celfim ;
   echo $celinicen , "Qd1 = Xd1 / KX1" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Qdd1" , $celfim ;
   echo $celinilef , "Aceleração angular de Q1" , $celfim ;
   echo $celinicen , "rad/s^2" , $celfim ;
   echo $celinicen , "Qdd1 = ((Xdd1 - (LX1 * Qd1^2)) / KX1)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Ag1" , $celfim ;
   echo $celinilef , "Ângulo A1" , $celfim ;
   echo $celinicen , "graus" , $celfim ;
   echo $celinicen , "Ag1 = Rad2Deg(Ar1)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Ad1" , $celfim ;
   echo $celinilef , "Velocidade angular de A1" , $celfim ;
   echo $celinicen , "rad/s" , $celfim ;
   echo $celinicen , "Ad1 = KA1 * Qd1" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Add1" , $celfim ;
   echo $celinilef , "Aceleração angular de A1" , $celfim ;
   echo $celinicen , "rad/s^2" , $celfim ;
   echo $celinicen , "Add1 = (KA1 * Qdd1) + (LA1 * Qd1^2)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Di" , $celfim ;
   echo $celinilef , "Posição do ponto D em i" , $celfim ;
   echo $celinicen , "mm" , $celfim ;
   echo $celinicen , "Di = CB1 * Cos(Qr1)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Dj" , $celfim ;
   echo $celinilef , "Posição do ponto D em j" , $celfim ;
   echo $celinicen , "mm" , $celfim ;
   echo $celinicen , "Dj = CB1 * Sen(Qr1)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Did" , $celfim ;
   echo $celinilef , "Velocidade do ponto D em i" , $celfim ;
   echo $celinicen , "mm/s" , $celfim ;
   echo $celinicen , "Did = CB1 * (-(Sen(Qr1))) * Qd1" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Djd" , $celfim ;
   echo $celinilef , "Velocidade do ponto D em j" , $celfim ;
   echo $celinicen , "mm/s" , $celfim ;
   echo $celinicen , "Djd = CB1 * Cos(Qr1) * Qd1" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Didd" , $celfim ;
   echo $celinilef , "Aceleração do ponto D em i" , $celfim ;
   echo $celinicen , "mm/s^2" , $celfim ;
   echo $celinicen , "Didd = CB1 * (-(Cos(Qr1))) * Qd1^2 + CB1 * (-(Sen(Qr1))) * Qdd1" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Djdd" , $celfim ;
   echo $celinilef , "Aceleração do ponto D em j" , $celfim ;
   echo $celinicen , "mm/s^2" , $celfim ;
   echo $celinicen , "Djdd = CB1 * (-(Sen(Qr1))) * Qd1^2 + CB1 * Cos(Qr1) * Qdd1" , $celfim ;
   echo "</TR></TABLE>\n";
   echo "<BR><BR>\n";
   //EXPLICACAO DAS VARIAVEIS DO QB
   InsereTitulo("Quatro Barras");
   InsereTexto("A entrada de dados do QB são as variáveis:");
   InsereLista("C2:" , "distância entre as barras");
   InsereLista("DH:" , "distância do ponto D ao H (início da guia)");
   InsereImagem("qb_var.jpg","Variáveis do quatro barras");
   InsereTextoFigura("Figura 16: Variáveis do quatro barras");
   echo "<BR>";
   echo "<TABLE CELLPADDING=\"0\" CELLSPACING=\"0\" WIDTH=\"100%\" BORDER=\"1\" VALIGN=\"TOP\">\n";
   echo "<TR VALIGN=\"MIDDLE\">\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Variável</FONT></TD>\n";
   echo "<TD ALIGN=\"LEFT\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Descrição</FONT></TD>\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Unidade</FONT></TD>\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Fórmula</FONT></TD>\n";
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Qr2" , $celfim ;
   echo $celinilef , "Ângulo Q2" , $celfim ;
   echo $celinicen , "rad" , $celfim ;
   echo $celinicen , "Qr2 = Qr1" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Qg2" , $celfim ;
   echo $celinilef , "Ângulo Q2" , $celfim ;
   echo $celinicen , "graus" , $celfim ;
   echo $celinicen , "Qg2 = Rad2Deg(Qr2)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Qd2" , $celfim ;
   echo $celinilef , "Velocidade angular de Q2" , $celfim ;
   echo $celinicen , "rad/s" , $celfim ;
   echo $celinicen , "Qd2 = Qd1" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Qdd2" , $celfim ;
   echo $celinilef , "Aceleração angular de Q2" , $celfim ;
   echo $celinicen , "rad/s^2" , $celfim ;
   echo $celinicen , "Qdd2 = Qdd1" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "L" , $celfim ;
   echo $celinilef , "Distância diagonal entre barras" , $celfim ;
   echo $celinicen , "mm" , $celfim ;
   echo $celinicen , "L = Sqr((CB1^2) + (C2^2) - (2 * CB1 * C2 * Cos(Qr2)))" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Alfa" , $celfim ;
   echo $celinilef , "Ângulo Alfa" , $celfim ;
   echo $celinicen , "rad" , $celfim ;
   echo $celinicen , "Alfar = ASen((CB1 * Sen(Qr2)) / L)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Alfa" , $celfim ;
   echo $celinilef , "Ângulo Alfa" , $celfim ;
   echo $celinicen , "graus" , $celfim ;
   echo $celinicen , "Alfag = Rad2Deg(Alfar)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Beta" , $celfim ;
   echo $celinilef , "Ângulo Beta" , $celfim ;
   echo $celinicen , "rad" , $celfim ;
   echo $celinicen , "Betar = Pi - Qr2 - Alfar" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Beta" , $celfim ;
   echo $celinilef , "Ângulo Beta" , $celfim ;
   echo $celinicen , "graus" , $celfim ;
   echo $celinicen , "Betag = Rad2Deg(Betar)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "A3" , $celfim ;
   echo $celinilef , "Ângulo A3" , $celfim ;
   echo $celinicen , "graus" , $celfim ;
   echo $celinicen , "A3g = 360 - (Rad2Deg(Alfar) + Rad2Deg(Betar))" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "A3" , $celfim ;
   echo $celinilef , "Ângulo A3" , $celfim ;
   echo $celinicen , "rad" , $celfim ;
   echo $celinicen , "A3r = Deg2Rad(A3g)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "KA3" , $celfim ;
   echo $celinilef , "Coeficiente de velocidade de A3" , $celfim ;
   echo $celinicen , "-" , $celfim ;
   echo $celinicen , "KA3 = -(CB1 * Sen(-Qr2)) / (CB1 * Sen(A3r))" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "A3d" , $celfim ;
   echo $celinilef , "Velocidade angular de A3" , $celfim ;
   echo $celinicen , "rad/s" , $celfim ;
   echo $celinicen , "A3d = KA3 * Qd2" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "LA3" , $celfim ;
   echo $celinilef , "Coeficiente de aceleração de A3" , $celfim ;
   echo $celinicen , "-" , $celfim ;
   echo $celinicen , "LA3 = (CB1 * Cos(-Qr2)) / (CB1 * Sen(-A3r))" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "A3dd" , $celfim ;
   echo $celinilef , "Aceleração angular de A3" , $celfim ;
   echo $celinicen , "rad/s^2" , $celfim ;
   echo $celinicen , "A3dd = (Qdd2 * KA3) + (Qd2 * Qd2 * LA3)" , $celfim ;
   echo "</TR></TABLE>\n";
   echo "<BR><BR>\n";
   //EXPLICACAO DAS VARIAVEIS DO CONEXAO QB COM BM2
   InsereTitulo("Conexão Quatro Barras com Biela Manivela 2");
   InsereTexto("As variáveis para entrada de dados da conexão são extraídas dos cálculos do QB.");
   echo "<BR>";
   echo "<TABLE CELLPADDING=\"0\" CELLSPACING=\"0\" WIDTH=\"100%\" BORDER=\"1\" VALIGN=\"TOP\">\n";
   echo "<TR VALIGN=\"MIDDLE\">\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Variável</FONT></TD>\n";
   echo "<TD ALIGN=\"LEFT\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Descrição</FONT></TD>\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Unidade</FONT></TD>\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Fórmula</FONT></TD>\n";
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "H" , $celfim ;
   echo $celinilef , "Altura do ponto H em relação à BASE2" , $celfim ;
   echo $celinicen , "mm" , $celfim ;
   echo $celinicen , "H = DH / Sen(Qr2)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Hi" , $celfim ;
   echo $celinilef , "Posição em i do ponto H em relação ao ponto D" , $celfim ;
   echo $celinicen , "mm" , $celfim ;
   echo $celinicen , "Hi = H * Cos(Qr2)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Hj" , $celfim ;
   echo $celinilef , "Posição em j do ponto H em relação ao ponto D" , $celfim ;
   echo $celinicen , "mm" , $celfim ;
   echo $celinicen , "Hj = H * Sen(Qr2)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Hd" , $celfim ;
   echo $celinilef , "Velocidade na guia do ponto H" , $celfim ;
   echo $celinicen , "mm/s" , $celfim ;
   echo $celinicen , "Hd = H * Qd1 * Sen(Qr2)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Hdd" , $celfim ;
   echo $celinilef , "Aceleração na guia do ponto H" , $celfim ;
   echo $celinicen , "mm/s^2" , $celfim ;
   echo $celinicen , "Hdd = (DH * Cos(Qr2) * Qd2^2 * Qdd2 * 2) / (Sen(Qr2)^3)" , $celfim ;
   echo "</TR></TABLE>\n";
   echo "<BR><BR>\n";
   //EXPLICACAO DAS VARIAVEIS DO BM2
   InsereTitulo("Biela Manivela 2");
   InsereTexto("A entrada de dados do BM2 são as variáveis:");
   InsereLista("CB2:" , "comprimento da biela 2 e distância entre ponto H ao centro do rolamento (ponto G)");
   InsereLista("DF:" , "comprimento da manivela 2 e distância inicial entre biela 2 e o centro do rolamento (ponto G)");
   InsereImagem("bm2_var.jpg","Variáveis do Biela Manivela 2");
   InsereTextoFigura("Figura 17: Variáveis do biela manivela 2");
   echo "<BR>";
   echo "<TABLE CELLPADDING=\"0\" CELLSPACING=\"0\" WIDTH=\"100%\" BORDER=\"1\" VALIGN=\"TOP\">\n";
   echo "<TR VALIGN=\"MIDDLE\">\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Variável</FONT></TD>\n";
   echo "<TD ALIGN=\"LEFT\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Descrição</FONT></TD>\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Unidade</FONT></TD>\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Fórmula</FONT></TD>\n";
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "W" , $celfim ;
   echo $celinilef , "Posição do êmbolo 2 no curso da guia 2" , $celfim ;
   echo $celinicen , "mm" , $celfim ;
   echo $celinicen , "W = X(n - 1) + ( Hi(n - 1) - Hi )" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Wd" , $celfim ;
   echo $celinilef , "Velocidade do êmbolo 2" , $celfim ;
   echo $celinicen , "mm/s" , $celfim ;
   echo $celinicen , "Wd = -(H * Sen(Qr2) * Qd2)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Wdd" , $celfim ;
   echo $celinilef , "Aceleração do êmbolo 2" , $celfim ;
   echo $celinicen , "mm/s^2" , $celfim ;
   echo $celinicen , "Wdd = -(H * Cos(Qr2) * Qd2^2) - (H * Sen(Qr2) * Qdd2)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Ror" , $celfim ;
   echo $celinilef , "Ângulo Ro" , $celfim ;
   echo $celinicen , "rad" , $celfim ;
   echo $celinicen , "Ror = ATan(CB2 / W)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "GE" , $celfim ;
   echo $celinilef , "Distância entre êmbolo 2 e o centro do rolamento (ponto G)" , $celfim ;
   echo $celinicen , "mm" , $celfim ;
   echo $celinicen , "GE = CB2 / Sen(Ror)" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Gamar" , $celfim ;
   echo $celinilef , "Ângulo Gama" , $celfim ;
   echo $celinicen , "rad" , $celfim ;
   echo $celinicen , "Gamar = ACos(((DF^2 - GE^2 - CB2^2) / (-2 * GE * CB2)))" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "A4r" , $celfim ;
   echo $celinilef , "Ângulo A4" , $celfim ;
   echo $celinicen , "rad" , $celfim ;
   echo $celinicen , "A4r = Gamar + Ror" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Q4r" , $celfim ;
   echo $celinilef , "Ângulo Q4" , $celfim ;
   echo $celinicen , "rad" , $celfim ;
   echo $celinicen , "Q4r = -ACos( (W - CB2 * Cos(A4r)) / DF )" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "KW" , $celfim ;
   echo $celinilef , "Coeficiente de velocidade de W" , $celfim ;
   echo $celinicen , "-" , $celfim ;
   echo $celinicen , "KW = (DF * Cos(Q4r)) / (CB2 * Cos(A4r))" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Q4d" , $celfim ;
   echo $celinilef , "Velocidade angular de Q4" , $celfim ;
   echo $celinicen , "rad/s" , $celfim ;
   echo $celinicen , "Q4d = Wd / KW" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "A4d" , $celfim ;
   echo $celinilef , "Velocidade angular de A4" , $celfim ;
   echo $celinicen , "rad/s" , $celfim ;
   echo $celinicen , "A4d = Q4d * KA4" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "LA4" , $celfim ;
   echo $celinilef , "Coeficiente de aceleração de A4" , $celfim ;
   echo $celinicen , "-" , $celfim ;
   echo $celinicen , "LA4 = (-DF * Sen(Q4r)) / (CB2 * Cos(A4r)) + (KA4^2 * Tan(A4r))" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "LW" , $celfim ;
   echo $celinilef , "Coeficiente de aceleração de W" , $celfim ;
   echo $celinicen , "-" , $celfim ;
   echo $celinicen , "LW = -(DF * Cos(Q4r)) + (KA4^2 * CB2 * Cos(A4r)) - (LA4 * CB2 * Sen(A4r))" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "Q4dd" , $celfim ;
   echo $celinilef , "Aceleração angular de Q4" , $celfim ;
   echo $celinicen , "rad/s^2" , $celfim ;
   echo $celinicen , "Q4dd = (Xdd1 - (LW * Q4d * Q4d)) / KW" , $celfim ;
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   echo $celinicen , "A4dd" , $celfim ;
   echo $celinilef , "Aceleração angular de A4" , $celfim ;
   echo $celinicen , "rad/s^2" , $celfim ;
   echo $celinicen , "A4dd = (KA4 * Q4dd) + (LA4 * A4r * A4r)" , $celfim ;
   echo "</TR></TABLE>\n";
   echo "<BR><BR>\n";


   //COMECO DOS CALCULOS
   InsereTitulo("Formulário de Cálculos");
   InsereTexto("A seguir dispomos de um simulador dos cálculos que utilizamos para nosso projeto. Clique no botão \"Valor do Protótipo\" para inserir os valores que utilizamos na montagem, o botão \"Limpa Campos\" apaga todos os valores digitados nas caixas de texto e o botão \"Calcula as Tabelas\" exibe os cáculos de acordo com os valores digitados. Caso queira digitar outros valores que não forem iguais aos que usamos, só tome cuidado para não usar valores desproporcionais, como 1000mm de curso e 1mm de comprimento de barra.");
   echo "<BR>";
   echo "<form action=\"calculo.php\" name=\"Formulario_Calculos\" id=\"Formulario\" method=\"Post\" onSubmit=\"return ValidaFormulario()\">";
   echo "<table align=\"center\" cellspacing=\"2\" cellpadding=\"2\" border=\"1\" width=\"100%\">";
   echo "<tr><td colspan=5 class=TAB_TIT1L>Biela-Manivela 1 - BM1</td></tr>";
   echo "<tr>";
   echo "<td class=TAB_SUBTIT1C>Variável</td>";
   echo "<td class=TAB_SUBTIT2C3C>Letra</td>";
   echo "<td class=TAB_SUBTIT2C3C>Unidade</td>";
   echo "<td colspan=2 class=TAB_SUBTIT4C>Digite o Valor</td>";
   echo "</tr><tr>";
   echo "<td class=TAB_1C>Curso do êmbolo da BM1</td>";
   echo "<td class=TAB_2C>CUR</td>";
   echo "<td class=TAB_3C>mm</td>";
   echo "<td class=TAB_4C><input type=\"text\" name=\"TXT_Curso\" size=\"5\" maxlength=\"5\"></td>";
   echo "</tr><tr>";
   echo "<td class=TAB_1C>Número de Interações</td>";
   echo "<td class=TAB_2C>INT</td>";
   echo "<td class=TAB_3C>-</td>";
   echo "<td class=TAB_4C><input type=\"text\" name=\"TXT_Interacoes\" size=\"5\" maxlength=\"4\"></td>";
   echo "</tr><tr>";
   echo "<td class=TAB_1C>Velocidade do êmbolo do BM1</td>";
   echo "<td class=TAB_2C>Xd1</td>";
   echo "<td class=TAB_3C>m/s</td>";
   echo "<td class=TAB_4C><input type=\"text\" name=\"TXT_XdBM1\" size=\"5\" maxlength=\"5\"></td>";
   echo "</tr><tr>";
   echo "<td class=TAB_1C>Aceleração do êmbolo do BM1</td>";
   echo "<td class=TAB_2C>Xdd1</td>";
   echo "<td class=TAB_3C>m/s^2</td>";
   echo "<td class=TAB_4C><input type=\"text\" name=\"TXT_XddBM1\" size=\"5\" maxlength=\"5\"></td>";
   echo "</tr><tr>";
   echo "<td class=TAB_1C>Comprimento da biela/manivela do BM1</td>";
   echo "<td class=TAB_2C>CB1</td>";
   echo "<td class=TAB_3C>mm</td>";
   echo "<td class=TAB_4C><input type=\"text\" name=\"TXT_CompBiela1\" size=\"5\" maxlength=\"5\"></td>";
   echo "<tr><td colspan=5 class=TAB_TIT1L>Quatro Barras - QB</td></tr>";
   echo "<tr>";
   echo "<td class=TAB_SUBTIT1C>Variável</td>";
   echo "<td class=TAB_SUBTIT2C3C>Letra</td>";
   echo "<td class=TAB_SUBTIT2C3C>Unidade</td>";
   echo "<td colspan=2 class=TAB_SUBTIT4C>Digite o Valor</td>";
   echo "</tr><tr>";
   echo "<td class=TAB_1C>Distância entre Barras</td>";
   echo "<td class=TAB_2C>C2</td>";
   echo "<td class=TAB_3C>mm</td>";
   echo "<td class=TAB_4C><input type=\"text\" name=\"TXT_C2\" size=\"5\" maxlength=\"5\"></td>";
   echo "</tr><tr>";
   echo "<td class=TAB_1C>Distância do ponto D ao H</td>";
   echo "<td class=TAB_2C>DH</td>";
   echo "<td class=TAB_3C>mm</td>";
   echo "<td class=TAB_4C><input type=\"text\" name=\"TXT_DH\" size=\"5\" maxlength=\"5\"></td>";
   echo "<tr><td colspan=5 class=TAB_TIT1L>Biela-Manivela 2 - BM2</td></tr>";
   echo "<tr>";
   echo "<td class=TAB_SUBTIT1C>Variável</td>";
   echo "<td class=TAB_SUBTIT2C3C>Letra</td>";
   echo "<td class=TAB_SUBTIT2C3C>Unidade</td>";
   echo "<td colspan=2 class=TAB_SUBTIT4C>Digite o Valor</td>";
   echo "</tr><tr>";
   echo "<td class=TAB_1C>Comprimento da biela</td>";
   echo "<td class=TAB_2C>CB2</td>";
   echo "<td class=TAB_3C>mm</td>";
   echo "<td class=TAB_4C><input type=\"text\" name=\"TXT_CB2\" size=\"5\" maxlength=\"5\"></td>";
   echo "</tr><tr>";
   echo "<td class=TAB_1C>Distância entre o pino F e o centro do rolamento</td>";
   echo "<td class=TAB_2C>DF</td>";
   echo "<td class=TAB_3C>mm</td>";
   echo "<td class=TAB_4C><input type=\"text\" name=\"TXT_DF\" size=\"5\" maxlength=\"5\"></td>";
   echo "</tr></table>";
   echo "<BR><CENTER>";
   echo "<input type=\"button\" name=\"BT_ValorPadrao\" value=\"Valores do Protótipo\" onclick=\"BT_ValorPadrao_onclick()\">";
   echo "<input type=\"reset\" name=\"BT_Reset\" value=\"Limpa Campos\">";
   echo "<input type=\"submit\" name=\"BT_Submit\" value=\"Calcula as Tabelas\">";
   echo "</CENTER>";
   echo "</form>";
   echo "<BR>";
   InsereRodape();
}
else //FOI COLOCADO EM POST
{
   //BIELA-MANIVELA 1

   echo "<CENTER><table align=\"center\" cellspacing=\"2\" cellpadding=\"2\" border=\"1\" width=\"100%\">";
   echo "<tr><td colspan=19 class=TAB_TIT1L>BIELA MANIVELA 1</td></tr>";
   echo "<tr>";
   echo "<td class=TAB_SUBTIT4C>X</td>";
   echo "<td class=TAB_SUBTIT4C>Q1r</td>";
   echo "<td class=TAB_SUBTIT4C>A1r</td>";
   echo "<td class=TAB_SUBTIT4C>KA1</td>";
   echo "<td class=TAB_SUBTIT4C>LA1</td>";
   echo "<td class=TAB_SUBTIT4C>KX1</td>";
   echo "<td class=TAB_SUBTIT4C>LX1</td>";
   echo "<td class=TAB_SUBTIT4C>Q1g</td>";
   echo "<td class=TAB_SUBTIT4C>Q1d</td>";
   echo "<td class=TAB_SUBTIT4C>Q1dd</td>";
   echo "<td class=TAB_SUBTIT4C>Ag1</td>";
   echo "<td class=TAB_SUBTIT4C>A1d</td>";
   echo "<td class=TAB_SUBTIT4C>A1dd</td>";
   echo "<td class=TAB_SUBTIT4C>Di</td>";
   echo "<td class=TAB_SUBTIT4C>Dj</td>";
   echo "<td class=TAB_SUBTIT4C>Did</td>";
   echo "<td class=TAB_SUBTIT4C>Djd</td>";
   echo "<td class=TAB_SUBTIT4C>Didd</td>";
   echo "<td class=TAB_SUBTIT4C>Djdd</td>";
   echo "</tr><tr>";
   echo "<td class=TAB_SUBTIT2C3C>mm</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad</td>";
   echo "<td class=TAB_SUBTIT2C3C>-</td>";
   echo "<td class=TAB_SUBTIT2C3C>-</td>";
   echo "<td class=TAB_SUBTIT2C3C>-</td>";
   echo "<td class=TAB_SUBTIT2C3C>-</td>";
   echo "<td class=TAB_SUBTIT2C3C>º</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad/s</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad/s^2</td>";
   echo "<td class=TAB_SUBTIT2C3C>º</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad/s</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad/s^2</td>";
   echo "<td class=TAB_SUBTIT2C3C>mm</td>";
   echo "<td class=TAB_SUBTIT2C3C>mm</td>";
   echo "<td class=TAB_SUBTIT2C3C>mm/s</td>";
   echo "<td class=TAB_SUBTIT2C3C>mm/s</td>";
   echo "<td class=TAB_SUBTIT2C3C>mm/s^2</td>";
   echo "<td class=TAB_SUBTIT2C3C>mm/s^2</td>";
   echo "</tr><tr>";

   //COMECA OS CALCULOS
   $passo = $TXT_Curso / $TXT_Interacoes;
   //PARA CALCULO DA POSICAO X, COMECAMOS DO POSITIVO PARA O NEGATIVO
   $posini = (- $TXT_Curso / 2);
   $X = $posini;
   for ($numint = 0 ; $numint <= $TXT_Interacoes ; $numint++ )
   {
      echo "<tr>";
      //X
      if ( $numint == 0 )
      {
         $tmp = number_format($posini,2);
         echo "<td class=TAB_1C>$tmp</td>";
      }
      else
      {
         if($X == 0.1) $X = 0;
         $X = $X + $passo;
         $tmp = number_format($X,2);
         echo "<td class=TAB_1C>$tmp</td>";
      }
      if($posicao == 0) $posicao = 0.1;
      //Q1r
      $Q1r = ACOS($X /(2 * $TXT_CompBiela1) );
      $vetor_Q1r[$numint] = $Q1r;
      $tmp = number_format($Q1r,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //A1r
      $A1r = $Q1r;
      $tmp = number_format($A1r,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //KA1
      $KA1 = ($TXT_CompBiela1 * cos($Q1r)) / ($TXT_CompBiela1 * COS($A1r));
      $tmp = number_format($KA1,2);
      echo "<td class=TAB_1C>$tmp</td>";
      //LA1
      $LA1 = (-(($TXT_CompBiela1 * SIN($Q1r))/($TXT_CompBiela1 * COS($A1r)))  + ($KA1 * $KA1 * TAN($A1r)));
      $tmp = number_format($LA1,3);
      echo "<td class=TAB_1C>$tmp</td>";
      //KX1
      $KX1 = -($X * TAN($A1r));
      $tmp = number_format($KX1,2);
      echo "<td class=TAB_1C>$tmp</td>";
      //LX1
      $LX1 = ( - ( $TXT_CompBiela1 * COS($Q1r) ) - ( $KA1 * $KA1 * COS($A1r) * $TXT_CompBiela1 ) - ( $LA1 * $TXT_CompBiela1 * SIN($A1r) ) );
      $tmp = number_format($LX1,3);
      echo "<td class=TAB_1C>$tmp</td>";
      //Q1g
      $Q1g = rad2deg($Q1r);
      $tmp = number_format($Q1g,2);
      echo "<td class=TAB_1C>$tmp</td>";
      //Q1d
      $Q1d = $TXT_XdBM1 / $KX1;
      $vetor_Q1d[$numint] = $Q1d;
      $tmp = number_format($Q1d,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Q1dd
      $Q1dd = ( ($TXT_XddBM1 - ($LX1 * $Q1d * $Q1d) ) / $KX1 );
      $vetor_Q1dd[$numint] = $Q1dd;
      $tmp = number_format($Q1dd,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Ag1
      $Ag1 = rad2deg($A1r);
      $tmp = number_format($Ag1,2);
      echo "<td class=TAB_1C>$tmp</td>";
      //A1d
      $A1d = $KA1 * $Q1d;
      $tmp = number_format($A1d,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //A1dd
      $A1dd = ($KA1 * $Q1dd) + ($LA1 * $Q1d * $Q1d);
      $tmp = number_format($A1dd,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Di
      $Di = $TXT_CompBiela1 * COS($Q1r);
      $tmp = number_format($Di,2);
      echo "<td class=TAB_1C>$tmp</td>";
      //Dj
      $Dj = $TXT_CompBiela1 * SIN($Q1r);
      $tmp = number_format($Dj,2);
      echo "<td class=TAB_1C>$tmp</td>";
      //Did
      $Did = $TXT_CompBiela1 * (-( SIN($Q1r) )) * $Q1d ;
      $tmp = number_format($Did,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Djd
      $Djd = $TXT_CompBiela1 * COS($Q1r) * $Q1d ;
      $tmp = number_format($Djd,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Didd
      $Didd = $TXT_CompBiela1 * (-(COS($Q1r))) * $Q1d * $Q1d + $TXT_CompBiela1 * (-(SIN($Q1r))) * $Q1dd;
      $tmp = number_format($Didd,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Djdd
      $Djdd = $TXT_CompBiela1 * (-(SIN($Q1r))) * $Q1d * $Q1d + $TXT_CompBiela1 * COS($Q1r) * $Q1dd;
      $tmp = number_format($Djdd,5);
      echo "<td class=TAB_1C>$tmp</td>";

      echo "</tr>";
   }

   echo "</tr></table></CENTER>";
   echo "<BR>";

   //QUATRO-BARRAS

   echo "<CENTER><table align=\"center\" cellspacing=\"2\" cellpadding=\"2\" border=\"1\" width=\"100%\">";
   echo "<tr><td colspan=15 class=TAB_TIT1L>QUATRO BARRAS</td></tr>";
   echo "<tr>";

   echo "<td class=TAB_SUBTIT4C>Q2r</td>";
   echo "<td class=TAB_SUBTIT4C>Q2g</td>";
   echo "<td class=TAB_SUBTIT4C>Q2d</td>";
   echo "<td class=TAB_SUBTIT4C>Q2dd</td>";
   echo "<td class=TAB_SUBTIT4C>L</td>";
   echo "<td class=TAB_SUBTIT4C>Alfar</td>";
   echo "<td class=TAB_SUBTIT4C>Alfag</td>";
   echo "<td class=TAB_SUBTIT4C>Betar</td>";
   echo "<td class=TAB_SUBTIT4C>Betag</td>";
   echo "<td class=TAB_SUBTIT4C>A3g</td>";
   echo "<td class=TAB_SUBTIT4C>A3r</td>";
   echo "<td class=TAB_SUBTIT4C>KA3</td>";
   echo "<td class=TAB_SUBTIT4C>A3d</td>";
   echo "<td class=TAB_SUBTIT4C>LA3</td>";
   echo "<td class=TAB_SUBTIT4C>A3dd</td>";
   echo "</tr><tr>";
   echo "<td class=TAB_SUBTIT2C3C>rad</td>";
   echo "<td class=TAB_SUBTIT2C3C>º</td>";
   echo "<td class=TAB_SUBTIT2C3C>mm/s</td>";
   echo "<td class=TAB_SUBTIT2C3C>mm/s^2</td>";
   echo "<td class=TAB_SUBTIT2C3C>mm</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad</td>";
   echo "<td class=TAB_SUBTIT2C3C>º</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad</td>";
   echo "<td class=TAB_SUBTIT2C3C>º</td>";
   echo "<td class=TAB_SUBTIT2C3C>º</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad</td>";
   echo "<td class=TAB_SUBTIT2C3C>-</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad/s</td>";
   echo "<td class=TAB_SUBTIT2C3C>-</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad/^2</td>";
   echo "</tr>";

   for ($numint = 0 ; $numint <= $TXT_Interacoes ; $numint++ )
   {
      echo "<tr>";
      //Q2r
      $Q2r = $vetor_Q1r[$numint];
      $tmp = number_format($Q2r,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Q2g
      $Q2g = rad2deg($Q2r);
      $tmp = number_format($Q2g,2);
      echo "<td class=TAB_1C>$tmp</td>";
      //Q2d
      $Q2d = $vetor_Q1d[$numint];
      $tmp = number_format($Q2d,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Q2dd
      $Q2dd = $vetor_Q1dd[$numint];
      $tmp = number_format($Q2dd,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //L
      $tmp =  ($TXT_CompBiela1 * $TXT_CompBiela1) + ($TXT_C2 * $TXT_C2) - (2 * $TXT_CompBiela1 * $TXT_C2 * cos($Q2r));
      $L = sqrt( $tmp );
      $tmp = number_format($L,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Alfar
      $Alfar = asin( ($TXT_CompBiela1 * sin($Q2r)) / $L );
      $tmp = number_format($Alfar,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Alfag
      $Alfag = rad2deg($Alfar);
      $tmp = number_format($Alfag,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Betar
      $Betar = pi() - $Q2r - $Alfar;
      $tmp = number_format($Betar,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Betag
      $Betag = rad2deg($Betar);
      $tmp = number_format($Betag,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //A3g
      $A3g = 360 - ( rad2deg($Alfar) + rad2deg($Betar) );
      $tmp = number_format($A3g,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //A3r
      $A3r = deg2rad($A3g);
      $tmp = number_format($A3r,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //KA3
      $KA3 = -($TXT_CompBiela1 * sin( -$Q2r )) / ($TXT_CompBiela1 * sin($A3r) );
      $tmp = number_format($KA3,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //A3d
      $A3d = $KA3 * $Q2d;
      $tmp = number_format($A3d,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //LA3
      $LA3 = ($TXT_CompBiela1 * cos(- $Q2r)) / ($TXT_CompBiela1 * sin(- $A3r));
      $tmp = number_format($LA3,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //A3dd
      $A3dd = ($Q2dd * $KA3) + ( $Q2d * $Q2d * $LA3 );
      $tmp = number_format($A3dd,5);
      echo "<td class=TAB_1C>$tmp</td>";

      echo "</tr>";
   }

   echo "</tr></table></CENTER>";
   echo "<BR>";

   //CONEXÃO DO QB COM BM2

   echo "<CENTER><table align=\"center\" cellspacing=\"2\" cellpadding=\"2\" border=\"1\" width=\"100%\">";
   echo "<tr><td colspan=5 class=TAB_TIT1L>CONEXÃO QB COM BM2</td></tr>";
   echo "<tr>";
   echo "<td class=TAB_SUBTIT4C>H</td>";
   echo "<td class=TAB_SUBTIT4C>Hi</td>";
   echo "<td class=TAB_SUBTIT4C>Hj</td>";
   echo "<td class=TAB_SUBTIT4C>Hd</td>";
   echo "<td class=TAB_SUBTIT4C>Hdd</td>";
   echo "</tr><tr>";
   echo "<td class=TAB_SUBTIT2C3C>mm</td>";
   echo "<td class=TAB_SUBTIT2C3C>mm</td>";
   echo "<td class=TAB_SUBTIT2C3C>mm</td>";
   echo "<td class=TAB_SUBTIT2C3C>m/s</td>";
   echo "<td class=TAB_SUBTIT2C3C>m/s^2</td>";
   echo "</tr>";

   for ($numint = 0 ; $numint <= $TXT_Interacoes ; $numint++ )
   {
      echo "<tr>";
      //H
      $H = $TXT_DH / sin($vetor_Q1r[$numint]);
      $vetor_H[$numint] = $H;
      $tmp = number_format($H,2);
      echo "<td class=TAB_1C>$tmp</td>";
      //Hi
      $Hi = $H * cos($vetor_Q1r[$numint]);
      $vetor_Hi[$numint] = $Hi;
      $tmp = number_format($Hi,2);
      echo "<td class=TAB_1C>$tmp</td>";
      //Hj
      $Hj = $H * sin($vetor_Q1r[$numint]);
      $tmp = number_format($Hj,2);
      echo "<td class=TAB_1C>$tmp</td>";
      //Hd
      $Hd = $H * $vetor_Q1d[$numint] * sin($vetor_Q1r[$numint]);
      $tmp = number_format($Hd,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Hdd
      $Hdd = ( $TXT_DH * cos($vetor_Q1r[$numint]) * $vetor_Q1d[$numint] * $vetor_Q1dd[$numint] * 2 * $vetor_Q1d[$numint]) / (sin($vetor_Q1r[$numint]) * sin($vetor_Q1r[$numint]) * sin($vetor_Q1r[$numint]));
      $tmp = number_format($Hdd,5);
      echo "<td class=TAB_1C>$tmp</td>";

      echo "</tr>";
   }

   echo "</tr></table></CENTER>";
   echo "<BR>";

   //BIELA-MANIVELA 2

   echo "<CENTER><table align=\"center\" cellspacing=\"2\" cellpadding=\"2\" border=\"1\" width=\"100%\">";
   echo "<tr><td colspan=16 class=TAB_TIT1L>BIELA MANIVELA 2</td></tr>";
   echo "<tr>";
   echo "<td class=TAB_SUBTIT4C>W</td>";
   echo "<td class=TAB_SUBTIT4C>Wd</td>";
   echo "<td class=TAB_SUBTIT4C>Wdd</td>";
   echo "<td class=TAB_SUBTIT4C>Ror</td>";
   echo "<td class=TAB_SUBTIT4C>GE</td>";
   echo "<td class=TAB_SUBTIT4C>Gamar</td>";
   echo "<td class=TAB_SUBTIT4C>A4r</td>";
   echo "<td class=TAB_SUBTIT4C>Q4r</td>";
   echo "<td class=TAB_SUBTIT4C>KW</td>";
   echo "<td class=TAB_SUBTIT4C>KA4</td>";
   echo "<td class=TAB_SUBTIT4C>Q4d</td>";
   echo "<td class=TAB_SUBTIT4C>A4d</td>";
   echo "<td class=TAB_SUBTIT4C>LA4</td>";
   echo "<td class=TAB_SUBTIT4C>LW</td>";
   echo "<td class=TAB_SUBTIT4C>Q4dd</td>";
   echo "<td class=TAB_SUBTIT4C>A4dd</td>";
   echo "</tr><tr>";
   echo "<td class=TAB_SUBTIT2C3C>mm</td>";
   echo "<td class=TAB_SUBTIT2C3C>mm/s</td>";
   echo "<td class=TAB_SUBTIT2C3C>mm/s^2</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad</td>";
   echo "<td class=TAB_SUBTIT2C3C>mm</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad</td>";
   echo "<td class=TAB_SUBTIT2C3C>-</td>";
   echo "<td class=TAB_SUBTIT2C3C>-</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad/s</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad/s</td>";
   echo "<td class=TAB_SUBTIT2C3C>-</td>";
   echo "<td class=TAB_SUBTIT2C3C>-</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad/s^2</td>";
   echo "<td class=TAB_SUBTIT2C3C>rad/s^2</td>";
   echo "</tr>";

   for ($numint = 0 ; $numint <= $TXT_Interacoes ; $numint++ )
   {
      echo "<tr>";
      //W
      if ( $numint == 0 )
      {
         $W = $TXT_DH;
         $Want = $W;
         $tmp = number_format($W,2);
         echo "<td class=TAB_1C>$tmp</td>";
      }
      else
      {
         $W = $Want + ( $vetor_Hi[$numint - 1] - $vetor_Hi[$numint] );
         $Want = $W;
         $tmp = number_format($W,2);
         echo "<td class=TAB_1C>$tmp</td>";
      }
      //Wd
      $Wd = -($vetor_H[$numint] * sin($vetor_Q1r[$numint]) * $vetor_Q1d[$numint]);
      $tmp = number_format($Wd,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Wdd
      $Wdd = -($vetor_H[$numint] * cos($vetor_Q1r[$numint]) * $vetor_Q1d[$numint] * $vetor_Q1d[$numint]) -($vetor_H[$numint] * sin($vetor_Q1r[$numint]) * $vetor_Q1dd[$numint]);
      $tmp = number_format($Wdd,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Ror
      if ( $W > 0 )
      {
         $Ror = Atan( $TXT_CB2 / $W );
         $tmp = number_format($Ror,2);
         echo "<td class=TAB_1C>$tmp</td>";
      }
      else
      {
         $Ror = pi() + Atan( $TXT_CB2 / $W );
         $tmp = number_format($Ror,2);
         echo "<td class=TAB_1C>$tmp</td>";
      }
      //GE
      $GE = $TXT_CB2 / sin($Ror);
      $tmp = number_format($GE,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Gamar
      $Gamar = acos( ($TXT_DF * $TXT_DF - $GE * $GE - $TXT_CB2 * $TXT_CB2) / (- 2 * $GE * $TXT_CB2) );
      if ( $Gamar > 1 )
      {
         $Gamar = 0;
      }
      $tmp = number_format($Gamar,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //A4r
      $A4r = $Gamar + $Ror;
      $tmp = number_format($A4r,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Q4r
      $Q4r = - acos( ($W - $TXT_CB2 * cos($A4r)) / $TXT_DF );
      $tmp = number_format($Q4r,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //KW
      $KW = -($TXT_CB2 + $W * tan($A4r));
      $tmp = number_format($KW,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //KA4
      $KA4 = ($TXT_DF * cos($Q4r)) / ($TXT_CB2 * cos($A4r));
      $tmp = number_format($KA4,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Q4d
      $Q4d = $Wd / $KW;
      $tmp = number_format($Q4d,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //A4d
      $A4d = $Q4d * $KA4;
      $tmp = number_format($A4d,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //LA4
      $LA4 = (-$TXT_DF * sin($Q4r)) / ($TXT_CB2 * cos($A4r)) + ($KA4 * $KA4 * tan($A4r));
      $tmp = number_format($LA4,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //LW
      $LW = -($TXT_DF * cos($Q4r)) + ($KA4 * $KA4 * $TXT_CB2 * cos($A4r)) - ($LA4 * $TXT_CB2 * sin($A4r));
      $tmp = number_format($LW,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //Q4dd
      $Q4dd = ($TXT_XddBM1 - ($LW * $Q4d * $Q4d)) / $KW;
      $tmp = number_format($Q4dd,5);
      echo "<td class=TAB_1C>$tmp</td>";
      //A4dd
      $A4dd = ($KA4 * $Q4dd) + ($LA4 * $A4r * $A4r);
      $tmp = number_format($A4dd,5);
      echo "<td class=TAB_1C>$tmp</td>";

      echo "</tr>";
   }

   echo "</tr></table></CENTER>";
   echo "<BR>";
   InsereRodape();
}
?>
</BODY></HTML>