<?PHP
//PMEC

function InsereTexto($Texto)
{
   $paragrafo = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
   echo "<P><FONT CLASS=\"FX\">$paragrafo $Texto</FONT>";
}

function InsereTextoFigura($Texto)
{
   echo "<CENTER><FONT CLASS=\"FF\">$Texto</FONT></CENTER>";
}

function InsereTitulo($Texto)
{
   echo "<FONT CLASS=\"FS\">$Texto</FONT>";
}

function InsereLista($Item , $Texto)
{
   echo "<UL><LI><FONT CLASS=\"FX\"><B>$Item </B>$Texto</FONT></LI></UL>";
}

function InsereImagem($Imagem,$Nome)
{
   //global $Largura , $Comprimento;
   //$Tamanho = GetImageSize ($Imagem);
   //$TmpLar = (int) ($Tamanho[0] * ( $Largura / 1024));
   //$TmpCom = (int) ($Tamanho[1] * ( $Comprimento / 768));
   echo "<BR><BR><CENTER><IMG src='$Imagem' border=0 alt='$Nome'></CENTER><BR>";
}

function InsereAncoraTexto($Frame,$ArquivoDestino,$Texto,$BarraStatus)
{
   echo "<A HREF='$ArquivoDestino' TARGET='$Frame' ONMOUSEOUT='return BarraStatus(\"\")' ONMOUSEOVER='return BarraStatus(\"$BarraStatus\")'>$Texto</A>";
}

function InsereAncoraImagem($Frame,$ArquivoDestino,$Imagem,$BarraStatus)
{
   global $Largura , $Comprimento;
   $Tamanho = GetImageSize ($Imagem);
   $TmpLar = (int) ($Tamanho[0] * ( $Largura / 1024));
   $TmpCom = (int) ($Tamanho[1] * ( $Comprimento / 768));
   echo "<A HREF='$ArquivoDestino' TARGET='$Frame' ONMOUSEOUT='return BarraStatus(\"\")' ONMOUSEOVER='return BarraStatus(\"$BarraStatus\")'><IMG src='$Imagem' border=0 alt='$BarraStatus' width=$TmpLar height=$TmpCom ></A>";
}

function InsereAncoraImagemExterna($ArquivoDestino,$Imagem,$BarraStatus)
{
   global $Largura , $Comprimento;
   $Tamanho = GetImageSize ($Imagem);
   $TmpLar = (int) ($Tamanho[0] * ( $Largura / 1024));
   $TmpCom = (int) ($Tamanho[1] * ( $Comprimento / 768));
   echo "<A HREF='$ArquivoDestino' TARGET='_blank' ONMOUSEOUT='return BarraStatus(\"\")' ONMOUSEOVER='return BarraStatus(\"$BarraStatus\")'><IMG src='$Imagem' border=0 alt='$BarraStatus' width=$TmpLar height=$TmpCom ></A>";
}

function InsereCabecalho($Titulo)
{
   if($Titulo == "" )
   {
      echo "<HTML><HEAD><TITLE>Projeto de Mecanismos 2001 - Engenharia Mecatrônica UNIP</TITLE>";
   }
   else
   {
      echo "<HTML><HEAD><TITLE>$Titulo</TITLE>";
   }
   echo "<LINK HREF=\"pmec.ico\" REL=\"SHORTCUT ICON\">";
   echo "<LINK HREF=\"estilos.css\" REL=\"stylesheet\" TYPE=\"text/css\">";
   echo "<SCRIPT LANGUAGE=\"javascript\" SRC=\"geral.js\"></SCRIPT>";
   InsereMetaTags();
   echo "</HEAD>";
}

function InsereRodape()
{
   echo "<TABLE CELLPADDING=\"0\" CELLSPACING=\"0\" WIDTH=\"100%\" BORDER=\"0\" VALIGN=\"TOP\"><TR VALIGN=\"MIDDLE\">\n";
   echo "<TD ALIGN=\"LEFT\" BGCOLOR=\"#FF9966\" VALIGN=\"MIDDLE\">\n";
   echo "<FONT CLASS=\"F1\"><CENTER>Os direitos sobre este trabalho pertencem aos alunos e professores da UNIP - Universidade Paulista</CENTER></FONT>\n";
   echo "</TD></TR></TBODY></TABLE>\n";
}

function InsereMetaTags()
{
   echo "
<META NAME=\"Title\" CONTENT=\"Projeto de Mecanismos 2001 - Engenharia Mecatrônica UNIP\">
<META NAME=\"ROBOTS\" CONTENT=\"INDEX,FOLLOW\">
<META HTTP-EQUIV=\"Content-Type\" CONTENT=\"text/html; charset=iso-8859-1\">
<META NAME=\"Language\" CONTENT=\"Portuguese\">
<META HTTP-EQUIV=\"Expires\" CONTENT=\"0\">
<META NAME=\"description\" CONTENT=\"Projeto de Mecanismos da engenharia mecatrônica da UNIP, onde foi calculado e simulado uma máquina para uma linha de montagem usando biela-manivela e quatro barras.\">
<META NAME=\"keywords\" CONTENT=\"Projeto, Trabalho, Unip, Universidade Paulista, Mecanismo, Biela, Manivela, Quatro Barras, Máquina, Automação, Mecatrônica, Robô, Engenharia, FMS, CNC, Simulação\">
<META HTTP-EQUIV=\"author\" CONTENT=\"Maurício Fernandes Raphael\">
<META HTTP-EQUIV=\"Reply-to\" CONTENT=\"mauricio@projetodemecanismos.port5.com\">
<META NAME=\"Classification\" CONTENT=\"Engenharia\">
<META NAME=\"Doc-rights\" CONTENT=\"Unip - Universidade Paulista\">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
";
}

function ContadordePagina()
{
   echo "<CENTER><FONT CLASS=\"CON\">Visitas desde Março/2004</FONT></CENTER>\n";
   echo "<CENTER><TABLE bgColor=\"#FFFFFF\" CELLPADDING=0 CELLSPACING=0 WIDTH=\"20%\" BORDER=1 VALIGN=\"TOP\">\n";
   echo "<TR VALIGN=\"MIDDLE\"><TD ALIGN=\"CENTER\">\n";
   $tmp = PegaContador("pmec");
   $tamtmp = strlen($tmp);
   $diftmp = 7 - $tamtmp;
   for($i=1 ; $i < $diftmp ; $i++)
   {
      echo "<IMG SRC=\"0.gif\" border=0>";
   }
   for($i=0 ; $i < $tamtmp ; $i++)
   {
      echo "<IMG SRC=\"$tmp[$i].gif\" border=0>";
   }
   echo "</TD></TR></TABLE></CENTER>\n";
}

function PegaContador($tipo)
{
   //constante MySQL
   $ERRO_CONECTAR_BD = "Não foi possível estabelecer a conexão com o banco de dados." ;
   $ERRO_ABRIR_BD = "Não foi possível abrir o banco de dados." ;
   $ERRO_CONSULTAR_BD = "Não foi possível realizar a consulta ao banco de dados." ;
   $ERRO_ALTERAR_BD = "Não foi possível realizar a alteração no banco de dados." ;
   $ERRO_INSERIR_BD = "Não foi possível inserir dados no banco de dados." ;
   $ERRO_APAGAR_BD = "Não foi possível deletar dados no banco de dados." ;
   $ERRO_FECHAR_BD = "Não foi possível encerrar conexão com o banco de dados." ;
   //abre conexao com MySQL
   $host = "localhost:3306";
   $usuario = "engenhariaunip_it_db";
   $senha = "";
   $bd_conexao = mysql_connect($host,$usuario,$senha) or die ($ERRO_CONECTAR_BD);
   //consulta indice
   $bd_bancodedados = mysql_select_db($usuario,$bd_conexao) or die ($ERRO_ABRIR_BD);
   $bd_query = "SELECT * FROM contador WHERE site = '$tipo'";
   $bd_consulta = mysql_query($bd_query,$bd_conexao) or die ($ERRO_CONSULTAR_BD);
   $bd_resultado = mysql_fetch_object($bd_consulta);
   $int_visita =  $bd_resultado->visitas + 1;
   $bd_query = "UPDATE contador SET visitas = '$int_visita' WHERE site = '$tipo'";
   $bd_alteracao = mysql_query($bd_query,$bd_conexao) or die ($ERRO_ALTERAR_BD);
   $bd_fecha = mysql_close($bd_conexao) or die ($ERRO_FECHAR_BD);
   if( is_numeric($int_visita) ==  true )
   {
      $int_visita = (string) $int_visita;
   }
   else
   {
      $int_visita = "-";
   }
   return $int_visita;
}

function InsereDownload()
{
   echo "<TABLE CELLPADDING=\"0\" CELLSPACING=\"0\" WIDTH=\"100%\" BORDER=\"1\" VALIGN=\"TOP\">\n";
   echo "<TR VALIGN=\"MIDDLE\">\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Item</FONT></TD>\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Downloads</FONT></TD>\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FT\">Link</FONT></TD>\n";
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   $tmp = PegaContador("tra");
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FX\">Trabalho - 1.305 KB</FONT></TD>\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\">\n";
   $tamtmp = strlen($tmp);
   for($i=0 ; $i < $tamtmp ; $i++)
   {
      echo "<IMG SRC=\"$tmp[$i].gif\" border=0>";
   }
   echo "</TD><TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FX\">\n";
   InsereLinkDownload("cred.php?download=tra");
   echo "</FONT></TD>\n";
   echo "</TR><TR VALIGN=\"MIDDLE\">\n";
   $tmp = PegaContador("apr");
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FX\">Apresentação - 6.948 KB</FONT></TD>\n";
   echo "<TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\">\n";
   $tamtmp = strlen($tmp);
   for($i=0 ; $i < $tamtmp ; $i++)
   {
      echo "<IMG SRC=\"$tmp[$i].gif\" border=0>";
   }
   echo "</TD><TD ALIGN=\"CENTER\" VALIGN=\"MIDDLE\"><FONT CLASS=\"FX\">\n";
   InsereLinkDownload("cred.php?download=apr");
   echo "</FONT></TD>\n";
   echo "</TR></TABLE>\n";
}

function InsereLinkDownload($pagina)
{
   echo "<A HREF=\"$pagina\" ONMOUSEOUT='return BarraStatus(\"\")' ONMOUSEOVER='return BarraStatus(\"Iniciar download\")'>Iniciar download</A>";
}


?>