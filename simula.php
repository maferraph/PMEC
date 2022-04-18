<?php

include('geral.php');

if(strlen($simula) == 0 )
{
   InsereCabecalho("");
   echo "<BODY bgColor=\"#FFFFFF\" leftMargin=\"0\" topMargin=\"0\" marginheight=\"0\" marginwidth=\"0\">";
   echo "<BR><BR>";
   InsereTitulo("AVISO");
   InsereTexto("O Simulador do Projeto de Mecanismos é um objeto ActiveX, uma tecnologia da Microsoft que instala aplicativos via internet, porém por medidas de segurança, o acesso ao activex é por padrão bloqueado. Outro problema é que só navegadores Internet Explorer suportam esta tecnologia, a menos que seu navegador tenha o pluggin. Caso seu browser esteja com o nível de segurança em \"Médio\" que é o padrão, provavelmente não será possível ver o simulador. Você deve deve ir até o menu Ferramentas, ítem Opções da Internet, clicar na guia Segurança e definir a segurança como nível baixo ou ativar a instalação, execução, download e script para activex. IMPORTANTE: ao sair deste site, retorno as configurações de segurança como estavam antes.");
   InsereTexto("Ao entrar na página, você verá um pedido de instalação de software do simulador como a figura abaixo:");
   InsereImagem("aviso.jpg","Certificado de Segurança do Simulador");
   InsereTexto("Para ser possível rodas o simulador, você deve aceitar, e o seu browser fará uma verificação se outros controles necessários para o simulador estão em seu computador. Caso contrário, o navegador fará download diretamente do site da microsoft e exibirá um certificado de segurança para cada um deles. Os controles adicionais necessários, cado você não tenha instalado em seu computador, são o MSFLXGRD.OCX (Microsoft FlexGrid), o COMDLG32.OCX (Microsoft Common Controls) e a biblioteca de runtime do Visual Basic. Os arquivos são compactados no formato CAB e são instalados no seu diretório C:/WINDOWS/OCCACHE.");
   InsereTexto("Ao instalar, você deverá ver o simulador conforme a figura abaixo. Só não se esqueça de retornar suas configurações de segurança do seu navegador.");
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
   InsereImagem("bm1_var.jpg","Variáveis do Biela Manivela 1");
   InsereTextoFigura("Figura 18: Variáveis do biela manivela 1");
   InsereImagem("qb_var.jpg","Variáveis do quatro barras");
   InsereTextoFigura("Figura 19: Variáveis do quatro barras");
   InsereImagem("bm2_var.jpg","Variáveis do Biela Manivela 2");
   InsereTextoFigura("Figura 20: Variáveis do biela manivela 2");
   echo "<OBJECT CLASSID=\"clsid:5220cb21-c88d-11cf-b347-00aa00a28331\"><PARAM NAME=\"LPKPath\" VALUE=\"pmec.lpk\"></OBJECT>";
   echo "<CENTER><OBJECT ID=\"CT_Pmec\" WIDTH=333 HEIGHT=394 CLASSID=\"CLSID:0DA28595-617D-4878-9C2F-05DE8F191B4B\" CODEBASE=\"PMEC.CAB#version=1,0,0,5\"></OBJECT></CENTER>";
   echo "<BR><BR>";
   InsereRodape();
   echo "</BODY></HTML>";
}
?>