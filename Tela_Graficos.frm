VERSION 5.00
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Begin VB.Form Tela_Graficos 
   AutoRedraw      =   -1  'True
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Gráficos"
   ClientHeight    =   4968
   ClientLeft      =   36
   ClientTop       =   264
   ClientWidth     =   4116
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   NegotiateMenus  =   0   'False
   Picture         =   "Tela_Graficos.frx":0000
   ScaleHeight     =   4968
   ScaleWidth      =   4116
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin MSChart20Lib.MSChart CHART 
      Height          =   3372
      Left            =   0
      OleObjectBlob   =   "Tela_Graficos.frx":0342
      TabIndex        =   5
      TabStop         =   0   'False
      Top             =   600
      Width           =   4092
   End
   Begin VB.CommandButton BT_Volta 
      Caption         =   "Voltar"
      Height          =   732
      Left            =   2880
      Picture         =   "Tela_Graficos.frx":1E19B
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   4200
      Width           =   972
   End
   Begin VB.ComboBox CB 
      Height          =   288
      Left            =   0
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   240
      Width           =   4092
   End
   Begin VB.CommandButton BT_Limpar 
      Caption         =   "Limpar"
      Height          =   732
      Left            =   1560
      Picture         =   "Tela_Graficos.frx":1E4A5
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   4200
      Width           =   972
   End
   Begin VB.CommandButton BT_Imprimir 
      Caption         =   "Imprimir"
      Height          =   732
      Left            =   240
      Picture         =   "Tela_Graficos.frx":1E8E7
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   4200
      Width           =   972
   End
   Begin VB.Label LB 
      AutoSize        =   -1  'True
      Caption         =   "Escolha o ítem da simulação do gráfico:"
      Height          =   192
      Index           =   0
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   2856
   End
End
Attribute VB_Name = "Tela_Graficos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim I As Integer
Private Sub BT_Limpar_Click()
    BT_Imprimir.Enabled = False
End Sub
Private Sub BT_Volta_Click()
   Unload Me
End Sub
Private Sub CB_Change()
    CB_Click
End Sub
Private Sub CB_Click()
    On Error Resume Next
    Dim vTmp As Variant
    Dim aDados(3, 360) As Single
    For I = 0 To sVAR_Int
        'VETOR DE DADOS
        aDados(1, I) = 0
        aDados(2, I) = aPosicao(I)
        'Variaveis
        If CB.Text = "Q1r - Ângulo Q1 em radianos" Then aDados(3, I) = aQ1r(I)
        If CB.Text = "A1r - Ângulo A1 em radianos" Then aDados(3, I) = aA1r(I)
        If CB.Text = "KA1 - Coeficiente de Velocidade de A1" Then aDados(3, I) = aKA1(I)
        If CB.Text = "LA1 - Coeficiente de Aceleração de A1" Then aDados(3, I) = aLA1(I)
        If CB.Text = "KX1 - Coeficiente de Velocidade de X" Then aDados(3, I) = aKX1(I)
        If CB.Text = "LX1 - Coeficiente de Aceleração de X" Then aDados(3, I) = aLX1(I)
        If CB.Text = "Q1g - Ângulo Q1 em graus" Then aDados(3, I) = aQ1g(I)
        If CB.Text = "Q1d - Velocidade Angular de Q1 em rad/s" Then aDados(3, I) = aQ1d(I)
        If CB.Text = "Q1dd - Aceleração Angular de Q1 em rad/s²" Then aDados(3, I) = aQ1dd(I)
        If CB.Text = "A1g - Ângulo A1 em graus" Then aDados(3, I) = aA1g(I)
        If CB.Text = "A1d - Velocidade Angular de A1 em rad/s" Then aDados(3, I) = aA1d(I)
        If CB.Text = "A1dd - Aceleração Angular de A1 em rad/s²" Then aDados(3, I) = aA1dd(I)
        If CB.Text = "Di - Posição do ponto D no plano i em relação ao ponto O1 em mm" Then aDados(3, I) = aDi(I)
        If CB.Text = "Dj - Posição do ponto D no plano j em relação ao ponto O1 em mm" Then aDados(3, I) = aDj(I)
        If CB.Text = "Did - Velocidade do ponto D no plano i em mm/s" Then aDados(3, I) = aDid(I)
        If CB.Text = "Djd - Velocidade do ponto D no plano j em mm/s" Then aDados(3, I) = aDjd(I)
        If CB.Text = "Didd - Aceleração do ponto D no plano i em mm/s²" Then aDados(3, I) = aDidd(I)
        If CB.Text = "Djdd - Aceleração do ponto D no plano j em mm/s²" Then aDados(3, I) = aDjdd(I)
    Next I
    'Monta grafico
    CHART.ChartData = aDados
End Sub
Private Sub Form_Load()
    BT_Imprimir.Enabled = False
End Sub

