<?php

include('geral.php');

if(strlen($download) == 0 )
{

InsereCabecalho("");
echo "<BODY bgColor=\"#FFFFFF\" leftMargin=\"0\" topMargin=\"0\" marginheight=\"0\" marginwidth=\"0\">";

echo "<BR>";
echo "<FONT CLASS=\"FT\"><CENTER>UNIP – Universidade Paulista</CENTER></FONT>";
echo "<FONT CLASS=\"FS\"><CENTER>Unidade Bacelar</CENTER></FONT>";
echo "<FONT CLASS=\"FS\"><CENTER>ICET – Instituto de Ciências Exatas e Tecnologia</CENTER></FONT>";
echo "<BR><BR>";
echo "<FONT CLASS=\"FT\"><CENTER>PROJETO DE MECANISMOS 2001</CENTER></FONT>";
echo "<FONT CLASS=\"FS\"><CENTER>Professor Airton Nabarrete</CENTER></FONT>";
echo "<FONT CLASS=\"FS\"><CENTER>5º Engenharia Mecatrônica - Turma 2001</CENTER></FONT>";
echo "<BR><BR>";
echo "<TABLE cellPadding=0 cellSpacing=0 CLASS=\"TabNomes\" WIDTH=\"100%\" VALIGN=\"TOP\"><TBODY>";
?>
<TR>
    <TD>
        <CENTER><IMG SRC="mau.jpg" BORDER="0"></CENTER>
        <CENTER><FONT CLASS="FA">Maurício Fernandes Raphael</FONT></CENTER>
        <CENTER><FONT CLASS="FA"><A HREF="mailto:mauricio@projetodemecanismos.port5.com">mauricio@projetodemecanismos.port5.com</A></FONT></CENTER>
        <CENTER><FONT CLASS="FA">RA 091.495-9</FONT></CENTER><P>
    </TD>
    <TD>
        <CENTER><IMG SRC="fil.jpg" ALIGN="Middle" BORDER="0"></CENTER>
        <CENTER><FONT CLASS="FA">Ricardo de Almeida Filó</FONT></CENTER>
        <CENTER><FONT CLASS="FA"><A HREF="mailto:ricardo@projetodemecanismos.port5.com">ricardo@projetodemecanismos.port5.com</A></FONT></CENTER>
        <CENTER><FONT CLASS="FA">RA 090.071-0</FONT><P>
    </TD>
</TR>
<TR>
    <TD>
        <CENTER><IMG SRC="dan.jpg" BORDER="0"></CENTER>
        <CENTER><FONT CLASS="FA">Daniel Savoy</FONT></CENTER>
        <CENTER><FONT CLASS="FA"><A HREF="mailto:daniel@projetodemecanismos.port5.com">daniel@projetodemecanismos.port5.com</A></FONT></CENTER>
        <CENTER><FONT CLASS="FA">RA 118.634-5</FONT></CENTER><P>
    </TD>
    <TD>
        <CENTER><IMG SRC="gus.jpg" BORDER="0"></CENTER>
        <CENTER><FONT CLASS="FA">Gustavo Bronstrup Bonanno</FONT></CENTER>
        <CENTER><FONT CLASS="FA"><A HREF="mailto:gustavo@projetodemecanismos.port5.com">gustavo@projetodemecanismos.port5.com</A></FONT></CENTER>
        <CENTER><FONT CLASS="FA">RA 091.262-0</FONT></CENTER><P>
    </TD>
</TR>
<TR>
    <TD>
        <CENTER><IMG SRC="fer.jpg" BORDER="0"></CENTER>
        <CENTER><FONT CLASS="FA">Fernando Frasson Giusti</FONT></CENTER>
        <CENTER><FONT CLASS="FA"><A HREF="mailto:fernando@projetodemecanismos.port5.com">fernando@projetodemecanismos.port5.com</A></FONT></CENTER>
        <CENTER><FONT CLASS="FA">RA 072.993-0</FONT></CENTER><P>
    </TD>
    <TD>
        <CENTER><IMG SRC="edu.jpg" BORDER="0"></CENTER>
        <CENTER><FONT CLASS="FA">Eduardo Fernando Bento Barbosa</FONT></CENTER>
        <CENTER><FONT CLASS="FA"><A HREF="mailto:eduardo@projetodemecanismos.port5.com">eduardo@projetodemecanismos.port5.com</A></FONT></CENTER>
        <CENTER><FONT CLASS="FA">RA 058.760-5</FONT></CENTER><P>
    </TD>
</TR>
</TBODY></TABLE>

<BR>
<CENTER><IMG SRC="gruepro.jpg" BORDER="0"></CENTER>
<CENTER><FONT CLASS="FA">Grupo e Professor no dia da apresentação</FONT></CENTER>
<BR>
<FONT CLASS="FT">Agradecimentos:</FONT><BR>
<FONT CLASS="FX">- Professor Airton Nabarrete</FONT><BR>
<FONT CLASS="FX">- Festo Automação</FONT><BR>
<FONT CLASS="FX"><A HREF="http://www.conesteel.com.br" TARGET="_new" >- Conesteel Válvulas e Conexões Industriais Ltda.</A></FONT><BR>
<FONT CLASS="FX">- Integral S/A Indústria e Comércio - Antonio Duarte Ramos e Adrien Franchon</FONT><BR>
<FONT CLASS="FX">- Amauri José Savoy</FONT><BR>
<BR>
<FONT CLASS="FT">Outros trabalhos do grupo:</FONT><BR>
<BR>
<FONT CLASS="FX">- Projeto de Mecanismos</FONT><BR>
<A HREF="http://projetodemecanismos.port5.com" TARGET="_new" >&nbsp;&nbsp;http://projetodemecanismos.port5.com</A>
<BR><BR>
<FONT CLASS="FX">- Projeto de Sistemas Térmicos</FONT><BR>
<A HREF="http://termoacumulacao.port5.com" TARGET="_new" >&nbsp;&nbsp;http://termoacumulacao.port5.com</A>
<BR><BR>
<FONT CLASS="FX">- Projeto de Instrumentação</FONT><BR>
<A HREF="http://www.instrumentacao.port5.com" TARGET="_new" >&nbsp;&nbsp;http://www.instrumentacao.port5.com</A>
<BR><BR>
<FONT CLASS="FX">- Projeto de Elementos de Construção de Máquinas</FONT><BR>
<A HREF="http://www.projetoecm2000.cjb.net" TARGET="_new" >&nbsp;&nbsp;http://www.projetoecm2000.cjb.net</A>

<?php
echo "<BR><BR>\n";
InsereRodape();
?>

</BODY></HTML>

<?php
}
else
{
   if($download == "tra" )
   {
      $tmp = Contador("tra");
      $file='http://termoacumulacao.port5.com/tra.txt';
      Header ("Content-Type: application/pdf");
      Header ("Content-Length: ".filesize($file));
      Header ("Content-Disposition: attachment; filename=$file");
      header ("Pragma: no-cache");
      header ("Expires: 0");
   }
   elseif($download == "apr" )
   {
      $tmp = Contador("apr");
      $file='http://termoacumulacao.port5.com/st_apre.pdf';
      Header ("Content-Type: application/pdf");
      Header ("Content-Length: ".filesize($file));
      Header ("Content-Disposition: attachment; filename=$file");
      header ("Pragma: no-cache");
      header ("Expires: 0");
   }
}