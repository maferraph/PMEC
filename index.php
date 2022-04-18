<?php

include('geral.php');

if(strlen($pag) == 0 )
{
   InsereCabecalho("");
   echo "<FRAMESET rows=\"100,*\" frameborder=0 framespacing=0>\n";
   echo "<FRAME name=FR_1 marginheight=0 marginwidth=0 frameborder=0 noresize src=\"index.php?pag=cab\" scrolling=NO>\n";
   echo "<FRAME name=FR_2 marginheigh=0 marginwidth=0 frameborder=0 src=\"index.php?pag=ent\" scrolling=yes>\n";
   echo "</FRAMESET></html>";
}
else
{
   if($pag == "cab" )
   {
      InsereCabecalho("");
      echo "<BODY bgColor=\"#FFFFFF\" leftMargin=\"0\" topMargin=\"0\" marginheight=\"0\" marginwidth=\"0\">";
      $espaco = "<FONT CLASS=\"F1\">&nbsp;&nbsp;|&nbsp;&nbsp;</FONT>";
      echo "<TABLE bgColor=\"#FFFFFF\" CELLPADDING=0 CELLSPACING=0 WIDTH=\"100%\" BORDER=0 VALIGN=\"TOP\">\n";
      // http://projetodemecanismos.port5.com
      echo "<TR VALIGN=\"MIDDLE\"><TD ALIGN=\"LEFT\"><A HREF=\"http://projetodemecanismos.port5.com\" TARGET=\"_top\" ONMOUSEOUT='return BarraStatus(\"\")' ONMOUSEOVER='return BarraStatus(\"Página inicial\")'><IMG BORDER=0 SRC=\"logo.gif\" BORDER=0></A></TD>\n";
      echo "<TD ALIGN=\"RIGHT\"><A HREF=\"http://www.unip.br\" TARGET=\"_top\" ONMOUSEOUT='return BarraStatus(\"\")' ONMOUSEOVER='return BarraStatus(\"Vai para site da Unip\")'><IMG SRC=\"unip.gif\" BORDER=0></A></TD></TR></TABLE>\n";
      echo "<TABLE CELLPADDING=\"0\" CELLSPACING=\"0\" WIDTH=\"100%\" BORDER=\"0\" VALIGN=\"TOP\"><TR VALIGN=\"TOP\">";
      echo "<TD ALIGN=\"LEFT\" BGCOLOR=\"#FF9966\" VALIGN=\"MIDDLE\" HEIGHT=\"20\">";
      echo "<FONT CLASS=\"F1\">&nbsp;&nbsp;</FONT>";
      echo "<A HREF=\"intro.php\" TARGET=\"FR_2\" ONMOUSEOUT='return BarraStatus(\"\")' ONMOUSEOVER='return BarraStatus(\"Introdução sobre mecanismos\")'><FONT CLASS=\"F1\">Introdução</FONT></A>";
      echo $espaco;
      echo "<A HREF=\"funcio.php\" TARGET=\"FR_2\" ONMOUSEOUT='return BarraStatus(\"\")' ONMOUSEOVER='return BarraStatus(\"Funcionamento do Mecanismo\")'><FONT CLASS=\"F1\">Funcionamento</FONT></A>";
      echo $espaco;
      echo "<A HREF=\"calculo.php\" TARGET=\"FR_2\" ONMOUSEOUT='return BarraStatus(\"\")' ONMOUSEOVER='return BarraStatus(\"Cálculos das Tabelas\")'><FONT CLASS=\"F1\">Cálculos</FONT></A>";
      echo $espaco;
      echo "<A HREF=\"simula.php\" TARGET=\"FR_2\" ONMOUSEOUT='return BarraStatus(\"\")' ONMOUSEOVER='return BarraStatus(\"Simulação do Mecanismo\")'><FONT CLASS=\"F1\">Simulação</FONT></A>";
      echo $espaco;
      echo "<A HREF=\"proto.php\" TARGET=\"FR_2\" ONMOUSEOUT='return BarraStatus(\"\")' ONMOUSEOVER='return BarraStatus(\"Protótipo\")'><FONT CLASS=\"F1\">Protótipo</FONT></A>";
      echo $espaco;
      echo "<A HREF=\"cred.php\" TARGET=\"FR_2\" ONMOUSEOUT='return BarraStatus(\"\")' ONMOUSEOVER='return BarraStatus(\"Créditos\")'><FONT CLASS=\"F1\">Créditos</FONT></A>";
      echo "</TD></TR></TBODY></TABLE>";
      echo "</BODY></HTML>\n";
   }
   elseif($pag == "ent" )
   {
      InsereCabecalho("");
      echo "<BODY bgColor=\"#FFFFFF\" leftMargin=\"0\" topMargin=\"0\" marginheight=\"0\" marginwidth=\"0\">";
      echo "<BR><BR>\n";
      InsereTexto("Projeto de conclusão de curso feito por alunos do 5º ano de Engenharia Mecatrônica da Unip - Unidade Bacelar, turma diurno/fevereiro - 2001, entregue em 12 de novembro de 2001, com orientador Professor Airton Nabarrete da matéria de Projetos de Mecanismos.");
      InsereImagem("http://pmec.port5.com/mec.jpg","Mecanismo");

      ContadordePagina();

      //echo "<CENTER><FONT CLASS=\"CON\">Visitas desde Março/2004</FONT></CENTER><CENTER><TABLE bgColor=\"#FFFFFF\" CELLPADDING=0 CELLSPACING=0 WIDTH=\"20%\" BORDER=1 VALIGN=\"TOP\"><TR VALIGN=\"MIDDLE\"><TD ALIGN=\"CENTER\">\n";
      //echo "<CENTER><A HREF=\"http://www.TheCounter.com\" TARGET=\"_top\"><IMG SRC=\"http://c3.thecounter.com/id=2408793\" ALT=\"TC\" BORDER=0></A></CENTER>";
      echo "</TD></TR></TABLE></CENTER>\n";


      echo "<BR><BR>\n";
      InsereRodape();
      echo "</BODY></HTML>\n";
   }
}