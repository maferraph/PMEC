VERSION 5.00
Begin VB.UserControl CT_Pmec 
   BackColor       =   &H00FFFFFF&
   ClientHeight    =   4728
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3996
   ScaleHeight     =   4728
   ScaleWidth      =   3996
   Begin VB.Frame FR_BM2 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      Caption         =   "Biela-Manivela 2 (BM2):"
      ForeColor       =   &H80000008&
      Height          =   852
      Left            =   2040
      TabIndex        =   22
      Top             =   960
      Width           =   1932
      Begin VB.TextBox TXT_DF 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   288
         Left            =   1080
         TabIndex        =   7
         ToolTipText     =   "Dist�ncia entre o pino F e o centro do rolamento (mm)"
         Top             =   480
         Width           =   732
      End
      Begin VB.TextBox TXT_CB2 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   288
         Left            =   120
         TabIndex        =   6
         ToolTipText     =   "Comprimento da biela (mm)"
         Top             =   480
         Width           =   732
      End
      Begin VB.Label LB 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "DF:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   192
         Index           =   5
         Left            =   1080
         TabIndex        =   24
         ToolTipText     =   "Dist�ncia entre o pino F e o centro do rolamento (mm)"
         Top             =   240
         Width           =   300
      End
      Begin VB.Label LB 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "CB2:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   192
         Index           =   4
         Left            =   120
         TabIndex        =   23
         ToolTipText     =   "Comprimento da biela (mm)"
         Top             =   240
         Width           =   396
      End
   End
   Begin VB.Frame FR_QB 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      Caption         =   "Quatro-Barras (QB):"
      ForeColor       =   &H80000008&
      Height          =   852
      Left            =   0
      TabIndex        =   19
      Top             =   960
      Width           =   1932
      Begin VB.TextBox TXT_C2 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   288
         Left            =   120
         TabIndex        =   4
         ToolTipText     =   "Dist�ncia entre Barras (mm)"
         Top             =   480
         Width           =   732
      End
      Begin VB.TextBox TXT_DH 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   288
         Left            =   1080
         TabIndex        =   5
         ToolTipText     =   "Dist�ncia do ponto D ao H (mm)"
         Top             =   480
         Width           =   732
      End
      Begin VB.Label LB 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "C2:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   192
         Index           =   7
         Left            =   120
         TabIndex        =   21
         ToolTipText     =   "Dist�ncia entre Barras (mm)"
         Top             =   240
         Width           =   276
      End
      Begin VB.Label LB 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "DH:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   192
         Index           =   6
         Left            =   1080
         TabIndex        =   20
         ToolTipText     =   "Dist�ncia do ponto D ao H (mm)"
         Top             =   240
         Width           =   324
      End
   End
   Begin VB.Frame FR_BM1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      Caption         =   "Biela-Manivela 1 (BM1):"
      ForeColor       =   &H00000000&
      Height          =   852
      Left            =   0
      TabIndex        =   14
      Top             =   0
      Width           =   3972
      Begin VB.TextBox TXT_CB1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   288
         Left            =   3120
         TabIndex        =   3
         ToolTipText     =   "Comprimento da biela/manivela do BM1 (mm)"
         Top             =   480
         Width           =   732
      End
      Begin VB.TextBox TXT_Xdd1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   288
         Left            =   2160
         TabIndex        =   2
         ToolTipText     =   "Acelera��o do �mbolo do BM1 (m/s�)"
         Top             =   480
         Width           =   732
      End
      Begin VB.TextBox TXT_Xd1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   288
         Left            =   1080
         TabIndex        =   1
         ToolTipText     =   "Velocidade do �mbolo do BM1 (m/s)"
         Top             =   480
         Width           =   732
      End
      Begin VB.TextBox TXT_CUR 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   288
         Left            =   120
         TabIndex        =   0
         ToolTipText     =   "Curso do �mbolo da BM1 (mm)"
         Top             =   480
         Width           =   732
      End
      Begin VB.Label LB 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "CB1:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   192
         Index           =   3
         Left            =   3120
         TabIndex        =   18
         ToolTipText     =   "Comprimento da biela/manivela do BM1 (mm)"
         Top             =   240
         Width           =   396
      End
      Begin VB.Label LB 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Xdd1:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   192
         Index           =   2
         Left            =   2160
         TabIndex        =   17
         ToolTipText     =   "Acelera��o do �mbolo do BM1 (m/s^2)"
         Top             =   240
         Width           =   480
      End
      Begin VB.Label LB 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Xd1:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   192
         Index           =   1
         Left            =   1080
         TabIndex        =   16
         ToolTipText     =   "Velocidade do �mbolo do BM1 (m/s)"
         Top             =   240
         Width           =   372
      End
      Begin VB.Label LB 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "CUR:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   192
         Index           =   0
         Left            =   240
         TabIndex        =   15
         ToolTipText     =   "Curso do �mbolo da BM1 (mm)"
         Top             =   240
         Width           =   444
      End
   End
   Begin VB.Frame FR_Botoes 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H80000008&
      Height          =   1572
      Left            =   0
      TabIndex        =   26
      Top             =   3120
      Width           =   3972
      Begin VB.CommandButton BT_Trajetoria 
         Appearance      =   0  'Flat
         Caption         =   "Trajet�ria"
         Height          =   732
         Left            =   3000
         Picture         =   "CT_Pmec.ctx":0000
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Abre trajet�ria"
         Top             =   720
         Width           =   852
      End
      Begin VB.CommandButton BT_Tabelas 
         Appearance      =   0  'Flat
         Caption         =   "Tabelas"
         Height          =   732
         Left            =   120
         Picture         =   "CT_Pmec.ctx":030A
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Abre tabelas de c�lculos"
         Top             =   720
         Width           =   852
      End
      Begin VB.CommandButton BT_Simulacao 
         Appearance      =   0  'Flat
         Caption         =   "Simular"
         Height          =   732
         Left            =   1560
         Picture         =   "CT_Pmec.ctx":0614
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Abre simula��o"
         Top             =   720
         Width           =   852
      End
      Begin VB.ComboBox CB_Mec 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   7.8
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   288
         ItemData        =   "CT_Pmec.ctx":0EDE
         Left            =   120
         List            =   "CT_Pmec.ctx":0EF1
         Style           =   2  'Dropdown List
         TabIndex        =   8
         ToolTipText     =   "Escolha qual dos mecanismos deseja operar"
         Top             =   360
         Width           =   3732
      End
      Begin VB.Label LB 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Escolha o mecanismo:"
         Height          =   192
         Index           =   8
         Left            =   120
         TabIndex        =   27
         ToolTipText     =   "Comprimento da biela (mm)"
         Top             =   120
         Width           =   1632
      End
   End
   Begin VB.Frame FR_BT 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H80000008&
      Height          =   1092
      Left            =   0
      TabIndex        =   25
      Top             =   1920
      Width           =   3972
      Begin VB.CommandButton BT_Padrao 
         Appearance      =   0  'Flat
         Caption         =   "Valores Padr�o"
         Height          =   732
         Left            =   2160
         Picture         =   "CT_Pmec.ctx":0F63
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Insere os valores padr�es do mecanismo nos campos"
         Top             =   240
         Width           =   1572
      End
      Begin VB.CommandButton BT_Apaga 
         Appearance      =   0  'Flat
         Caption         =   "Limpa Campos"
         Height          =   732
         Left            =   240
         Picture         =   "CT_Pmec.ctx":182D
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Limpa todos os valores digitados nos campos"
         Top             =   240
         Width           =   1572
      End
   End
End
Attribute VB_Name = "CT_Pmec"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
 Dim sMsgBox As String
Private Sub BT_Apaga_Click()
    On Error Resume Next
    TXT_CUR.Text = ""
    TXT_Xd1.Text = ""
    TXT_Xdd1.Text = ""
    TXT_CB1.Text = ""
    TXT_C2.Text = ""
    TXT_DH.Text = ""
    TXT_CB2.Text = ""
    TXT_DF.Text = ""
End Sub
Private Sub BT_Padrao_Click()
    On Error Resume Next
    TXT_CUR.Text = "300"
    TXT_Xd1.Text = "1"
    TXT_Xdd1.Text = "0"
    TXT_CB1.Text = "100"
    TXT_C2.Text = "100"
    TXT_DH.Text = "40"
    TXT_CB2.Text = "50"
    TXT_DF.Text = "30"
End Sub
Private Sub BT_Simulacao_Click()
    On Error Resume Next
'    If Tela_Simulacao.Visible = True Then Exit Sub
    'Verifica dados
    sMsgBox = "� necess�rio preencher todos os campos para exibir as simula��es."
    If TXT_CUR.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_CUR.SetFocus
        Exit Sub
    ElseIf TXT_Xd1.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_Xd1.SetFocus
        Exit Sub
    ElseIf TXT_Xdd1.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_Xdd1.SetFocus
        Exit Sub
    ElseIf TXT_CB1.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_CB1.SetFocus
        Exit Sub
    ElseIf TXT_C2.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_C2.SetFocus
        Exit Sub
    ElseIf TXT_DH.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_DH.SetFocus
        Exit Sub
    ElseIf TXT_CB2.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_CB2.SetFocus
        Exit Sub
    ElseIf TXT_DF.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_DF.SetFocus
        Exit Sub
    ElseIf CB_Mec.ListIndex = -1 Then
        MsgBox "� necess�rio escolher o tipo do mecanimo!", vbInformation + vbOKOnly, "Falta mecanismo"
        CB_Mec.SetFocus
        Exit Sub
    End If
    
    AbreSimulacao

    Tela_Simulacao.Show vbModal
End Sub
Private Sub BT_Tabelas_Click()
    On Error Resume Next
    ' If Tela_Tabela.HasDC = True Then Exit Sub
    'Verifica dados
    sMsgBox = "� necess�rio preencher todos os campos para exibir as tabelas."
    If TXT_CUR.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_CUR.SetFocus
        Exit Sub
    ElseIf TXT_Xd1.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_Xd1.SetFocus
        Exit Sub
    ElseIf TXT_Xdd1.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_Xdd1.SetFocus
        Exit Sub
    ElseIf TXT_CB1.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_CB1.SetFocus
        Exit Sub
    ElseIf TXT_C2.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_C2.SetFocus
        Exit Sub
    ElseIf TXT_DH.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_DH.SetFocus
        Exit Sub
    ElseIf TXT_CB2.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_CB2.SetFocus
        Exit Sub
    ElseIf TXT_DF.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_DF.SetFocus
        Exit Sub
    ElseIf CB_Mec.ListIndex = -1 Then
        MsgBox "� necess�rio escolher o tipo do mecanimo!", vbInformation + vbOKOnly, "Falta mecanismo"
        CB_Mec.SetFocus
        Exit Sub
    End If
    
    AbreSimulacao

    With Tela_Tabela
        If .Visible = False Then AbreSimulacao
        If CB_Mec.ListIndex = 0 Then 'BM1
            .Caption = "Biela Manivela 1"
            iMec = 0
            .Show vbModal
        ElseIf CB_Mec.ListIndex = 1 Then 'QB
            .Caption = "Quatro Barras"
            iMec = 1
            .Show vbModal
        ElseIf CB_Mec.ListIndex = 2 Then 'Conex�o QB - BM2
            .Caption = "Conex�o entre QB e BM2"
            iMec = 2
            .Show vbModal
        ElseIf CB_Mec.ListIndex = 3 Then 'BM2
            .Caption = "TBiela Manivela 2"
            iMec = 3
            .Show vbModal
        ElseIf CB_Mec.ListIndex = 4 Then 'Todo
            MsgBox "Use a op��o " & Chr(34) & "Todo o mecanismo" & Chr(34) & " somente para a simula��o.", vbInformation + vbOKOnly, "Aviso"
            Exit Sub
        End If
    End With
End Sub
Private Sub BT_Trajetoria_Click()
    On Error Resume Next
    If Tela_Trajetoria.Visible = True Then Exit Sub
    'Verifica dados
    sMsgBox = "� necess�rio preencher todos os campos para exibir as trajet�rias."
    If TXT_CUR.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_CUR.SetFocus
        Exit Sub
    ElseIf TXT_Xd1.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_Xd1.SetFocus
        Exit Sub
    ElseIf TXT_Xdd1.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_Xdd1.SetFocus
        Exit Sub
    ElseIf TXT_CB1.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_CB1.SetFocus
        Exit Sub
    ElseIf TXT_C2.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_C2.SetFocus
        Exit Sub
    ElseIf TXT_DH.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_DH.SetFocus
        Exit Sub
    ElseIf TXT_CB2.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_CB2.SetFocus
        Exit Sub
    ElseIf TXT_DF.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        TXT_DF.SetFocus
        Exit Sub
    ElseIf CB_Mec.ListIndex = -1 Then
        MsgBox "� necess�rio escolher o tipo do mecanimo!", vbInformation + vbOKOnly, "Falta mecanismo"
        CB_Mec.SetFocus
        Exit Sub
    End If
    
    With Tela_Trajetoria
        AbreSimulacao
        If CB_Mec.ListIndex = 0 Then 'BM1
            .Caption = "Biela Manivela 1"
            .CB1.Clear
            .CB1.AddItem "X - Posi��o do �mbolo do BM1"
            .CB1.AddItem "Q1r - �ngulo Q1 em radianos"
            .CB1.AddItem "A1r - �ngulo A1 em radianos"
            .CB1.AddItem "KA1 - Coeficiente de Velocidade de A1"
            .CB1.AddItem "LA1 - Coeficiente de Acelera��o de A1"
            .CB1.AddItem "KX1 - Coeficiente de Velocidade de X"
            .CB1.AddItem "LX1 - Coeficiente de Acelera��o de X"
            .CB1.AddItem "Q1g - �ngulo Q1 em graus"
            .CB1.AddItem "Q1d - Velocidade Angular de Q1 em rad/s"
            .CB1.AddItem "Q1dd - Acelera��o Angular de Q1 em rad/s�"
            .CB1.AddItem "A1g - �ngulo A1 em graus"
            .CB1.AddItem "A1d - Velocidade Angular de A1 em rad/s"
            .CB1.AddItem "A1dd - Acelera��o Angular de A1 em rad/s�"
            .CB1.AddItem "Di - Posi��o do ponto D no plano i em rela��o ao ponto O1 em mm"
            .CB1.AddItem "Dj - Posi��o do ponto D no plano j em rela��o ao ponto O1 em mm"
            .CB1.AddItem "Did - Velocidade do ponto D no plano i em mm/s"
            .CB1.AddItem "Djd - Velocidade do ponto D no plano j em mm/s"
            .CB1.AddItem "Didd - Acelera��o do ponto D no plano i em mm/s�"
            .CB1.AddItem "Djdd - Acelera��o do ponto D no plano j em mm/s�"
            .CB2.Clear
            .CB1.AddItem "X - Posi��o do �mbolo do BM1"
            .CB2.AddItem "Q1r - �ngulo Q1 em radianos"
            .CB2.AddItem "A1r - �ngulo A1 em radianos"
            .CB2.AddItem "KA1 - Coeficiente de Velocidade de A1"
            .CB2.AddItem "LA1 - Coeficiente de Acelera��o de A1"
            .CB2.AddItem "KX1 - Coeficiente de Velocidade de X"
            .CB2.AddItem "LX1 - Coeficiente de Acelera��o de X"
            .CB2.AddItem "Q1g - �ngulo Q1 em graus"
            .CB2.AddItem "Q1d - Velocidade Angular de Q1 em rad/s"
            .CB2.AddItem "Q1dd - Acelera��o Angular de Q1 em rad/s�"
            .CB2.AddItem "A1g - �ngulo A1 em graus"
            .CB2.AddItem "A1d - Velocidade Angular de A1 em rad/s"
            .CB2.AddItem "A1dd - Acelera��o Angular de A1 em rad/s�"
            .CB2.AddItem "Di - Posi��o do ponto D no plano i em rela��o ao ponto O1 em mm"
            .CB2.AddItem "Dj - Posi��o do ponto D no plano j em rela��o ao ponto O1 em mm"
            .CB2.AddItem "Did - Velocidade do ponto D no plano i em mm/s"
            .CB2.AddItem "Djd - Velocidade do ponto D no plano j em mm/s"
            .CB2.AddItem "Didd - Acelera��o do ponto D no plano i em mm/s�"
            .CB2.AddItem "Djdd - Acelera��o do ponto D no plano j em mm/s�"
            .Show vbModal
        ElseIf CB_Mec.ListIndex = 1 Then 'QB
            .Caption = "Quatro Barras"
            .CB1.Clear
            .CB1.AddItem "X - Posi��o do �mbolo do BM1"
            .CB1.AddItem "Q2r - �ngulo Q2 em radianos"
            .CB1.AddItem "Q2g - �ngulo Q2 em graus"
            .CB1.AddItem "Q2d - Velocidade Angular de Q2 em rad/s"
            .CB1.AddItem "Q2dd - Acelera��o Angular de Q2 em rad/s�"
            .CB1.AddItem "L - Dist�ncia diagonal entre barras em mm"
            .CB1.AddItem "Alfar - �ngulo Alfa em radianos"
            .CB1.AddItem "Alfag - �ngulo Alfa em graus"
            .CB1.AddItem "Betar - �ngulo Beta em radianos"
            .CB1.AddItem "Betag - �ngulo Beta em graus"
            .CB1.AddItem "A3g - �ngulo A3 em graus"
            .CB1.AddItem "A3r - �ngulo A3 em radianos"
            .CB1.AddItem "KA3 - Coeficiente de Velocidade de A3"
            .CB1.AddItem "A3d - Velocidade Angular de A3 em rad/s"
            .CB1.AddItem "LA3 - Coeficiente de Acelera��o de A3"
            .CB1.AddItem "A3dd - Acelera��o Angular de A3 em rad/s�"
            .CB2.Clear
            .CB1.AddItem "X - Posi��o do �mbolo do BM1"
            .CB2.AddItem "Q2r - �ngulo Q2 em radianos"
            .CB2.AddItem "Q2g - �ngulo Q2 em graus"
            .CB2.AddItem "Q2d - Velocidade Angular de Q2 em rad/s"
            .CB2.AddItem "Q2dd - Acelera��o Angular de Q2 em rad/s�"
            .CB2.AddItem "L - Dist�ncia diagonal entre barras em mm"
            .CB2.AddItem "Alfar - �ngulo Alfa em radianos"
            .CB2.AddItem "Alfag - �ngulo Alfa em graus"
            .CB2.AddItem "Betar - �ngulo Beta em radianos"
            .CB2.AddItem "Betag - �ngulo Beta em graus"
            .CB2.AddItem "A3g - �ngulo A3 em graus"
            .CB2.AddItem "A3r - �ngulo A3 em radianos"
            .CB2.AddItem "KA3 - Coeficiente de Velocidade de A3"
            .CB2.AddItem "A3d - Velocidade Angular de A3 em rad/s"
            .CB2.AddItem "LA3 - Coeficiente de Acelera��o de A3"
            .CB2.AddItem "A3dd - Acelera��o Angular de A3 em rad/s�"
            .Show vbModal
        ElseIf CB_Mec.ListIndex = 2 Then 'Conex�o QB - BM2
            .Caption = "Conex�o entre QB e BM2"
            .CB1.Clear
            .CB1.AddItem "X - Posi��o do �mbolo do BM1"
            .CB1.AddItem "H - Dist�ncia entre o ponto D e o ponto H em mm"
            .CB1.AddItem "Hi - Posi��o do ponto H no plano i em rela��o ao ponto D em mm"
            .CB1.AddItem "Hj - Posi��o do ponto H no plano J em rela��o ao ponto D em mm"
            .CB1.AddItem "Hd - Velocidade do ponto H em mm/s"
            .CB1.AddItem "Hdd - Acelera��o do ponto H em mm/s�"
            .CB2.Clear
            .CB1.AddItem "X - Posi��o do �mbolo do BM1"
            .CB2.AddItem "H - Dist�ncia entre o ponto D e o ponto H em mm"
            .CB2.AddItem "Hi - Posi��o do ponto H no plano i em rela��o ao ponto D em mm"
            .CB2.AddItem "Hj - Posi��o do ponto H no plano J em rela��o ao ponto D em mm"
            .CB2.AddItem "Hd - Velocidade do ponto H em mm/s"
            .CB2.AddItem "Hdd - Acelera��o do ponto H em mm/s�"
            .Show vbModal
        ElseIf CB_Mec.ListIndex = 3 Then 'BM2
            .Caption = "Biela Manivela 2"
            .CB1.Clear
            .CB1.AddItem "X - Posi��o do �mbolo do BM1"
            .CB1.AddItem "W - Posi��o do ponto H para BM2 em mm"
            .CB1.AddItem "Wd - Velocidade do ponto H para BM2 em mm/s"
            .CB1.AddItem "Wdd - Acelera��o do ponto H para BM2 em mm/s�"
            .CB1.AddItem "Ror - �ngulo Ro em radianos"
            .CB1.AddItem "GE - Dist�ncia diagonal entre ponto H e G em mm"
            .CB1.AddItem "Gamar - �ngulo Gama em radianos"
            .CB1.AddItem "A4r - �ngulo A4 em radianos"
            .CB1.AddItem "Q4r - �ngulo Q4 em radianos"
            .CB1.AddItem "KW - Coeficiente de Velocidade de W"
            .CB1.AddItem "KA4 - Coeficiente de Velocidade de A4"
            .CB1.AddItem "Q4d - Velocidade Angular de Q4 em rad/s"
            .CB1.AddItem "A4d - Velocidade Angular de A4 em rad/s"
            .CB1.AddItem "LA4 - Coeficiente de Acelera��o de A4"
            .CB1.AddItem "LW - Coeficiente de Acelera��o de W"
            .CB1.AddItem "Q4dd - Acelera��o Angular de Q4 em rad/s�"
            .CB1.AddItem "A4dd - Acelera��o Angular de A4 em rad/s�"
            .CB2.Clear
            .CB1.AddItem "X - Posi��o do �mbolo do BM1"
            .CB2.AddItem "W - Posi��o do ponto H para BM2 em mm"
            .CB2.AddItem "Wd - Velocidade do ponto H para BM2 em mm/s"
            .CB2.AddItem "Wdd - Acelera��o do ponto H para BM2 em mm/s�"
            .CB2.AddItem "Ror - �ngulo Ro em radianos"
            .CB2.AddItem "GE - Dist�ncia diagonal entre ponto H e G em mm"
            .CB2.AddItem "Gamar - �ngulo Gama em radianos"
            .CB2.AddItem "A4r - �ngulo A4 em radianos"
            .CB2.AddItem "Q4r - �ngulo Q4 em radianos"
            .CB2.AddItem "KW - Coeficiente de Velocidade de W"
            .CB2.AddItem "KA4 - Coeficiente de Velocidade de A4"
            .CB2.AddItem "Q4d - Velocidade Angular de Q4 em rad/s"
            .CB2.AddItem "A4d - Velocidade Angular de A4 em rad/s"
            .CB2.AddItem "LA4 - Coeficiente de Acelera��o de A4"
            .CB2.AddItem "LW - Coeficiente de Acelera��o de W"
            .CB2.AddItem "Q4dd - Acelera��o Angular de Q4 em rad/s�"
            .CB2.AddItem "A4dd - Acelera��o Angular de A4 em rad/s�"
            .Show vbModal
        ElseIf CB_Mec.ListIndex = 4 Then 'Todo
            MsgBox "Use a op��o " & Chr(34) & "Todo o mecanismo" & Chr(34) & " somente para a simula��o.", vbInformation + vbOKOnly, "Aviso"
            Exit Sub
        End If
    End With
End Sub
Private Sub CB_Mec_Change()
    On Error Resume Next
    CB_Mec_Click
End Sub
Private Sub CB_Mec_Click()
    On Error Resume Next
    If CB_Mec.ListIndex = -1 Then Exit Sub
    sMsgBox = "� necess�rio preencher todos os campos antes de selecionar o mecanismo."
    If TXT_CUR.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        CB_Mec.ListIndex = -1
        TXT_CUR.SetFocus
        Exit Sub
    ElseIf TXT_Xd1.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        CB_Mec.ListIndex = -1
        TXT_Xd1.SetFocus
        Exit Sub
    ElseIf TXT_Xdd1.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        CB_Mec.ListIndex = -1
        TXT_Xdd1.SetFocus
        Exit Sub
    ElseIf TXT_CB1.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        CB_Mec.ListIndex = -1
        TXT_CB1.SetFocus
        Exit Sub
    ElseIf TXT_C2.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        CB_Mec.ListIndex = -1
        TXT_C2.SetFocus
        Exit Sub
    ElseIf TXT_DH.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        CB_Mec.ListIndex = -1
        TXT_DH.SetFocus
        Exit Sub
    ElseIf TXT_CB2.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        CB_Mec.ListIndex = -1
        TXT_CB2.SetFocus
        Exit Sub
    ElseIf TXT_DF.Text = "" Then
        MsgBox sMsgBox, vbInformation + vbOKOnly, "Falta dados"
        CB_Mec.ListIndex = -1
        TXT_DF.SetFocus
        Exit Sub
    End If
    CalculaTempo
    If CB_Mec.ListIndex >= 0 And CB_Mec.ListIndex <= 4 Then iMec = CB_Mec.ListIndex
End Sub
Private Sub CB_Mec_KeyPress(KeyAscii As Integer)
    On Error Resume Next
    If KeyAscii = vbKeyReturn Then BT_Tabelas.SetFocus
End Sub
Private Sub TXT_C2_GotFocus()
    On Error Resume Next
    TXT_C2.SelLength = Len(TXT_C2.Text)
End Sub
Private Sub TXT_C2_KeyPress(KeyAscii As Integer)
    On Error Resume Next
    KeyAscii = ValidaTexto(KeyAscii)
    If KeyAscii = vbKeyReturn Then TXT_DH.SetFocus
End Sub
Private Sub TXT_C2_LostFocus()
    On Error Resume Next
    If TXT_C2.Text <> "" And IsNumeric(TXT_C2.Text) = False Then
        MsgBox "Voc� digitou um n�mero inv�lido.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_C2.SetFocus
        Exit Sub
    End If
    If TXT_C2.Text = "0" Then
        MsgBox "Voc� deve digitar um n�mero maios que ZERO neste campo.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_C2.SetFocus
        Exit Sub
    End If
End Sub
Private Sub TXT_CB1_GotFocus()
    On Error Resume Next
    TXT_CB1.SelLength = Len(TXT_CB1.Text)
End Sub
Private Sub TXT_CB1_KeyPress(KeyAscii As Integer)
    On Error Resume Next
    KeyAscii = ValidaTexto(KeyAscii)
    If KeyAscii = vbKeyReturn Then TXT_C2.SetFocus
End Sub
Private Sub TXT_CB1_LostFocus()
    On Error Resume Next
    If TXT_CB1.Text <> "" And IsNumeric(TXT_CB1.Text) = False Then
        MsgBox "Voc� digitou um n�mero inv�lido.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_CB1.SetFocus
        Exit Sub
    End If
    If TXT_CB1.Text = "0" Then
        MsgBox "Voc� deve digitar um n�mero maios que ZERO neste campo.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_CB1.SetFocus
        Exit Sub
    End If
    If TXT_CUR.Text <> "" And TXT_CB1.Text <> "" Then
        If (Val(TXT_CB1.Text) * 4) > Val(TXT_CUR.Text) Then
            MsgBox "Voc� digitou CB1=" & Trim(TXT_CB1.Text) & ". O curso deve ser no m�nimo 4 vezes maior que CB1 para a BASE2 ter o �ngulo Q1=0�, ou seja, a BASE2 sair da BASE1." & vbCr & vbCr & "No caso, deve ser maior que: " & (Val(TXT_CB1.Text) * 4), vbInformation + vbOKOnly, "Curso inv�lido"
            TXT_CB1.SetFocus
            Exit Sub
        End If
    End If
End Sub
Private Sub TXT_CB2_GotFocus()
    On Error Resume Next
    TXT_CB2.SelLength = Len(TXT_CB2.Text)
End Sub
Private Sub TXT_CB2_KeyPress(KeyAscii As Integer)
    On Error Resume Next
    KeyAscii = ValidaTexto(KeyAscii)
    If KeyAscii = vbKeyReturn Then TXT_DF.SetFocus
End Sub
Private Sub TXT_CB2_LostFocus()
    On Error Resume Next
    If TXT_CB2.Text <> "" And IsNumeric(TXT_CB2.Text) = False Then
        MsgBox "Voc� digitou um n�mero inv�lido.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_CB2.SetFocus
        Exit Sub
    End If
    If TXT_CB2.Text = "0" Then
        MsgBox "Voc� deve digitar um n�mero maios que ZERO neste campo.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_CB2.SetFocus
        Exit Sub
    End If
End Sub
Private Sub TXT_CUR_GotFocus()
    On Error Resume Next
    TXT_CUR.SelLength = Len(TXT_CUR.Text)
End Sub
Private Sub TXT_CUR_KeyPress(KeyAscii As Integer)
    On Error Resume Next
    KeyAscii = ValidaTexto(KeyAscii)
    If KeyAscii = vbKeyReturn Then TXT_Xd1.SetFocus
End Sub
Private Sub TXT_CUR_LostFocus()
    On Error Resume Next
    If TXT_CUR.Text <> "" And IsNumeric(TXT_CUR.Text) = False Then
        MsgBox "Voc� digitou um n�mero inv�lido.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_CUR.SetFocus
        Exit Sub
    End If
    If TXT_CUR.Text = "0" Then
        MsgBox "Voc� deve digitar um n�mero maios que ZERO neste campo.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_CUR.SetFocus
        Exit Sub
    End If
    If TXT_CUR.Text <> "" And TXT_CB1.Text <> "" Then
        If (Val(TXT_CB1.Text) * 4) > Val(TXT_CUR.Text) Then
            MsgBox "Voc� digitou CB1=" & Trim(TXT_CB1.Text) & ". O curso deve ser no m�nimo 4 vezes maior que CB1 para a BASE2 ter o �ngulo Q1=0�, ou seja, a BASE2 sair da BASE1." & vbCr & vbCr & "No caso, deve ser maior que: " & (Val(TXT_CB1.Text) * 4), vbInformation + vbOKOnly, "Curso inv�lido"
            TXT_CUR.SetFocus
            Exit Sub
        End If
    End If
End Sub
Private Sub TXT_DF_GotFocus()
    On Error Resume Next
    TXT_DF.SelLength = Len(TXT_DF.Text)
End Sub
Private Sub TXT_DF_KeyPress(KeyAscii As Integer)
    On Error Resume Next
    KeyAscii = ValidaTexto(KeyAscii)
    If KeyAscii = vbKeyReturn Then CB_Mec.SetFocus
End Sub
Private Sub TXT_DF_LostFocus()
    On Error Resume Next
    If TXT_DF.Text <> "" And IsNumeric(TXT_DF.Text) = False Then
        MsgBox "Voc� digitou um n�mero inv�lido.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_DF.SetFocus
        Exit Sub
    End If
    If TXT_DF.Text = "0" Then
        MsgBox "Voc� deve digitar um n�mero maios que ZERO neste campo.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_DF.SetFocus
        Exit Sub
    End If
End Sub
Private Sub TXT_DH_GotFocus()
    On Error Resume Next
    TXT_DH.SelLength = Len(TXT_DH.Text)
End Sub
Private Sub TXT_DH_KeyPress(KeyAscii As Integer)
    On Error Resume Next
    KeyAscii = ValidaTexto(KeyAscii)
    If KeyAscii = vbKeyReturn Then TXT_CB2.SetFocus
End Sub
Private Sub TXT_DH_LostFocus()
    On Error Resume Next
    If TXT_DH.Text <> "" And IsNumeric(TXT_DH.Text) = False Then
        MsgBox "Voc� digitou um n�mero inv�lido.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_DH.SetFocus
        Exit Sub
    End If
    If TXT_DH.Text = "0" Then
        MsgBox "Voc� deve digitar um n�mero maios que ZERO neste campo.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_DH.SetFocus
        Exit Sub
    End If
End Sub
Private Sub TXT_Xd1_GotFocus()
    On Error Resume Next
    TXT_Xd1.SelLength = Len(TXT_Xd1.Text)
End Sub
Private Sub TXT_Xd1_KeyPress(KeyAscii As Integer)
    On Error Resume Next
    KeyAscii = ValidaTexto(KeyAscii)
    If KeyAscii = vbKeyReturn Then TXT_Xdd1.SetFocus
End Sub
Private Sub TXT_Xd1_LostFocus()
    On Error Resume Next
    If TXT_Xd1.Text <> "" And IsNumeric(TXT_Xd1.Text) = False Then
        MsgBox "Voc� digitou um n�mero inv�lido.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_Xd1.SetFocus
        Exit Sub
    End If
    If TXT_Xd1.Text = "0" Then
        MsgBox "Voc� deve digitar um n�mero maios que ZERO neste campo.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_Xd1.SetFocus
        Exit Sub
    End If
End Sub
Private Sub TXT_Xdd1_GotFocus()
    On Error Resume Next
    TXT_Xdd1.SelLength = Len(TXT_Xdd1.Text)
End Sub
Private Sub TXT_Xdd1_KeyPress(KeyAscii As Integer)
    On Error Resume Next
    KeyAscii = ValidaTexto(KeyAscii)
    If KeyAscii = vbKeyReturn Then TXT_CB1.SetFocus
End Sub
Private Sub TXT_Xdd1_LostFocus()
    On Error Resume Next
    If TXT_Xdd1.Text <> "" And IsNumeric(TXT_Xdd1.Text) = False Then
        MsgBox "Voc� digitou um n�mero inv�lido.", vbCritical + vbOKOnly, "N�mero inv�lido"
        TXT_Xdd1.SetFocus
        Exit Sub
    End If
End Sub


'OUTRAS FUNCOES
Private Function ValidaTexto(KeyAscii As Integer) As Integer
    On Error Resume Next
    If Chr(KeyAscii) <> "0" And _
       Chr(KeyAscii) <> "1" And _
       Chr(KeyAscii) <> "2" And _
       Chr(KeyAscii) <> "3" And _
       Chr(KeyAscii) <> "4" And _
       Chr(KeyAscii) <> "5" And _
       Chr(KeyAscii) <> "6" And _
       Chr(KeyAscii) <> "7" And _
       Chr(KeyAscii) <> "8" And _
       Chr(KeyAscii) <> "9" And _
       Chr(KeyAscii) <> "," And _
       KeyAscii > 30 Then
        KeyAscii = 27
    End If
    ValidaTexto = KeyAscii
End Function
Private Sub AbreSimulacao()
    On Error Resume Next
    TelaEmEspera True
    sVAR_Int = 360
    sVAR_Cur = TXT_CUR.Text
    sVAR_Xd1 = TXT_Xd1.Text
    sVAR_Xdd1 = TXT_Xdd1.Text
    sVAR_CB1 = TXT_CB1.Text
    sVAR_C2 = TXT_C2.Text
    sVAR_DH = TXT_DH.Text
    sVAR_CB2 = TXT_CB2.Text
    sVAR_DF = TXT_DF.Text
    ResolveCalculos
    TelaEmEspera False
End Sub
Private Sub CalculaTempo()
    On Error Resume Next
    'Calcula o tempo do mecanimo - dT = dS / dV
    sTempo = (Val(TXT_CUR.Text) / 1000) / TXT_Xd1.Text
    sTempo = sTempo * 1000 'p/ ms
End Sub
