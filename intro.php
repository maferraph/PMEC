<?php

include('geral.php');

InsereCabecalho("Principal");
echo "<BODY bgColor=\"#FFFFFF\" leftMargin=\"0\" topMargin=\"0\" marginheight=\"0\" marginwidth=\"0\">";

echo "<BR>";
InsereTexto("No projeto de uma máquina ou dispositivo, podemos utilizar três tipos de mecanismos. O mecanismo oscilador, biela manivela e quatro barras, conforme mostra figura 1.");
InsereImagem("tipomec.jpg","Tipo de Mecanismos");
InsereTextoFigura("Figura 1: Mecanismos oscilador, biela manivela e quatro barras");
InsereTexto("Por definição, uma máquina usando algum mecanismo não precisa necessariamente ser automatizada. O exemplo clássico do uso de equipamentos com diversos mecanismos são as máquinas para envasar cerveja ou refrigerante. Este tipo de máquina, foi projetada para sempre realizar o mesmo trabalho, uma máquina dedicada. Neste caso, é possível introduzir automação como o uso de CLP´s (Controle Lógico Programável), onde com o auxílio por exemplo de sensores de presença ou de nível, é possível montar um programa leader ou digrama de relés em um CLP, de maneira que só ligue o envase do líquido quando na posição se encontrar uma garrafa e só desligue quando esta garrafa estiver com o nível determinado, porém o uso de programas para controlar robôs conforme a figura 2, onde é determinado os movimentos e este pode ser programado para uma outra função, ou ainda em máquinas como tornos ou centros de usinagem com CNC (Comando Numérico Computadorizado) conforme figura 3, que são carregados programas para usinagem específica da peça que estiver sendo produzida, não se encaixa na definição de mecanismo justamente por ter esta flexibilidade. No exemplo das máquinas de envase de bebidas, como a máquina de envasar leite em embalagens tetra-pak como mostra a figura 4, o mecanismo desde a sua construção executará sempre a mesma função, até mesmo ter a necessidade de ter os produtos à serem manipulados com as mesmas características, como o tamanho da garrafa e a quantidade de líquido envasado.");
InsereImagem("robo.jpg","Robô de Solda");
InsereTextoFigura("Figura 2: Um robô de solda que pode ser programado para executar diversas operações de solda");
InsereImagem("torno.jpg","Torno com CNC");
InsereTextoFigura("Figura 3: Um torno CNC que é programado conforme a peça à ser produzida");
InsereImagem("tetra.jpg","Máquina de envasar leite");
InsereTextoFigura("Figura 4: Uma máquina para envasar leite em embalagens tetra-pak");
InsereTexto("A idéia que tivemos então de montar uma máquina com estes mecanismos para nosso trabalho, foi um dispositivo que seria usado em uma indústria aonde existe uma linha ou célula de montagem de seus produtos, como no caso de uma indústria de válvulas. Esta máquina deveria ser usada no caso de termos uma esteira ou um carro como o usado em um FMS (Sistema Flexível de Manufatura) conforme a figura 5 - carro da cor laranja, do qual trouxesse a peça que estiver sendo montada.");
InsereImagem("fms.jpg","Sistema Flexível de Manufatura");
InsereTextoFigura("Figura 5: Uma foto do carro usado em um FMS");
InsereTexto("Nossa máquina seria formada por três mecanismos, dois biela manivela e um quatro barras, que com uma única fonte de energia, como um motor elétrico ou um cilíndro pneumático, acionasse todo o sistema, que seria colocado em frente do carro ou esteira, e ao lado ficaria a alimentação de peças à ser montada no produto. A máquina então teria a base do quatro barras fazendo o movimento de vai-e-vem, ou seja, vai até o carro e volta até o alimentador, que seria acionado por um biela manivela, e esta base teria fixada uma segunda base, que com o auxílio de outro biela manivela, faria o movimento de 90º para pegar as peças no alimentador, e nessa base que ficariam fixos os dipositivos responsáveis por prender e montar as peças no produto final.");
echo "<BR><BR>";
InsereRodape();
echo "</BODY></HTML>";
?>