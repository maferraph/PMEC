//Funções Javascript usadas pelas páginas do Projeto de Mecanismos

function BT_ValorPadrao_onclick()
{
   document.Formulario_Calculos.TXT_Curso.value = 300;
   document.Formulario_Calculos.TXT_Interacoes.value = 50;
   document.Formulario_Calculos.TXT_XdBM1.value = 1;
   document.Formulario_Calculos.TXT_XddBM1.value = 0;
   document.Formulario_Calculos.TXT_CompBiela1.value = 100;
   document.Formulario_Calculos.TXT_C2.value = 100;
   document.Formulario_Calculos.TXT_DH.value = 33;
   document.Formulario_Calculos.TXT_CB2.value = 50;
   document.Formulario_Calculos.TXT_DF.value = 12;
}

function ValidaFormulario()
{
   //testa se nao foi digitado nada
   var msgerro = 'É necessário preencher todos os campos para ser possível fazer os cálculos !';
   if(document.Formulario_Calculos.TXT_Curso.value == "")
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_Curso.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_Interacoes.value == "")
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_Interacoes.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_XdBM1.value == "")
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_XdBM1.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_XddBM1.value == "")
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_XddBM1.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_CompBiela1.value == "")
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_CompBiela1.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_C2.value == "")
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_C2.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_DH.value == "")
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_DH.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_CB2.value == "")
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_CB2.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_DF.value == "")
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_DF.focus()
      return false;
   }
   //teste se nao e um numero
   var msgerro = 'É necessário preencher um número válido para ser possível fazer os cálculos !';
   if(isNaN(document.Formulario_Calculos.TXT_Curso.value) == true)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_Curso.focus()
      return false;
   }
   if(isNaN(document.Formulario_Calculos.TXT_Interacoes.value) == true)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_Interacoes.focus()
      return false;
   }
   if(isNaN(document.Formulario_Calculos.TXT_XdBM1.value) == true)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_XdBM1.focus()
      return false;
   }
   if(isNaN(document.Formulario_Calculos.TXT_XddBM1.value) == true)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_XddBM1.focus()
      return false;
   }
   if(isNaN(document.Formulario_Calculos.TXT_CompBiela1.value) == true)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_CompBiela1.focus()
      return false;
   }
   if(isNaN(document.Formulario_Calculos.TXT_C2.value) == true)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_C2.focus()
      return false;
   }
   if(isNaN(document.Formulario_Calculos.TXT_DH.value) == true)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_DH.focus()
      return false;
   }
   if(isNaN(document.Formulario_Calculos.TXT_CB2.value) == true)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_CB2.focus()
      return false;
   }
   if(isNaN(document.Formulario_Calculos.TXT_DF.value) == true)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_DF.focus()
      return false;
   }

   //testa se é menor que zero
   var msgerro = 'É necessário preencher um número maior que ZERO para ser possível fazer os cálculos !';
   if(document.Formulario_Calculos.TXT_Curso.value <= 0)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_Curso.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_Interacoes.value <= 0)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_Interacoes.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_XdBM1.value <= 0)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_XdBM1.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_CompBiela1.value <= 0)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_CompBiela1.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_C2.value <= 0)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_C2.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_DH.value <= 0)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_DH.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_CB2.value <= 0)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_CB2.focus()
      return false;
   }
   if(document.Formulario_Calculos.TXT_DF.value <= 0)
   {
      alert(msgerro);
      document.Formulario_Calculos.TXT_DF.focus()
      return false;
   }
   //testa condicoes

   return true;
}


function BarraStatus(NOME)
{
   window.status=NOME;
   return true;
}

function click(e)
{
   var msginst = 'Projeto de Mecanismos - UNIP';
   if(document.all)
   {
      if(event.button==2||event.button==3)
      {
         alert(msginst);
         return false;
      }
   }
   if(document.layers)
   {
      if(e.which==3)
      {
         alert(msginst);
         return false;
      }
   }
}

if(document.layers)
{
   document.captureEvents(Event.MOUSEDOWN);
}

document.onmousedown=click;