<?php

include('geral.php');

if(strlen($simula) == 0 )
{
   InsereCabecalho("");
   echo "<BODY bgColor=\"#FFFFFF\" leftMargin=\"0\" topMargin=\"0\" marginheight=\"0\" marginwidth=\"0\">";
   echo "<BR><BR>";
   InsereTitulo("AVISO");
   InsereTexto("O Simulador do Projeto de Mecanismos � um objeto ActiveX, uma tecnologia da Microsoft que instala aplicativos via internet, por�m por medidas de seguran�a, o acesso ao activex � por padr�o bloqueado. Outro problema � que s� navegadores Internet Explorer suportam esta tecnologia, a menos que seu navegador tenha o pluggin. Caso seu browser esteja com o n�vel de seguran�a em \"M�dio\" que � o padr�o, provavelmente n�o ser� poss�vel ver o simulador. Voc� deve deve ir at� o menu Ferramentas, �tem Op��es da Internet, clicar na guia Seguran�a e definir a seguran�a como n�vel baixo ou ativar a instala��o, execu��o, download e script para activex. IMPORTANTE: ao sair deste site, retorno as configura��es de seguran�a como estavam antes.");
   InsereTexto("Ao entrar na p�gina, voc� ver� um pedido de instala��o de software do simulador como a figura abaixo:");
   InsereImagem("aviso.jpg","Certificado de Seguran�a do Simulador");
   InsereTexto("Para ser poss�vel rodas o simulador, voc� deve aceitar, e o seu browser far� uma verifica��o se outros controles necess�rios para o simulador est�o em seu computador. Caso contr�rio, o navegador far� download diretamente do site da microsoft e exibir� um certificado de seguran�a para cada um deles. Os controles adicionais necess�rios, cado voc� n�o tenha instalado em seu computador, s�o o MSFLXGRD.OCX (Microsoft FlexGrid), o COMDLG32.OCX (Microsoft Common Controls) e a biblioteca de runtime do Visual Basic. Os arquivos s�o compactados no formato CAB e s�o instalados no seu diret�rio C:/WINDOWS/OCCACHE.");
   InsereTexto("Ao instalar, voc� dever� ver o simulador conforme a figura abaixo. S� n�o se esque�a de retornar suas configura��es de seguran�a do seu navegador.");
   InsereImagem("simu.jpg","Simulador do Projeto de Mecanismos");
   echo "<BR><BR><CENTER>";
   InsereAncoraTexto("FR_2","simula.php?simula=sim","Abre o simulador","Abre o simulador");
   echo "</CENTER><BR><BR>";
   InsereRodape();
   echo "</BODY></HTML>";
}
else
{
   InsereCabecalho("");
   echo "<BODY bgColor=\"#FFFFFF\" leftMargin=\"0\" topMargin=\"0\" marginheight=\"0\" marginwidth=\"0\">";
   echo "<BR><BR>";
   InsereImagem("bm1_var.jpg","Vari�veis do Biela Manivela 1");
   InsereTextoFigura("Figura 18: Vari�veis do biela manivela 1");
   InsereImagem("qb_var.jpg","Vari�veis do quatro barras");
   InsereTextoFigura("Figura 19: Vari�veis do quatro barras");
   InsereImagem("bm2_var.jpg","Vari�veis do Biela Manivela 2");
   InsereTextoFigura("Figura 20: Vari�veis do biela manivela 2");
   echo "<OBJECT CLASSID=\"clsid:5220cb21-c88d-11cf-b347-00aa00a28331\"><PARAM NAME=\"LPKPath\" VALUE=\"pmec.lpk\"></OBJECT>";
   echo "<CENTER><OBJECT ID=\"CT_Pmec\" WIDTH=333 HEIGHT=394 CLASSID=\"CLSID:0DA28595-617D-4878-9C2F-05DE8F191B4B\" CODEBASE=\"PMEC.CAB#version=1,0,0,5\"></OBJECT></CENTER>";
   echo "<BR><BR>";
   InsereRodape();
   echo "</BODY></HTML>";
}
?>