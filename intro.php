<?php

include('geral.php');

InsereCabecalho("Principal");
echo "<BODY bgColor=\"#FFFFFF\" leftMargin=\"0\" topMargin=\"0\" marginheight=\"0\" marginwidth=\"0\">";

echo "<BR>";
InsereTexto("No projeto de uma m�quina ou dispositivo, podemos utilizar tr�s tipos de mecanismos. O mecanismo oscilador, biela manivela e quatro barras, conforme mostra figura 1.");
InsereImagem("tipomec.jpg","Tipo de Mecanismos");
InsereTextoFigura("Figura 1: Mecanismos oscilador, biela manivela e quatro barras");
InsereTexto("Por defini��o, uma m�quina usando algum mecanismo n�o precisa necessariamente ser automatizada. O exemplo cl�ssico do uso de equipamentos com diversos mecanismos s�o as m�quinas para envasar cerveja ou refrigerante. Este tipo de m�quina, foi projetada para sempre realizar o mesmo trabalho, uma m�quina dedicada. Neste caso, � poss�vel introduzir automa��o como o uso de CLP�s (Controle L�gico Program�vel), onde com o aux�lio por exemplo de sensores de presen�a ou de n�vel, � poss�vel montar um programa leader ou digrama de rel�s em um CLP, de maneira que s� ligue o envase do l�quido quando na posi��o se encontrar uma garrafa e s� desligue quando esta garrafa estiver com o n�vel determinado, por�m o uso de programas para controlar rob�s conforme a figura 2, onde � determinado os movimentos e este pode ser programado para uma outra fun��o, ou ainda em m�quinas como tornos ou centros de usinagem com CNC (Comando Num�rico Computadorizado) conforme figura 3, que s�o carregados programas para usinagem espec�fica da pe�a que estiver sendo produzida, n�o se encaixa na defini��o de mecanismo justamente por ter esta flexibilidade. No exemplo das m�quinas de envase de bebidas, como a m�quina de envasar leite em embalagens tetra-pak como mostra a figura 4, o mecanismo desde a sua constru��o executar� sempre a mesma fun��o, at� mesmo ter a necessidade de ter os produtos � serem manipulados com as mesmas caracter�sticas, como o tamanho da garrafa e a quantidade de l�quido envasado.");
InsereImagem("robo.jpg","Rob� de Solda");
InsereTextoFigura("Figura 2: Um rob� de solda que pode ser programado para executar diversas opera��es de solda");
InsereImagem("torno.jpg","Torno com CNC");
InsereTextoFigura("Figura 3: Um torno CNC que � programado conforme a pe�a � ser produzida");
InsereImagem("tetra.jpg","M�quina de envasar leite");
InsereTextoFigura("Figura 4: Uma m�quina para envasar leite em embalagens tetra-pak");
InsereTexto("A id�ia que tivemos ent�o de montar uma m�quina com estes mecanismos para nosso trabalho, foi um dispositivo que seria usado em uma ind�stria aonde existe uma linha ou c�lula de montagem de seus produtos, como no caso de uma ind�stria de v�lvulas. Esta m�quina deveria ser usada no caso de termos uma esteira ou um carro como o usado em um FMS (Sistema Flex�vel de Manufatura) conforme a figura 5 - carro da cor laranja, do qual trouxesse a pe�a que estiver sendo montada.");
InsereImagem("fms.jpg","Sistema Flex�vel de Manufatura");
InsereTextoFigura("Figura 5: Uma foto do carro usado em um FMS");
InsereTexto("Nossa m�quina seria formada por tr�s mecanismos, dois biela manivela e um quatro barras, que com uma �nica fonte de energia, como um motor el�trico ou um cil�ndro pneum�tico, acionasse todo o sistema, que seria colocado em frente do carro ou esteira, e ao lado ficaria a alimenta��o de pe�as � ser montada no produto. A m�quina ent�o teria a base do quatro barras fazendo o movimento de vai-e-vem, ou seja, vai at� o carro e volta at� o alimentador, que seria acionado por um biela manivela, e esta base teria fixada uma segunda base, que com o aux�lio de outro biela manivela, faria o movimento de 90� para pegar as pe�as no alimentador, e nessa base que ficariam fixos os dipositivos respons�veis por prender e montar as pe�as no produto final.");
echo "<BR><BR>";
InsereRodape();
echo "</BODY></HTML>";
?>