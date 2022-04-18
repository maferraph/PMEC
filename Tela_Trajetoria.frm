VERSION 5.00
Begin VB.Form Tela_Trajetoria 
   AutoRedraw      =   -1  'True
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Trajatória"
   ClientHeight    =   6288
   ClientLeft      =   36
   ClientTop       =   264
   ClientWidth     =   4116
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6288
   ScaleWidth      =   4116
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox CB2 
      Height          =   288
      Left            =   0
      Style           =   2  'Dropdown List
      TabIndex        =   14
      ToolTipText     =   "Selecione o ítem que você deseja plotar o gráfico"
      Top             =   840
      Width           =   4092
   End
   Begin VB.Frame FR 
      Height          =   852
      Left            =   0
      TabIndex        =   9
      Top             =   4560
      Width           =   4092
      Begin VB.ComboBox CB_Vel 
         Height          =   288
         ItemData        =   "Tela_Trajetoria.frx":0000
         Left            =   3000
         List            =   "Tela_Trajetoria.frx":0013
         Style           =   2  'Dropdown List
         TabIndex        =   13
         Top             =   480
         Width           =   972
      End
      Begin VB.OptionButton RB_Mul 
         Caption         =   "Multiplicar velocidade escolhida por:"
         Height          =   192
         Left            =   120
         TabIndex        =   12
         Top             =   500
         Width           =   3012
      End
      Begin VB.OptionButton RB_Esc 
         Caption         =   "Usar velocidade escolhida que é:"
         Height          =   192
         Left            =   120
         TabIndex        =   10
         Top             =   240
         Width           =   2772
      End
      Begin VB.Label LB_Vel 
         AutoSize        =   -1  'True
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   192
         Left            =   2880
         TabIndex        =   11
         Top             =   240
         Width           =   60
      End
   End
   Begin VB.CommandButton BT_Simula 
      Caption         =   "Simular"
      Height          =   732
      Left            =   0
      Picture         =   "Tela_Trajetoria.frx":0038
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   5520
      Width           =   972
   End
   Begin VB.CommandButton BT_Limpar 
      Caption         =   "Limpar"
      Height          =   732
      Left            =   1560
      Picture         =   "Tela_Trajetoria.frx":0902
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   5520
      Width           =   972
   End
   Begin VB.ComboBox CB1 
      Height          =   288
      Left            =   0
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   240
      Width           =   4092
   End
   Begin VB.Timer TEMPO 
      Enabled         =   0   'False
      Left            =   0
      Top             =   4200
   End
   Begin VB.CommandButton BT_Volta 
      Caption         =   "Voltar"
      Height          =   732
      Left            =   3120
      Picture         =   "Tela_Trajetoria.frx":0D44
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   5520
      Width           =   972
   End
   Begin VB.Label LB_XMAX 
      AutoSize        =   -1  'True
      Caption         =   "0"
      ForeColor       =   &H00008000&
      Height          =   192
      Left            =   3720
      TabIndex        =   19
      Top             =   3000
      Width           =   84
   End
   Begin VB.Label LB_XMIN 
      AutoSize        =   -1  'True
      Caption         =   "0"
      ForeColor       =   &H00008000&
      Height          =   192
      Left            =   120
      TabIndex        =   18
      Top             =   3000
      Width           =   84
   End
   Begin VB.Label LB_YMIN 
      AutoSize        =   -1  'True
      Caption         =   "0"
      ForeColor       =   &H00FF0000&
      Height          =   192
      Left            =   2280
      TabIndex        =   17
      Top             =   4320
      Width           =   84
   End
   Begin VB.Label LB_YMAX 
      AutoSize        =   -1  'True
      Caption         =   "0"
      ForeColor       =   &H00FF0000&
      Height          =   192
      Left            =   2280
      TabIndex        =   16
      Top             =   1200
      Width           =   84
   End
   Begin VB.Label LB 
      AutoSize        =   -1  'True
      Caption         =   "Plotar o gráfico em função de:"
      Height          =   192
      Index           =   1
      Left            =   0
      TabIndex        =   15
      Top             =   600
      Width           =   2124
   End
   Begin VB.Label LB 
      AutoSize        =   -1  'True
      Caption         =   "Escolha o ítem da simulação do gráfico:"
      Height          =   192
      Index           =   0
      Left            =   0
      TabIndex        =   8
      Top             =   0
      Width           =   2856
   End
   Begin VB.Label LB_EY 
      AutoSize        =   -1  'True
      Caption         =   "A"
      ForeColor       =   &H00FF0000&
      Height          =   192
      Left            =   840
      TabIndex        =   7
      Top             =   1200
      Width           =   108
   End
   Begin VB.Label LB_EX 
      AutoSize        =   -1  'True
      Caption         =   "X"
      ForeColor       =   &H00008000&
      Height          =   192
      Left            =   3480
      TabIndex        =   6
      Top             =   2520
      Width           =   96
   End
   Begin VB.Line Line3 
      X1              =   2040
      X2              =   1920
      Y1              =   1200
      Y2              =   1320
   End
   Begin VB.Line Line6 
      X1              =   4080
      X2              =   3960
      Y1              =   2880
      Y2              =   3000
   End
   Begin VB.Line Line5 
      X1              =   4080
      X2              =   3960
      Y1              =   2880
      Y2              =   2760
   End
   Begin VB.Line Line4 
      X1              =   2040
      X2              =   2160
      Y1              =   1200
      Y2              =   1320
   End
   Begin VB.Line LH 
      X1              =   120
      X2              =   4080
      Y1              =   2880
      Y2              =   2880
   End
   Begin VB.Line LV 
      X1              =   2040
      X2              =   2040
      Y1              =   1200
      Y2              =   4560
   End
   Begin VB.Line LVR 
      BorderColor     =   &H00008000&
      X1              =   1200
      X2              =   1200
      Y1              =   1560
      Y2              =   2040
   End
   Begin VB.Line LHR 
      BorderColor     =   &H00FF0000&
      X1              =   960
      X2              =   1440
      Y1              =   1800
      Y2              =   1800
   End
   Begin VB.Label LB_X 
      AutoSize        =   -1  'True
      Caption         =   "X"
      ForeColor       =   &H00008000&
      Height          =   192
      Left            =   1080
      TabIndex        =   5
      Top             =   2040
      Width           =   96
   End
   Begin VB.Label LB_Y 
      AutoSize        =   -1  'True
      Caption         =   "Y"
      ForeColor       =   &H00FF0000&
      Height          =   192
      Left            =   1440
      TabIndex        =   4
      Top             =   1680
      Width           =   108
   End
End
Attribute VB_Name = "Tela_Trajetoria"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim I As Integer
Dim nNum As Integer
Dim gXPix As Single, gYPix As Single
Dim gValorX As Single, gValorY As Single
Dim gYMax As Single, gYMin As Single
Dim gXMax As Single, gXMin As Single

Private Sub BT_Limpar_Click()
    LHR.Visible = False
    LVR.Visible = False
    LB_X.Visible = False
    LB_Y.Visible = False
    Cls
End Sub
Private Sub BT_Simula_Click()
    If CB1.ListIndex = -1 Then
        MsgBox "É necessário escolher a variável que se deseja simular.", vbInformation + vbOKOnly, "Falta variável"
        CB1.SetFocus
        Exit Sub
    End If
    If CB2.ListIndex = -1 Then
        MsgBox "É necessário escolher a variável que se deseja plotar.", vbInformation + vbOKOnly, "Falta variável"
        CB2.SetFocus
        Exit Sub
    End If
    nNum = 0
    If BT_Simula.Caption = "Simular" Then
        LHR.Visible = True
        LVR.Visible = True
        LB_X.Visible = True
        LB_Y.Visible = True
        BT_Limpar_Click
        BT_Simula.Caption = "Parar"
        LB(0).Enabled = False
        LB(1).Enabled = False
        LB_Vel.Enabled = False
        CB1.Enabled = False
        CB2.Enabled = False
        BT_Limpar.Enabled = False
        BT_Volta.Enabled = False
        RB_Esc.Enabled = False
        RB_Mul.Enabled = False
        CB_Vel.Enabled = False
        Tempo.Enabled = True
    Else
        LHR.Visible = False
        LVR.Visible = False
        LB_X.Visible = False
        LB_Y.Visible = False
        BT_Simula.Caption = "Simular"
        LB(0).Enabled = True
        LB(1).Enabled = True
        LB_Vel.Enabled = True
        CB1.Enabled = True
        CB2.Enabled = True
        BT_Volta.Enabled = True
        RB_Esc.Enabled = True
        RB_Mul.Enabled = True
        CB_Vel.Enabled = True
        Tempo.Enabled = False
    End If
    gYPix = 0
End Sub
Private Sub BT_Volta_Click()
   Unload Me
End Sub
Private Sub CB1_Click()
    gYPix = 0
    gXPix = 0
End Sub
Private Sub CB2_Click()
    gYPix = 0
    gXPix = 0
End Sub
Private Sub Form_Load()
    LHR.Visible = False
    LVR.Visible = False
    LB_X.Visible = False
    LB_Y.Visible = False
    RB_Esc.Value = True
    Tempo.Enabled = False
    LB_Vel.Caption = sVAR_Xd1 & " m/s"
End Sub
Private Sub RB_Esc_Click()
    Tempo.Interval = CInt(sTempo)
    LB_Vel.Caption = sVAR_Xd1 & " m/s"
End Sub
Private Sub RB_Mul_Click()
    CB_Vel.ListIndex = 2
End Sub
Private Sub TEMPO_Timer()
    Dim iX As Integer, iY As Integer
    'EIXO Y - CB1
    If Me.Caption = "Biela Manivela 1" Then 'BM1
        If sVAR_Int >= nNum Then
            If CB1.Text = "X - Posição do êmbolo do BM1" Then
                LB_EY.Caption = "X(mm)"
                If gYPix = 0 Then ReferenciaGraficoEmY aPosicao
                gValorY = aPosicao(nNum)
            ElseIf CB1.Text = "Q1r - Ângulo Q1 em radianos" Then
                LB_EY.Caption = "Q1(rad)"
                If gYPix = 0 Then ReferenciaGraficoEmY aQ1r
                gValorY = aQ1r(nNum)
            ElseIf CB1.Text = "A1r - Ângulo A1 em radianos" Then
                LB_EY.Caption = "A1(rad)"
                If gYPix = 0 Then ReferenciaGraficoEmY aA1r
                gValorY = aA1r(nNum)
            ElseIf CB1.Text = "KA1 - Coeficiente de Velocidade de A1" Then
                LB_EY.Caption = "KA1"
                If gYPix = 0 Then ReferenciaGraficoEmY aKA1
                gValorY = aKA1(nNum)
            ElseIf CB1.Text = "LA1 - Coeficiente de Aceleração de A1" Then
                LB_EY.Caption = "LA1"
                If gYPix = 0 Then ReferenciaGraficoEmY aLA1
                gValorY = aLA1(nNum)
            ElseIf CB1.Text = "KX1 - Coeficiente de Velocidade de X" Then
                LB_EY.Caption = "KX1"
                If gYPix = 0 Then ReferenciaGraficoEmY aKX1
                gValorY = aKX1(nNum)
            ElseIf CB1.Text = "LX1 - Coeficiente de Aceleração de X" Then
                LB_EY.Caption = "LX1"
                If gYPix = 0 Then ReferenciaGraficoEmY aLX1
                gValorY = aLX1(nNum)
            ElseIf CB1.Text = "Q1g - Ângulo Q1 em graus" Then
                LB_EY.Caption = "Q1(º)"
                If gYPix = 0 Then ReferenciaGraficoEmY aQ1g
                gValorY = aQ1g(nNum)
            ElseIf CB1.Text = "Q1d - Velocidade Angular de Q1 em rad/s" Then
                LB_EY.Caption = "Q1d(rad/s)"
                If gYPix = 0 Then ReferenciaGraficoEmY aQ1d
                gValorY = aQ1d(nNum)
            ElseIf CB1.Text = "Q1dd - Aceleração Angular de Q1 em rad/s²" Then
                LB_EY.Caption = "Q1dd(rad/s²)"
                If gYPix = 0 Then ReferenciaGraficoEmY aQ1dd
                gValorY = aQ1dd(nNum)
            ElseIf CB1.Text = "A1g - Ângulo A1 em graus" Then
                LB_EY.Caption = "A1(º)"
                If gYPix = 0 Then ReferenciaGraficoEmY aA1g
                gValorY = aA1g(nNum)
            ElseIf CB1.Text = "A1d - Velocidade Angular de A1 em rad/s" Then
                LB_EY.Caption = "A1d(rad/s)"
                If gYPix = 0 Then ReferenciaGraficoEmY aA1d
                gValorY = aA1d(nNum)
            ElseIf CB1.Text = "A1dd - Aceleração Angular de A1 em rad/s²" Then
                LB_EY.Caption = "A1dd(rad/s²)"
                If gYPix = 0 Then ReferenciaGraficoEmY aA1dd
                gValorY = aA1dd(nNum)
            ElseIf CB1.Text = "Di - Posição do ponto D no plano i em relação ao ponto O1 em mm" Then
                LB_EY.Caption = "Di(mm)"
                If gYPix = 0 Then ReferenciaGraficoEmY aDi
                gValorY = aDi(nNum)
            ElseIf CB1.Text = "Dj - Posição do ponto D no plano j em relação ao ponto O1 em mm" Then
                LB_EY.Caption = "Dj(mm)"
                If gYPix = 0 Then ReferenciaGraficoEmY aDi
                gValorY = aDj(nNum)
            ElseIf CB1.Text = "Did - Velocidade do ponto D no plano i em mm/s" Then
                LB_EY.Caption = "Did(mm/s)"
                If gYPix = 0 Then ReferenciaGraficoEmY aDid
                gValorY = aDid(nNum)
            ElseIf CB1.Text = "Djd - Velocidade do ponto D no plano j em mm/s" Then
                LB_EY.Caption = "Djd(mm/s)"
                If gYPix = 0 Then ReferenciaGraficoEmY aDjd
                gValorY = aDjd(nNum)
            ElseIf CB1.Text = "Didd - Aceleração do ponto D no plano i em mm/s²" Then
                LB_EY.Caption = "Didd(mm/s²)"
                If gYPix = 0 Then ReferenciaGraficoEmY aDidd
                gValorY = aDidd(nNum)
            ElseIf CB1.Text = "Djdd - Aceleração do ponto D no plano j em mm/s²" Then
                LB_EY.Caption = "Djdd(mm/s²)"
                If gYPix = 0 Then ReferenciaGraficoEmY aDjdd
                gValorY = aDjdd(nNum)
            End If
        Else
            BT_Simula_Click
        End If
    ElseIf Me.Caption = "Quatro Barras" Then 'QB
        If sVAR_Int >= nNum Then
            If CB1.Text = "X - Posição do êmbolo do BM1" Then
                LB_EY.Caption = "X(mm)"
                If gYPix = 0 Then ReferenciaGraficoEmY aPosicao
                gValorY = aPosicao(nNum)
            ElseIf CB1.Text = "Q1r - Ângulo Q1 em radianos" Then
                LB_EY.Caption = "Q2(rad)"
                If gYPix = 0 Then ReferenciaGraficoEmY aQ2r
                gValorY = aQ2r(nNum)
            ElseIf CB1.Text = "Q2g - Ângulo Q2 em graus" Then
                LB_EY.Caption = "Q2(º)"
                If gYPix = 0 Then ReferenciaGraficoEmY aQ2g
                gValorY = aQ2g(nNum)
            ElseIf CB1.Text = "Q2d - Velocidade Angular de Q2 em rad/s" Then
                LB_EY.Caption = "Q2d(rad/s)"
                If gYPix = 0 Then ReferenciaGraficoEmY aQ2d
                gValorY = aQ2d(nNum)
            ElseIf CB1.Text = "Q2dd - Aceleração Angular de Q2 em rad/s²" Then
                LB_EY.Caption = "Q2dd(rad/s²)"
                If gYPix = 0 Then ReferenciaGraficoEmY aQ2dd
                gValorY = aQ2dd(nNum)
            ElseIf CB1.Text = "L - Distância diagonal entre barras em mm" Then
                LB_EY.Caption = "L(mm)"
                If gYPix = 0 Then ReferenciaGraficoEmY aL
                gValorY = aL(nNum)
            ElseIf CB1.Text = "Alfar - Ângulo Alfa em radianos" Then
                LB_EY.Caption = "Alfa(rad)"
                If gYPix = 0 Then ReferenciaGraficoEmY aAlfar
                gValorY = aAlfar(nNum)
            ElseIf CB1.Text = "Alfag - Ângulo Alfa em graus" Then
                LB_EY.Caption = "Alfa(º)"
                If gYPix = 0 Then ReferenciaGraficoEmY aAlfag
                gValorY = aAlfag(nNum)
            ElseIf CB1.Text = "Betar - Ângulo Beta em radianos" Then
                LB_EY.Caption = "Beta(rad)"
                If gYPix = 0 Then ReferenciaGraficoEmY aBetar
                gValorY = aBetar(nNum)
            ElseIf CB1.Text = "Betag - Ângulo Beta em graus" Then
                LB_EY.Caption = "Beta(º)"
                If gYPix = 0 Then ReferenciaGraficoEmY aBetag
                gValorY = aBetag(nNum)
            ElseIf CB1.Text = "A3g - Ângulo A3 em graus" Then
                LB_EY.Caption = "A3(º)"
                If gYPix = 0 Then ReferenciaGraficoEmY aA3g
                gValorY = aA3g(nNum)
            ElseIf CB1.Text = "A3r - Ângulo A3 em radianos" Then
                LB_EY.Caption = "A3(rad)"
                If gYPix = 0 Then ReferenciaGraficoEmY aA3r
                gValorY = aA3r(nNum)
            ElseIf CB1.Text = "KA3 - Coeficiente de Velocidade de A3" Then
                LB_EY.Caption = "KA3"
                If gYPix = 0 Then ReferenciaGraficoEmY aKA3
                gValorY = aKA3(nNum)
            ElseIf CB1.Text = "A3d - Velocidade Angular de A3 em rad/s" Then
                LB_EY.Caption = "A3d(rad/s)"
                If gYPix = 0 Then ReferenciaGraficoEmY aA3d
                gValorY = aA3d(nNum)
            ElseIf CB1.Text = "LA3 - Coeficiente de Aceleração de A3" Then
                LB_EY.Caption = "LA3"
                If gYPix = 0 Then ReferenciaGraficoEmY aLA3
                gValorY = aLA3(nNum)
            ElseIf CB1.Text = "A3dd - Aceleração Angular de A3 em rad/s²" Then
                LB_EY.Caption = "A3dd(rad/s²)"
                If gYPix = 0 Then ReferenciaGraficoEmY aA3dd
                gValorY = aA3dd(nNum)
            End If
        Else
            BT_Simula_Click
        End If
    ElseIf Me.Caption = "Conexão entre QB e BM2" Then 'QB
        If sVAR_Int >= nNum Then
            If CB1.Text = "X - Posição do êmbolo do BM1" Then
                LB_EY.Caption = "X(mm)"
                If gYPix = 0 Then ReferenciaGraficoEmY aPosicao
                gValorY = aPosicao(nNum)
            ElseIf CB1.Text = "Q1r - Ângulo Q1 em radianos" Then
                LB_EY.Caption = "H(mm)"
                If gYPix = 0 Then ReferenciaGraficoEmY aH
                gValorY = aH(nNum)
            ElseIf CB1.Text = "Hi - Posição do ponto H no plano i em relação ao ponto D em mm" Then
                LB_EY.Caption = "Hi(mm)"
                If gYPix = 0 Then ReferenciaGraficoEmY aHi
                gValorY = aHi(nNum)
            ElseIf CB1.Text = "Hj - Posição do ponto H no plano J em relação ao ponto D em mm" Then
                LB_EY.Caption = "Hj(mm)"
                If gYPix = 0 Then ReferenciaGraficoEmY aHj
                gValorY = aHj(nNum)
            ElseIf CB1.Text = "Hd - Velocidade do ponto H em mm/s" Then
                LB_EY.Caption = "Hd(mm/s)"
                If gYPix = 0 Then ReferenciaGraficoEmY aHd
                gValorY = aHd(nNum)
            ElseIf CB1.Text = "Hdd - Aceleração do ponto H em mm/s²" Then
                LB_EY.Caption = "Hdd(mm/s²)"
                If gYPix = 0 Then ReferenciaGraficoEmY aHdd
                gValorY = aHdd(nNum)
            End If
        Else
            BT_Simula_Click
        End If
    ElseIf Me.Caption = "Biela Manivela 2" Then 'QB
        If sVAR_Int >= nNum Then
            If CB1.Text = "X - Posição do êmbolo do BM1" Then
                LB_EY.Caption = "X(mm)"
                If gYPix = 0 Then ReferenciaGraficoEmY aPosicao
                gValorY = aPosicao(nNum)
            ElseIf CB1.Text = "Q1r - Ângulo Q1 em radianos" Then
                LB_EY.Caption = "W(mm)"
                If gYPix = 0 Then ReferenciaGraficoEmY aW
                gValorY = aW(nNum)
            ElseIf CB1.Text = "Wd - Velocidade do ponto H para BM2 em mm/s" Then
                LB_EY.Caption = "Wd(mm/s)"
                If gYPix = 0 Then ReferenciaGraficoEmY aWd
                gValorY = aWd(nNum)
            ElseIf CB1.Text = "Wdd - Aceleração do ponto H para BM2 em mm/s²" Then
                LB_EY.Caption = "Wdd(mm/s²)"
                If gYPix = 0 Then ReferenciaGraficoEmY aWdd
                gValorY = aWdd(nNum)
            ElseIf CB1.Text = "Ror - Ângulo Ro em radianos" Then
                LB_EY.Caption = "Ro(rad)"
                If gYPix = 0 Then ReferenciaGraficoEmY aRor
                gValorY = aRor(nNum)
            ElseIf CB1.Text = "GE - Distância diagonal entre ponto H e G em mm" Then
                LB_EY.Caption = "GE(mm)"
                If gYPix = 0 Then ReferenciaGraficoEmY aGE
                gValorY = aGE(nNum)
            ElseIf CB1.Text = "Gamar - Ângulo Gama em radianos" Then
                LB_EY.Caption = "Gama(rad)"
                If gYPix = 0 Then ReferenciaGraficoEmY aGamar
                gValorY = aGamar(nNum)
            ElseIf CB1.Text = "A4r - Ângulo A4 em radianos" Then
                LB_EY.Caption = "A4(rad)"
                If gYPix = 0 Then ReferenciaGraficoEmY aA4r
                gValorY = aA4r(nNum)
            ElseIf CB1.Text = "Q4r - Ângulo Q4 em radianos" Then
                LB_EY.Caption = "Q4(rad)"
                If gYPix = 0 Then ReferenciaGraficoEmY aQ4r
                gValorY = aQ4r(nNum)
            ElseIf CB1.Text = "KW - Coeficiente de Velocidade de W" Then
                LB_EY.Caption = "KW"
                If gYPix = 0 Then ReferenciaGraficoEmY aKW
                gValorY = aKW(nNum)
            ElseIf CB1.Text = "KA4 - Coeficiente de Velocidade de A4" Then
                LB_EY.Caption = "KA4"
                If gYPix = 0 Then ReferenciaGraficoEmY aKA4
                gValorY = aKA4(nNum)
            ElseIf CB1.Text = "Q4d - Velocidade Angular de Q4 em rad/s" Then
                LB_EY.Caption = "Q4d(rad/s)"
                If gYPix = 0 Then ReferenciaGraficoEmY aQ4d
                gValorY = aQ4d(nNum)
            ElseIf CB1.Text = "A4d - Velocidade Angular de A4 em rad/s" Then
                LB_EY.Caption = "A4d(rad/s)"
                If gYPix = 0 Then ReferenciaGraficoEmY aA4d
                gValorY = aA4d(nNum)
            ElseIf CB1.Text = "LA4 - Coeficiente de Aceleração de A4" Then
                LB_EY.Caption = "LA4"
                If gYPix = 0 Then ReferenciaGraficoEmY aLA4
                gValorY = aLA4(nNum)
            ElseIf CB1.Text = "LW - Coeficiente de Aceleração de W" Then
                LB_EY.Caption = "LW"
                If gYPix = 0 Then ReferenciaGraficoEmY aLW
                gValorY = aLW(nNum)
            ElseIf CB1.Text = "Q4dd - Aceleração Angular de Q4 em rad/s²" Then
                LB_EY.Caption = "Q4dd(rad/s²)"
                If gYPix = 0 Then ReferenciaGraficoEmY aQ4dd
                gValorY = aQ4dd(nNum)
            ElseIf CB1.Text = "A4dd - Aceleração Angular de A4 em rad/s²" Then
                LB_EY.Caption = "A4dd(rad/s²)"
                If gYPix = 0 Then ReferenciaGraficoEmY aA4dd
                gValorY = aA4dd(nNum)
            End If
        Else
            BT_Simula_Click
        End If
    End If
    'EIXO X - CB2
    If Me.Caption = "Biela Manivela 1" Then 'BM1
        If sVAR_Int >= nNum Then
            If CB2.Text = "X - Posição do êmbolo do BM1" Then
                LB_EX.Caption = "X(mm)"
                If gXPix = 0 Then ReferenciaGraficoEmX aPosicao
                gValorX = aPosicao(nNum)
            ElseIf CB2.Text = "Q1r - Ângulo Q1 em radianos" Then
                LB_EX.Caption = "Q1(rad)"
                If gXPix = 0 Then ReferenciaGraficoEmX aQ1r
                gValorX = aQ1r(nNum)
            ElseIf CB2.Text = "A1r - Ângulo A1 em radianos" Then
                LB_EX.Caption = "A1(rad)"
                If gXPix = 0 Then ReferenciaGraficoEmX aA1r
                gValorX = aA1r(nNum)
            ElseIf CB2.Text = "KA1 - Coeficiente de Velocidade de A1" Then
                LB_EX.Caption = "KA1"
                If gXPix = 0 Then ReferenciaGraficoEmX aKA1
                gValorX = aKA1(nNum)
            ElseIf CB2.Text = "LA1 - Coeficiente de Aceleração de A1" Then
                LB_EX.Caption = "LA1"
                If gXPix = 0 Then ReferenciaGraficoEmX aLA1
                gValorX = aLA1(nNum)
            ElseIf CB2.Text = "KX1 - Coeficiente de Velocidade de X" Then
                LB_EX.Caption = "KX1"
                If gXPix = 0 Then ReferenciaGraficoEmX aKX1
                gValorX = aKX1(nNum)
            ElseIf CB2.Text = "LX1 - Coeficiente de Aceleração de X" Then
                LB_EX.Caption = "LX1"
                If gXPix = 0 Then ReferenciaGraficoEmX aLX1
                gValorX = aLX1(nNum)
            ElseIf CB2.Text = "Q1g - Ângulo Q1 em graus" Then
                LB_EX.Caption = "Q1(º)"
                If gXPix = 0 Then ReferenciaGraficoEmX aQ1g
                gValorX = aQ1g(nNum)
            ElseIf CB2.Text = "Q1d - Velocidade Angular de Q1 em rad/s" Then
                LB_EX.Caption = "Q1d(rad/s)"
                If gXPix = 0 Then ReferenciaGraficoEmX aQ1d
                gValorX = aQ1d(nNum)
            ElseIf CB2.Text = "Q1dd - Aceleração Angular de Q1 em rad/s²" Then
                LB_EX.Caption = "Q1dd(rad/s²)"
                If gXPix = 0 Then ReferenciaGraficoEmX aQ1dd
                gValorX = aQ1dd(nNum)
            ElseIf CB2.Text = "A1g - Ângulo A1 em graus" Then
                LB_EX.Caption = "A1(º)"
                If gXPix = 0 Then ReferenciaGraficoEmX aA1g
                gValorX = aA1g(nNum)
            ElseIf CB2.Text = "A1d - Velocidade Angular de A1 em rad/s" Then
                LB_EX.Caption = "A1d(rad/s)"
                If gXPix = 0 Then ReferenciaGraficoEmX aA1d
                gValorX = aA1d(nNum)
            ElseIf CB2.Text = "A1dd - Aceleração Angular de A1 em rad/s²" Then
                LB_EX.Caption = "A1dd(rad/s²)"
                If gXPix = 0 Then ReferenciaGraficoEmX aA1dd
                gValorX = aA1dd(nNum)
            ElseIf CB2.Text = "Di - Posição do ponto D no plano i em relação ao ponto O1 em mm" Then
                LB_EX.Caption = "Di(mm)"
                If gXPix = 0 Then ReferenciaGraficoEmX aDi
                gValorX = aDi(nNum)
            ElseIf CB2.Text = "Dj - Posição do ponto D no plano j em relação ao ponto O1 em mm" Then
                LB_EX.Caption = "Dj(mm)"
                If gXPix = 0 Then ReferenciaGraficoEmX aDi
                gValorX = aDj(nNum)
            ElseIf CB2.Text = "Did - Velocidade do ponto D no plano i em mm/s" Then
                LB_EX.Caption = "Did(mm/s)"
                If gXPix = 0 Then ReferenciaGraficoEmX aDid
                gValorX = aDid(nNum)
            ElseIf CB2.Text = "Djd - Velocidade do ponto D no plano j em mm/s" Then
                LB_EX.Caption = "Djd(mm/s)"
                If gXPix = 0 Then ReferenciaGraficoEmX aDjd
                gValorX = aDjd(nNum)
            ElseIf CB2.Text = "Didd - Aceleração do ponto D no plano i em mm/s²" Then
                LB_EX.Caption = "Didd(mm/s²)"
                If gXPix = 0 Then ReferenciaGraficoEmX aDidd
                gValorX = aDidd(nNum)
            ElseIf CB2.Text = "Djdd - Aceleração do ponto D no plano j em mm/s²" Then
                LB_EX.Caption = "Djdd(mm/s²)"
                If gXPix = 0 Then ReferenciaGraficoEmX aDjdd
                gValorX = aDjdd(nNum)
            End If
        Else
            BT_Simula_Click
        End If
    ElseIf Me.Caption = "Quatro Barras" Then 'QB
        If sVAR_Int >= nNum Then
            If CB2.Text = "X - Posição do êmbolo do BM1" Then
                LB_EX.Caption = "X(mm)"
                If gXPix = 0 Then ReferenciaGraficoEmX aPosicao
                gValorX = aPosicao(nNum)
            ElseIf CB2.Text = "Q1r - Ângulo Q1 em radianos" Then
                LB_EX.Caption = "Q2(rad)"
                If gXPix = 0 Then ReferenciaGraficoEmX aQ2r
                gValorX = aQ2r(nNum)
            ElseIf CB2.Text = "Q2g - Ângulo Q2 em graus" Then
                LB_EX.Caption = "Q2(º)"
                If gXPix = 0 Then ReferenciaGraficoEmX aQ2g
                gValorX = aQ2g(nNum)
            ElseIf CB2.Text = "Q2d - Velocidade Angular de Q2 em rad/s" Then
                LB_EX.Caption = "Q2d(rad/s)"
                If gXPix = 0 Then ReferenciaGraficoEmX aQ2d
                gValorX = aQ2d(nNum)
            ElseIf CB2.Text = "Q2dd - Aceleração Angular de Q2 em rad/s²" Then
                LB_EX.Caption = "Q2dd(rad/s²)"
                If gXPix = 0 Then ReferenciaGraficoEmX aQ2dd
                gValorX = aQ2dd(nNum)
            ElseIf CB2.Text = "L - Distância diagonal entre barras em mm" Then
                LB_EX.Caption = "L(mm)"
                If gXPix = 0 Then ReferenciaGraficoEmX aL
                gValorX = aL(nNum)
            ElseIf CB2.Text = "Alfar - Ângulo Alfa em radianos" Then
                LB_EX.Caption = "Alfa(rad)"
                If gXPix = 0 Then ReferenciaGraficoEmX aAlfar
                gValorX = aAlfar(nNum)
            ElseIf CB2.Text = "Alfag - Ângulo Alfa em graus" Then
                LB_EX.Caption = "Alfa(º)"
                If gXPix = 0 Then ReferenciaGraficoEmX aAlfag
                gValorX = aAlfag(nNum)
            ElseIf CB2.Text = "Betar - Ângulo Beta em radianos" Then
                LB_EX.Caption = "Beta(rad)"
                If gXPix = 0 Then ReferenciaGraficoEmX aBetar
                gValorX = aBetar(nNum)
            ElseIf CB2.Text = "Betag - Ângulo Beta em graus" Then
                LB_EX.Caption = "Beta(º)"
                If gXPix = 0 Then ReferenciaGraficoEmX aBetag
                gValorX = aBetag(nNum)
            ElseIf CB2.Text = "A3g - Ângulo A3 em graus" Then
                LB_EX.Caption = "A3(º)"
                If gXPix = 0 Then ReferenciaGraficoEmX aA3g
                gValorX = aA3g(nNum)
            ElseIf CB2.Text = "A3r - Ângulo A3 em radianos" Then
                LB_EX.Caption = "A3(rad)"
                If gXPix = 0 Then ReferenciaGraficoEmX aA3r
                gValorX = aA3r(nNum)
            ElseIf CB2.Text = "KA3 - Coeficiente de Velocidade de A3" Then
                LB_EX.Caption = "KA3"
                If gXPix = 0 Then ReferenciaGraficoEmX aKA3
                gValorX = aKA3(nNum)
            ElseIf CB2.Text = "A3d - Velocidade Angular de A3 em rad/s" Then
                LB_EX.Caption = "A3d(rad/s)"
                If gXPix = 0 Then ReferenciaGraficoEmX aA3d
                gValorX = aA3d(nNum)
            ElseIf CB2.Text = "LA3 - Coeficiente de Aceleração de A3" Then
                LB_EX.Caption = "LA3"
                If gXPix = 0 Then ReferenciaGraficoEmX aLA3
                gValorX = aLA3(nNum)
            ElseIf CB2.Text = "A3dd - Aceleração Angular de A3 em rad/s²" Then
                LB_EX.Caption = "A3dd(rad/s²)"
                If gXPix = 0 Then ReferenciaGraficoEmX aA3dd
                gValorX = aA3dd(nNum)
            End If
        Else
            BT_Simula_Click
        End If
    ElseIf Me.Caption = "Conexão entre QB e BM2" Then 'QB
        If sVAR_Int >= nNum Then
            If CB2.Text = "X - Posição do êmbolo do BM1" Then
                LB_EX.Caption = "X(mm)"
                If gXPix = 0 Then ReferenciaGraficoEmX aPosicao
                gValorX = aPosicao(nNum)
            ElseIf CB2.Text = "Q1r - Ângulo Q1 em radianos" Then
                LB_EX.Caption = "H(mm)"
                If gXPix = 0 Then ReferenciaGraficoEmX aH
                gValorX = aH(nNum)
            ElseIf CB2.Text = "Hi - Posição do ponto H no plano i em relação ao ponto D em mm" Then
                LB_EX.Caption = "Hi(mm)"
                If gXPix = 0 Then ReferenciaGraficoEmX aHi
                gValorX = aHi(nNum)
            ElseIf CB2.Text = "Hj - Posição do ponto H no plano J em relação ao ponto D em mm" Then
                LB_EX.Caption = "Hj(mm)"
                If gXPix = 0 Then ReferenciaGraficoEmX aHj
                gValorX = aHj(nNum)
            ElseIf CB2.Text = "Hd - Velocidade do ponto H em mm/s" Then
                LB_EX.Caption = "Hd(mm/s)"
                If gXPix = 0 Then ReferenciaGraficoEmX aHd
                gValorX = aHd(nNum)
            ElseIf CB2.Text = "Hdd - Aceleração do ponto H em mm/s²" Then
                LB_EX.Caption = "Hdd(mm/s²)"
                If gXPix = 0 Then ReferenciaGraficoEmX aHdd
                gValorX = aHdd(nNum)
            End If
        Else
            BT_Simula_Click
        End If
    ElseIf Me.Caption = "Biela Manivela 2" Then 'QB
        If sVAR_Int >= nNum Then
            If CB2.Text = "X - Posição do êmbolo do BM1" Then
                LB_EX.Caption = "X(mm)"
                If gXPix = 0 Then ReferenciaGraficoEmX aPosicao
                gValorX = aPosicao(nNum)
            ElseIf CB2.Text = "Q1r - Ângulo Q1 em radianos" Then
                LB_EX.Caption = "W(mm)"
                If gXPix = 0 Then ReferenciaGraficoEmX aW
                gValorX = aW(nNum)
            ElseIf CB2.Text = "Wd - Velocidade do ponto H para BM2 em mm/s" Then
                LB_EX.Caption = "Wd(mm/s)"
                If gXPix = 0 Then ReferenciaGraficoEmX aWd
                gValorX = aWd(nNum)
            ElseIf CB2.Text = "Wdd - Aceleração do ponto H para BM2 em mm/s²" Then
                LB_EX.Caption = "Wdd(mm/s²)"
                If gXPix = 0 Then ReferenciaGraficoEmX aWdd
                gValorX = aWdd(nNum)
            ElseIf CB2.Text = "Ror - Ângulo Ro em radianos" Then
                LB_EX.Caption = "Ro(rad)"
                If gXPix = 0 Then ReferenciaGraficoEmX aRor
                gValorX = aRor(nNum)
            ElseIf CB2.Text = "GE - Distância diagonal entre ponto H e G em mm" Then
                LB_EX.Caption = "GE(mm)"
                If gXPix = 0 Then ReferenciaGraficoEmX aGE
                gValorX = aGE(nNum)
            ElseIf CB2.Text = "Gamar - Ângulo Gama em radianos" Then
                LB_EX.Caption = "Gama(rad)"
                If gXPix = 0 Then ReferenciaGraficoEmX aGamar
                gValorX = aGamar(nNum)
            ElseIf CB2.Text = "A4r - Ângulo A4 em radianos" Then
                LB_EX.Caption = "A4(rad)"
                If gXPix = 0 Then ReferenciaGraficoEmX aA4r
                gValorX = aA4r(nNum)
            ElseIf CB2.Text = "Q4r - Ângulo Q4 em radianos" Then
                LB_EX.Caption = "Q4(rad)"
                If gXPix = 0 Then ReferenciaGraficoEmX aQ4r
                gValorX = aQ4r(nNum)
            ElseIf CB2.Text = "KW - Coeficiente de Velocidade de W" Then
                LB_EX.Caption = "KW"
                If gXPix = 0 Then ReferenciaGraficoEmX aKW
                gValorX = aKW(nNum)
            ElseIf CB2.Text = "KA4 - Coeficiente de Velocidade de A4" Then
                LB_EX.Caption = "KA4"
                If gXPix = 0 Then ReferenciaGraficoEmX aKA4
                gValorX = aKA4(nNum)
            ElseIf CB2.Text = "Q4d - Velocidade Angular de Q4 em rad/s" Then
                LB_EX.Caption = "Q4d(rad/s)"
                If gXPix = 0 Then ReferenciaGraficoEmX aQ4d
                gValorX = aQ4d(nNum)
            ElseIf CB2.Text = "A4d - Velocidade Angular de A4 em rad/s" Then
                LB_EX.Caption = "A4d(rad/s)"
                If gXPix = 0 Then ReferenciaGraficoEmX aA4d
                gValorX = aA4d(nNum)
            ElseIf CB2.Text = "LA4 - Coeficiente de Aceleração de A4" Then
                LB_EX.Caption = "LA4"
                If gXPix = 0 Then ReferenciaGraficoEmX aLA4
                gValorX = aLA4(nNum)
            ElseIf CB2.Text = "LW - Coeficiente de Aceleração de W" Then
                LB_EX.Caption = "LW"
                If gXPix = 0 Then ReferenciaGraficoEmX aLW
                gValorX = aLW(nNum)
            ElseIf CB2.Text = "Q4dd - Aceleração Angular de Q4 em rad/s²" Then
                LB_EX.Caption = "Q4dd(rad/s²)"
                If gXPix = 0 Then ReferenciaGraficoEmX aQ4dd
                gValorX = aQ4dd(nNum)
            ElseIf CB2.Text = "A4dd - Aceleração Angular de A4 em rad/s²" Then
                LB_EX.Caption = "A4dd(rad/s²)"
                If gXPix = 0 Then ReferenciaGraficoEmX aA4dd
                gValorX = aA4dd(nNum)
            End If
        Else
            BT_Simula_Click
        End If
    End If
    'Plota gráfico
    iX = PegaPosicao(gValorX, 0)
    iY = PegaPosicao(gValorY, 1)
    PosicionaLR gValorX, gValorY, iX, iY
    Me.PSet (iX, iY), QBColor(12)
    nNum = nNum + 1
End Sub


'**********************
' FUNCOES PARA GRAFICOS
'**********************
Private Sub ReferenciaGraficoEmY(aA As Variant)
    For I = 0 To sVAR_Int
        If I = 0 Then
            gYMax = aA(I)
            gYMin = aA(I)
        Else
            If aA(I) > gYMax Then gYMax = aA(I)
            If aA(I) < gYMin Then gYMin = aA(I)
        End If
    Next I
    If gYMax > 0 Then 'MAX POSITIVO
        If gYMax >= Abs(gYMin) Then
            LB_YMAX.Caption = gYMax
            LB_YMIN.Caption = -(gYMax)
        Else
            If gYMin > 0 Then
                LB_YMAX.Caption = Abs(gYMin)
                LB_YMIN.Caption = -(gYMin)
            Else
                LB_YMAX.Caption = Abs(gYMin)
                LB_YMIN.Caption = gYMin
            End If
        End If
    Else
        If Abs(gYMax) >= Abs(gYMin) Then
            LB_YMAX.Caption = Abs(gYMax)
            LB_YMIN.Caption = gYMax
        Else
            If gYMin > 0 Then
                LB_YMAX.Caption = Abs(gYMin)
                LB_YMIN.Caption = -(gYMin)
            Else
                LB_YMAX.Caption = Abs(gYMin)
                LB_YMIN.Caption = gYMin
            End If
        End If
    End If
    'determina qts. twips por unidade tem o eixo
    gYPix = Abs(LV.Y2 - LV.Y1) / (CDbl(LB_YMAX.Caption) * 2)
End Sub
Private Sub ReferenciaGraficoEmX(aA As Variant)
    For I = 0 To sVAR_Int
        If I = 0 Then
            gXMax = aA(I)
            gXMin = aA(I)
        Else
            If aA(I) > gXMax Then gXMax = aA(I)
            If aA(I) < gXMin Then gXMin = aA(I)
        End If
    Next I
    If gXMax > 0 Then 'MAX POSITIVO
        If gXMax >= Abs(gXMin) Then
            LB_XMAX.Caption = gXMax
            LB_XMIN.Caption = -(gXMax)
        Else
            If gXMin > 0 Then
                LB_XMAX.Caption = Abs(gXMin)
                LB_XMIN.Caption = -(gXMin)
            Else
                LB_XMAX.Caption = Abs(gXMin)
                LB_XMIN.Caption = gXMin
            End If
        End If
    Else
        If Abs(gXMax) >= Abs(gXMin) Then
            LB_XMAX.Caption = Abs(gXMax)
            LB_XMIN.Caption = gXMax
        Else
            If gXMin > 0 Then
                LB_XMAX.Caption = Abs(gXMin)
                LB_XMIN.Caption = -(gXMin)
            Else
                LB_XMAX.Caption = Abs(gXMin)
                LB_XMIN.Caption = gXMin
            End If
        End If
    End If
    'determina qts. twips por unidade tem o eixo
    gXPix = Abs(LH.X2 - LH.X1) / (CDbl(LB_XMAX.Caption) * 2)
End Sub
Private Function PegaPosicao(Valor As Single, Tipo As Integer) As Integer
    Dim sTmp As Single
    If Tipo = 0 Then 'H
        If Valor > 0 Then
            sTmp = CInt(Valor * gXPix) + LV.X1
        Else
            sTmp = LV.X1 - CInt(Abs(Valor) * gXPix)
        End If
    Else 'V
        If Valor > 0 Then
            sTmp = LH.Y2 - CInt(Valor * gYPix)
        Else
            sTmp = LH.Y2 + CInt(Abs(Valor) * gYPix)
        End If
    End If
    PegaPosicao = CInt(sTmp)
End Function
Private Sub PosicionaLR(iX As Single, iY As Single, iXR As Integer, iYR As Integer)
    LHR.Visible = True
    LVR.Visible = True
    LB_X.Visible = True
    LB_Y.Visible = True
    LHR.X1 = iXR - 240
    LHR.X2 = iXR + 240
    LHR.Y1 = iYR
    LHR.Y2 = iYR
    LVR.X1 = iXR
    LVR.X2 = iXR
    LVR.Y1 = iYR - 240
    LVR.Y2 = iYR + 240
    LB_X.Caption = iX
    LB_Y.Caption = iY
    LB_X.Left = LHR.X2 + 50
    LB_X.Top = iYR
    LB_Y.Left = iXR
    LB_Y.Top = LVR.Y2 + 50
End Sub
