VERSION 5.00
Begin VB.Form Tela_Simulacao 
   AutoRedraw      =   -1  'True
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Simulador do Mecanismo"
   ClientHeight    =   4872
   ClientLeft      =   36
   ClientTop       =   264
   ClientWidth     =   7080
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4872
   ScaleWidth      =   7080
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame FR 
      Caption         =   "Váriáveis de Posição:"
      Height          =   492
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   7092
      Begin VB.Label LB_W 
         AutoSize        =   -1  'True
         Caption         =   "X:"
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
         Left            =   6000
         TabIndex        =   13
         Top             =   240
         Width           =   168
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "W:"
         Height          =   192
         Left            =   5760
         TabIndex        =   12
         Top             =   240
         Width           =   192
      End
      Begin VB.Label LB_HJ 
         AutoSize        =   -1  'True
         Caption         =   "X:"
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
         Left            =   4800
         TabIndex        =   11
         Top             =   240
         Width           =   168
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Hj:"
         Height          =   192
         Left            =   4560
         TabIndex        =   10
         Top             =   240
         Width           =   192
      End
      Begin VB.Label LB_HI 
         AutoSize        =   -1  'True
         Caption         =   "X:"
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
         Left            =   3600
         TabIndex        =   9
         Top             =   240
         Width           =   168
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Hi:"
         Height          =   192
         Left            =   3360
         TabIndex        =   8
         Top             =   240
         Width           =   192
      End
      Begin VB.Label LB_DJ 
         AutoSize        =   -1  'True
         Caption         =   "X:"
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
         Left            =   2520
         TabIndex        =   7
         Top             =   240
         Width           =   168
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Dj:"
         Height          =   192
         Left            =   2280
         TabIndex        =   6
         Top             =   240
         Width           =   192
      End
      Begin VB.Label LB_DI 
         AutoSize        =   -1  'True
         Caption         =   "X:"
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
         Left            =   1440
         TabIndex        =   5
         Top             =   240
         Width           =   168
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Di:"
         Height          =   192
         Left            =   1200
         TabIndex        =   4
         Top             =   240
         Width           =   192
      End
      Begin VB.Label LB_X 
         AutoSize        =   -1  'True
         Caption         =   "X:"
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
         Left            =   360
         TabIndex        =   3
         Top             =   240
         Width           =   168
      End
      Begin VB.Label LB 
         AutoSize        =   -1  'True
         Caption         =   "X:"
         Height          =   192
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   132
      End
   End
   Begin VB.CommandButton BT_Volta 
      Caption         =   "Voltar"
      Height          =   732
      Left            =   5760
      Picture         =   "Tela_Simulacao.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   4080
      Width           =   972
   End
   Begin VB.Timer Tempo 
      Interval        =   10
      Left            =   120
      Top             =   720
   End
   Begin VB.Line LINHA_BM2 
      BorderColor     =   &H00008080&
      BorderWidth     =   2
      Index           =   1
      X1              =   360
      X2              =   360
      Y1              =   2400
      Y2              =   1920
   End
   Begin VB.Line LINHA_BM2 
      BorderColor     =   &H00008080&
      BorderWidth     =   2
      Index           =   0
      X1              =   720
      X2              =   720
      Y1              =   2400
      Y2              =   1920
   End
   Begin VB.Line LINHA_BASE3 
      BorderColor     =   &H0000C000&
      BorderWidth     =   2
      Index           =   3
      X1              =   6960
      X2              =   6960
      Y1              =   1680
      Y2              =   1920
   End
   Begin VB.Line LINHA_BASE3 
      BorderColor     =   &H0000C000&
      BorderWidth     =   2
      Index           =   1
      X1              =   5400
      X2              =   5400
      Y1              =   1680
      Y2              =   1920
   End
   Begin VB.Line LINHA_BASE3 
      BorderColor     =   &H0000C000&
      BorderWidth     =   2
      Index           =   2
      X1              =   5400
      X2              =   6960
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Line LINHA_BASE3 
      BorderColor     =   &H0000C000&
      BorderWidth     =   2
      Index           =   0
      X1              =   5400
      X2              =   6960
      Y1              =   1920
      Y2              =   1920
   End
   Begin VB.Line LREF 
      Index           =   8
      Visible         =   0   'False
      X1              =   2640
      X2              =   2400
      Y1              =   1920
      Y2              =   2040
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   11
      X1              =   1320
      X2              =   1560
      Y1              =   3240
      Y2              =   3000
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   0
      X1              =   5160
      X2              =   5400
      Y1              =   3240
      Y2              =   3000
   End
   Begin VB.Line LREF 
      Index           =   7
      Visible         =   0   'False
      X1              =   4140
      X2              =   3840
      Y1              =   1320
      Y2              =   1680
   End
   Begin VB.Line LREF 
      Index           =   6
      Visible         =   0   'False
      X1              =   2640
      X2              =   3240
      Y1              =   1920
      Y2              =   1920
   End
   Begin VB.Line LREF 
      Index           =   5
      Visible         =   0   'False
      X1              =   3840
      X2              =   3840
      Y1              =   1680
      Y2              =   1920
   End
   Begin VB.Line LINHA_MANIVELA2 
      BorderColor     =   &H00008080&
      BorderWidth     =   3
      X1              =   4440
      X2              =   3960
      Y1              =   840
      Y2              =   840
   End
   Begin VB.Line LINHA_BIELA2 
      BorderColor     =   &H00FFFF00&
      BorderWidth     =   3
      X1              =   4440
      X2              =   3840
      Y1              =   960
      Y2              =   1680
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   14
      Visible         =   0   'False
      X1              =   5160
      X2              =   5160
      Y1              =   3240
      Y2              =   3480
   End
   Begin VB.Line LINHA_MOVSEC2 
      BorderColor     =   &H00FF00FF&
      BorderWidth     =   3
      X1              =   3840
      X2              =   3840
      Y1              =   1080
      Y2              =   1920
   End
   Begin VB.Line LREF 
      Index           =   4
      Visible         =   0   'False
      X1              =   4440
      X2              =   3840
      Y1              =   1200
      Y2              =   1920
   End
   Begin VB.Line LREF 
      Index           =   2
      Visible         =   0   'False
      X1              =   3840
      X2              =   3540
      Y1              =   1200
      Y2              =   1560
   End
   Begin VB.Line LREF 
      Index           =   3
      Visible         =   0   'False
      X1              =   3540
      X2              =   3240
      Y1              =   1560
      Y2              =   1920
   End
   Begin VB.Line LREF 
      Index           =   0
      Visible         =   0   'False
      X1              =   5280
      X2              =   5280
      Y1              =   3120
      Y2              =   3360
   End
   Begin VB.Line LREF 
      Index           =   1
      Visible         =   0   'False
      X1              =   3240
      X2              =   2640
      Y1              =   1200
      Y2              =   1920
   End
   Begin VB.Line LINHA_PLATAFORMA 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   10
      X1              =   2400
      X2              =   5280
      Y1              =   960
      Y2              =   960
   End
   Begin VB.Line LINHA_PLATAFORMA 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   9
      X1              =   1800
      X2              =   4680
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   19
      X1              =   1080
      X2              =   6480
      Y1              =   2880
      Y2              =   2880
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   15
      Visible         =   0   'False
      X1              =   5400
      X2              =   5400
      Y1              =   3000
      Y2              =   3240
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   10
      X1              =   120
      X2              =   1080
      Y1              =   3840
      Y2              =   2880
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   6
      X1              =   1080
      X2              =   1080
      Y1              =   2640
      Y2              =   2880
   End
   Begin VB.Line LINHA_PLATAFORMA 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   8
      X1              =   5280
      X2              =   5280
      Y1              =   960
      Y2              =   1200
   End
   Begin VB.Line LINHA_PLATAFORMA 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   3
      X1              =   2400
      X2              =   2400
      Y1              =   960
      Y2              =   1200
   End
   Begin VB.Line LINHA_PLATAFORMA 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   2
      X1              =   5280
      X2              =   4680
      Y1              =   1200
      Y2              =   1920
   End
   Begin VB.Line LINHA_PLATAFORMA 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   1
      X1              =   2400
      X2              =   1800
      Y1              =   1200
      Y2              =   1920
   End
   Begin VB.Line LINHA_PLATAFORMA 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   0
      X1              =   2400
      X2              =   1800
      Y1              =   960
      Y2              =   1680
   End
   Begin VB.Line LINHA_PLATAFORMA 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   11
      X1              =   2400
      X2              =   5280
      Y1              =   1200
      Y2              =   1200
   End
   Begin VB.Line LINHA_PLATAFORMA 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   7
      X1              =   4680
      X2              =   4680
      Y1              =   1680
      Y2              =   1920
   End
   Begin VB.Line LINHA_PLATAFORMA 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   6
      X1              =   1800
      X2              =   1800
      Y1              =   1680
      Y2              =   1920
   End
   Begin VB.Line LINHA_PLATAFORMA 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   5
      X1              =   5280
      X2              =   4680
      Y1              =   960
      Y2              =   1680
   End
   Begin VB.Line LINHA_PLATAFORMA 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   4
      X1              =   1800
      X2              =   4680
      Y1              =   1920
      Y2              =   1920
   End
   Begin VB.Line LINHA_MOVSEC 
      BorderColor     =   &H00800080&
      BorderWidth     =   3
      Index           =   1
      X1              =   3840
      X2              =   3840
      Y1              =   1920
      Y2              =   3480
   End
   Begin VB.Line LINHA_CARRO 
      BorderColor     =   &H0000C0C0&
      BorderWidth     =   2
      Index           =   11
      X1              =   4320
      X2              =   4080
      Y1              =   3240
      Y2              =   3480
   End
   Begin VB.Line LINHA_CARRO 
      BorderColor     =   &H0000C0C0&
      BorderWidth     =   2
      Index           =   10
      X1              =   4320
      X2              =   4080
      Y1              =   3000
      Y2              =   3240
   End
   Begin VB.Line LINHA_CARRO 
      BorderColor     =   &H0000C0C0&
      BorderWidth     =   2
      Index           =   9
      X1              =   3120
      X2              =   2880
      Y1              =   3240
      Y2              =   3480
   End
   Begin VB.Line LINHA_CARRO 
      BorderColor     =   &H0000C0C0&
      BorderWidth     =   2
      Index           =   8
      X1              =   4080
      X2              =   2880
      Y1              =   3480
      Y2              =   3480
   End
   Begin VB.Line LINHA_CARRO 
      BorderColor     =   &H0000C0C0&
      BorderWidth     =   2
      Index           =   7
      X1              =   4080
      X2              =   4080
      Y1              =   3240
      Y2              =   3480
   End
   Begin VB.Line LINHA_CARRO 
      BorderColor     =   &H0000C0C0&
      BorderWidth     =   2
      Index           =   6
      X1              =   4320
      X2              =   3120
      Y1              =   3000
      Y2              =   3000
   End
   Begin VB.Line LINHA_CARRO 
      BorderColor     =   &H0000C0C0&
      BorderWidth     =   2
      Index           =   5
      X1              =   2880
      X2              =   2880
      Y1              =   3240
      Y2              =   3480
   End
   Begin VB.Line LINHA_CARRO 
      BorderColor     =   &H0000C0C0&
      BorderWidth     =   2
      Index           =   4
      X1              =   3120
      X2              =   2880
      Y1              =   3000
      Y2              =   3240
   End
   Begin VB.Line LINHA_CARRO 
      BorderColor     =   &H0000C0C0&
      BorderWidth     =   2
      Index           =   3
      X1              =   4320
      X2              =   3120
      Y1              =   3240
      Y2              =   3240
   End
   Begin VB.Line LINHA_CARRO 
      BorderColor     =   &H0000C0C0&
      BorderWidth     =   2
      Index           =   2
      X1              =   4320
      X2              =   4320
      Y1              =   3000
      Y2              =   3240
   End
   Begin VB.Line LINHA_CARRO 
      BorderColor     =   &H0000C0C0&
      BorderWidth     =   2
      Index           =   1
      X1              =   4080
      X2              =   2880
      Y1              =   3240
      Y2              =   3240
   End
   Begin VB.Line LINHA_CARRO 
      BorderColor     =   &H0000C0C0&
      BorderWidth     =   2
      Index           =   0
      X1              =   3120
      X2              =   3120
      Y1              =   3000
      Y2              =   3240
   End
   Begin VB.Line LINHA_MOVSEC 
      BorderColor     =   &H00800080&
      BorderWidth     =   3
      Index           =   0
      X1              =   2640
      X2              =   2640
      Y1              =   1920
      Y2              =   3480
   End
   Begin VB.Line LINHA_MOVSEC 
      BorderColor     =   &H00800080&
      BorderWidth     =   3
      Index           =   3
      X1              =   3240
      X2              =   3240
      Y1              =   1200
      Y2              =   2760
   End
   Begin VB.Line LINHA_MOVSEC 
      BorderColor     =   &H00800080&
      BorderWidth     =   3
      Index           =   2
      X1              =   4440
      X2              =   4440
      Y1              =   1200
      Y2              =   2760
   End
   Begin VB.Line LINHA_MOVPRI 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Index           =   0
      X1              =   3600
      X2              =   3600
      Y1              =   1560
      Y2              =   3120
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   5
      X1              =   120
      X2              =   5520
      Y1              =   3600
      Y2              =   3600
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   1
      X1              =   1560
      X2              =   5400
      Y1              =   3000
      Y2              =   3000
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   18
      X1              =   1320
      X2              =   5160
      Y1              =   3240
      Y2              =   3240
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   12
      X1              =   120
      X2              =   120
      Y1              =   3600
      Y2              =   3840
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   7
      X1              =   5520
      X2              =   6480
      Y1              =   3840
      Y2              =   2880
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   3
      X1              =   120
      X2              =   1080
      Y1              =   3600
      Y2              =   2640
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   2
      X1              =   1080
      X2              =   6480
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   8
      X1              =   120
      X2              =   5520
      Y1              =   3840
      Y2              =   3840
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   17
      X1              =   5520
      X2              =   5520
      Y1              =   3600
      Y2              =   3840
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   4
      X1              =   6480
      X2              =   6480
      Y1              =   2640
      Y2              =   2880
   End
   Begin VB.Line LINHA_BASE 
      BorderColor     =   &H00404040&
      Index           =   9
      X1              =   5520
      X2              =   6480
      Y1              =   3600
      Y2              =   2640
   End
End
Attribute VB_Name = "Tela_Simulacao"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim sCurso As Single, sTmp As Single, sPosRel As Single, iNumInt As Integer, bSubindo As Boolean, iX2 As Integer, sAltPlat As Single, sGrauDesenho As Single, iDifX As Integer, iDifY As Integer

Private Sub BT_Volta_Click()
   Unload Me
End Sub
Private Sub CB_Vel_Change()
    CB_Vel_Click
End Sub
Private Sub CB_Vel_Click()
    If CB_Vel.ListIndex = 0 Then 'x 100
        Tempo.Interval = CInt(sTempo * 0.01)
    ElseIf CB_Vel.ListIndex = 1 Then 'x 10
        Tempo.Interval = CInt(sTempo * 0.01)
    ElseIf CB_Vel.ListIndex = 2 Then 'x 1
        Tempo.Interval = CInt(sTempo * 1)
    ElseIf CB_Vel.ListIndex = 3 Then 'x 0.1
        Tempo.Interval = CInt(sTempo * 10)
    ElseIf CB_Vel.ListIndex = 4 Then 'x 0.01
        Tempo.Interval = CInt(sTempo * 100)
    End If
End Sub
Private Sub Form_Load()
    'inicia variaveis
    iNumInt = 0
    bSubindo = True
    sPosRel = sVAR_Cur / 2
    sCurso = (LINHA_BASE(18).X2 - LINHA_BASE(18).X1) / sVAR_Cur 'define qts.twips por mm
    sAltPlat = (LINHA_PLATAFORMA(7).Y2 - LINHA_PLATAFORMA(7).Y1) / sCurso
    'calcula angulo desenho
    sTmp = Sqr((LREF(1).X2 - LREF(1).X1) ^ 2 + (LREF(1).Y2 - LREF(1).Y1) ^ 2)
    sGrauDesenho = ACos((LREF(6).X2 - LREF(6).X1) / CInt(sTmp))
    'Dimensiona barras
    sTmp = sCurso * sVAR_CB1
    LINHA_MOVPRI(0).Y1 = LINHA_MOVPRI(0).Y2 - sTmp
    'reposiciona referencias
    sTmp = LINHA_MOVPRI(0).Y1 - LREF(3).Y1
    LREF(3).Y1 = LINHA_MOVPRI(0).Y1
    LREF(3).Y2 = LREF(3).Y2 + sTmp
    LREF(2).Y2 = LINHA_MOVPRI(0).Y1
    LREF(2).Y1 = LREF(2).Y1 + sTmp
    LREF(1).Y1 = LREF(1).Y1 + sTmp
    LREF(1).Y2 = LREF(1).Y2 + sTmp
    LREF(4).Y1 = LREF(4).Y1 + sTmp
    LREF(4).Y2 = LREF(4).Y2 + sTmp
    sTmp = (sCurso * sVAR_C2) / 2
    LREF(1).X1 = LREF(2).X1 - sTmp
    LREF(1).X2 = LREF(3).X2 - sTmp
    LREF(4).X1 = LREF(2).X1 + sTmp
    LREF(4).X2 = LREF(3).X2 + sTmp
    LREF(5).X2 = LINHA_MOVSEC(1).X1
    LREF(5).Y2 = LINHA_MOVSEC(1).Y1
    'reposiciona barras
    LINHA_MOVSEC(0).Y1 = LREF(1).Y2
    LINHA_MOVSEC(1).Y1 = LREF(4).Y2
    LINHA_MOVSEC(2).Y1 = LREF(4).Y1
    LINHA_MOVSEC(3).Y1 = LREF(1).Y1
    LINHA_MOVSEC2.Y2 = LREF(4).Y2
    LINHA_MOVSEC2.Y1 = LINHA_MOVSEC2.Y2 - (sVAR_DH * sCurso)
    LINHA_MOVSEC(0).X1 = LREF(1).X2
    LINHA_MOVSEC(0).X2 = LREF(1).X2
    LINHA_MOVSEC(1).X1 = LREF(4).X2
    LINHA_MOVSEC(1).X2 = LREF(4).X2
    LINHA_MOVSEC(2).X1 = LREF(4).X1
    LINHA_MOVSEC(2).X2 = LREF(4).X1
    LINHA_MOVSEC(3).X1 = LREF(1).X1
    LINHA_MOVSEC(3).X2 = LREF(1).X1
    LINHA_MOVSEC2.X1 = LREF(4).X2
    LINHA_MOVSEC2.X2 = LREF(4).X2
    'posisiona plataforma conforme barras
    sTmp = LREF(1).Y2 - LREF(8).Y1
    LREF(8).X1 = LREF(1).X2
    LREF(8).Y1 = LREF(1).Y2
    With LINHA_PLATAFORMA
        For I = 0 To (.Count - 1)
            .Item(I).Y1 = .Item(I).Y1 + sTmp
            .Item(I).Y2 = .Item(I).Y2 + sTmp
        Next I
    End With
    'posiciona manivela BM2
    LREF(5).X2 = LINHA_MOVSEC(1).X1
    LREF(5).Y2 = LINHA_MOVSEC(1).Y1
    CalculoGA 0
    LREF(7).X2 = LINHA_MOVSEC(1).X1
    LREF(7).X1 = LINHA_MOVSEC(1).X1 + ((sVAR_CB2 * sCurso) * Cos(sGrauDesenho))
    LREF(7).Y2 = LREF(5).Y1
    LREF(7).Y1 = LREF(5).Y1 - ((sVAR_CB2 * sCurso) * Sin(sGrauDesenho))
    LINHA_MANIVELA2.X1 = LREF(7).X1
    LINHA_MANIVELA2.Y1 = LREF(7).Y1
    LINHA_MANIVELA2.X2 = LREF(7).X1 + (sVAR_DF * sCurso)
    LINHA_MANIVELA2.Y2 = LREF(7).Y1
    LINHA_BM2(0).X1 = LINHA_MANIVELA2.X1
    LINHA_BM2(0).X2 = LINHA_MANIVELA2.X1
    LINHA_BM2(1).X1 = LINHA_MANIVELA2.X2
    LINHA_BM2(1).X2 = LINHA_MANIVELA2.X2
    iDifY = Abs(LINHA_BM2(0).Y1 - LINHA_BM2(0).Y2)
    LINHA_BM2(0).Y2 = LINHA_MANIVELA2.Y1
    LINHA_BM2(0).Y1 = LINHA_MANIVELA2.Y1 - iDifY
    LINHA_BM2(1).Y2 = LINHA_MANIVELA2.Y2
    LINHA_BM2(1).Y1 = LINHA_MANIVELA2.Y2 - iDifY
    iDifX = Abs(LINHA_BIELA2.X1 - LINHA_BIELA2.X2)
    iDifY = Abs(LINHA_BIELA2.Y1 - LINHA_BIELA2.Y2)
    LINHA_BIELA2.X1 = LREF(5).X1
    LINHA_BIELA2.Y1 = LREF(5).Y1
    LINHA_BIELA2.X2 = LREF(5).X1 + iDifX
    LINHA_BIELA2.Y2 = LREF(5).Y1 - iDifY
    'posisiona base3 conforme manivela 2
    
    'POSICAO INICIAL
    CalculaPosicao
End Sub
Private Sub RB_Esc_Click()
    Tempo.Interval = CInt(sTempo)
    LB_Vel.Caption = sVAR_Xd1 & " m/s"
End Sub
Private Sub RB_Mul_Click()
    CB_Vel.ListIndex = 2
End Sub
Private Sub TEMPO_Timer()
    CalculaPosicao
End Sub

'*******************
' FUNCOES ESPECIAIS
'*******************
Private Function PosicaoLinhaRelativa(Valor As Single, X As Boolean) As Single
    Dim Tmp As Single
    If X = True Then
        Tmp = LREF(0).X1 - ((Valor + sPosRel) * sCurso)
    Else
        Tmp = LREF(0).Y1 - (Valor * sCurso)
    End If
    PosicaoLinhaRelativa = Tmp
End Function
Private Sub CalculaPosicao()
    iX2 = LINHA_MOVPRI(0).X2
    LINHA_MOVPRI(0).X2 = PosicaoLinhaRelativa(aPosicao(iNumInt), True)
    LINHA_MOVPRI(0).Y2 = LREF(0).Y1
    LINHA_MOVPRI(0).X1 = PosicaoLinhaRelativa(aDi(iNumInt), True)
    LINHA_MOVPRI(0).Y1 = PosicaoLinhaRelativa(aDj(iNumInt), False)
    sTmp = LINHA_MOVPRI(0).X2 - iX2
    With LINHA_CARRO
        For I = 0 To (.Count - 1)
            .Item(I).X1 = .Item(I).X1 + sTmp
            .Item(I).X2 = .Item(I).X2 + sTmp
        Next I
    End With
    sTmp = LINHA_MOVPRI(0).X1 - LREF(2).X2
    LREF(1).X1 = LREF(1).X1 + sTmp
    LREF(1).X2 = LREF(1).X2 + sTmp
    LREF(2).X1 = LREF(2).X1 + sTmp
    LREF(2).X2 = LREF(2).X2 + sTmp
    LREF(3).X1 = LREF(3).X1 + sTmp
    LREF(3).X2 = LREF(3).X2 + sTmp
    LREF(4).X1 = LREF(4).X1 + sTmp
    LREF(4).X2 = LREF(4).X2 + sTmp
    LINHA_MOVSEC(0).X1 = LREF(1).X2
    LINHA_MOVSEC(1).X1 = LREF(4).X2
    LINHA_MOVSEC(2).X1 = LREF(4).X1
    LINHA_MOVSEC(3).X1 = LREF(1).X1
    LINHA_MOVSEC2.X2 = LINHA_MOVSEC(1).X1
    LREF(5).X2 = LINHA_MOVSEC(1).X1
    With LINHA_PLATAFORMA
        For I = 0 To (.Count - 1)
            .Item(I).X1 = .Item(I).X1 + sTmp
            .Item(I).X2 = .Item(I).X2 + sTmp
        Next I
    End With
    LREF(7).X1 = LREF(7).X1 + sTmp
    LREF(7).X2 = LREF(7).X2 + sTmp
    sTmp = LINHA_MOVPRI(0).Y1 - LREF(2).Y2
    LREF(1).Y1 = LREF(1).Y1 + sTmp
    LREF(1).Y2 = LREF(1).Y2 + sTmp
    LREF(2).Y1 = LREF(2).Y1 + sTmp
    LREF(2).Y2 = LREF(2).Y2 + sTmp
    LREF(3).Y1 = LREF(3).Y1 + sTmp
    LREF(3).Y2 = LREF(3).Y2 + sTmp
    LREF(4).Y1 = LREF(4).Y1 + sTmp
    LREF(4).Y2 = LREF(4).Y2 + sTmp
    LINHA_MOVSEC(0).Y1 = LREF(1).Y2
    LINHA_MOVSEC(1).Y1 = LREF(4).Y2
    LINHA_MOVSEC(2).Y1 = LREF(4).Y1
    LINHA_MOVSEC(3).Y1 = LREF(1).Y1
    LINHA_MOVSEC2.Y2 = LINHA_MOVSEC(1).Y1
    LREF(5).Y2 = LINHA_MOVSEC(1).Y1
    CalculoGA 0
    With LINHA_PLATAFORMA
        For I = 0 To (.Count - 1)
            .Item(I).Y1 = .Item(I).Y1 + sTmp
            .Item(I).Y2 = .Item(I).Y2 + sTmp
        Next I
    End With
    LREF(7).Y1 = LREF(7).Y1 + sTmp
    LREF(7).Y2 = LREF(7).Y2 + sTmp
    LINHA_MANIVELA2.X1 = LREF(7).X1
    LINHA_MANIVELA2.Y1 = LREF(7).Y1
    LINHA_MANIVELA2.X2 = LINHA_MANIVELA2.X1 + ((sVAR_DF * sCurso) * Cos(Abs(aQ4r(iNumInt))))
    LINHA_MANIVELA2.Y2 = LINHA_MANIVELA2.Y1 + ((sVAR_DF * sCurso) * Sin(Abs(aQ4r(iNumInt))))
    LINHA_BIELA2.X2 = LINHA_MANIVELA2.X2
    LINHA_BIELA2.Y2 = LINHA_MANIVELA2.Y2
    CalculoGA 0
    LINHA_BIELA2.X1 = LREF(5).X1
    LINHA_BIELA2.Y1 = LREF(5).Y1
    LINHA_BM2(0).X1 = LINHA_MANIVELA2.X1
    LINHA_BM2(0).X2 = LINHA_MANIVELA2.X1
    LINHA_BM2(1).X1 = LINHA_MANIVELA2.X2
    LINHA_BM2(1).X2 = LINHA_MANIVELA2.X2
    iDifY = Abs(LINHA_BM2(0).Y1 - LINHA_BM2(0).Y2)
    LINHA_BM2(0).Y2 = LINHA_MANIVELA2.Y1
    LINHA_BM2(0).Y1 = LINHA_MANIVELA2.Y1 - iDifY
    LINHA_BM2(1).Y2 = LINHA_MANIVELA2.Y2
    LINHA_BM2(1).Y1 = LINHA_MANIVELA2.Y2 - iDifY
    
    With LINHA_BASE3
        sTmp = LINHA_BM2(0).X1
        .Item(0).X1 = sTmp
        .Item(1).X1 = sTmp
        .Item(1).X2 = sTmp
        .Item(2).X1 = sTmp
        sTmp = LINHA_BM2(0).X1 + ((2 * sVAR_CB2 * sCurso) * Cos(Abs(aQ4r(iNumInt))))
        .Item(0).X2 = sTmp
        .Item(2).X2 = sTmp
        .Item(3).X1 = sTmp
        .Item(3).X2 = sTmp
        sTmp = LINHA_BM2(0).Y1
        .Item(0).Y1 = sTmp
        .Item(1).Y1 = sTmp
        sTmp = LINHA_BM2(0).Y1 - (sAltPlat * sCurso)
        .Item(1).Y2 = sTmp
        .Item(2).Y1 = sTmp
        sTmp = LINHA_BM2(0).Y1 + ((2 * sVAR_CB2 * sCurso) * Sin(Abs(aQ4r(iNumInt))))
        .Item(0).Y2 = sTmp
        .Item(2).Y2 = sTmp - (sAltPlat * sCurso)
        .Item(3).Y1 = .Item(2).Y2
        .Item(3).Y2 = .Item(0).Y2
    
    End With

    LB_X.Caption = aPosicao(iNumInt)
    LB_DI.Caption = aDi(iNumInt)
    LB_DJ.Caption = aDj(iNumInt)
    LB_HI.Caption = aHi(iNumInt)
    LB_HJ.Caption = aHj(iNumInt)
    LB_W.Caption = aW(iNumInt)
    
    'Muda Interacao
    If bSubindo = True And iNumInt < sVAR_Int Then
        iNumInt = iNumInt + 1
    ElseIf bSubindo = True And iNumInt = sVAR_Int Then
        iNumInt = iNumInt - 1
        bSubindo = False
    ElseIf bSubindo = False And iNumInt > 0 Then
        iNumInt = iNumInt - 1
    ElseIf bSubindo = False And iNumInt = 0 Then
        iNumInt = iNumInt + 1
        bSubindo = True
    End If
End Sub
Private Sub CalculoGA(Tipo As Integer)
    Dim sH As Single, sV As Single, sGrau As Single, sHip As Single
    If Tipo = 0 Then 'DH
        sGrau = aA1r(iNumInt)
        sH = sVAR_DH * Cos(sGrau)
        sV = sVAR_DH * Sin(sGrau)
        LINHA_MOVSEC2.X1 = LINHA_MOVSEC2.X2 - (sH * sCurso)
        LINHA_MOVSEC2.Y1 = LINHA_MOVSEC2.Y2 - (sV * sCurso)
        sHip = sAltPlat / Sin(sGrau)
        sH = sHip * Cos(sGrau)
        LREF(5).X1 = LREF(5).X2 - (sH * sCurso)
        LREF(5).Y1 = LREF(5).Y2 - (sAltPlat * sCurso)
    ElseIf Tipo = 1 Then 'CB2
        sGrau = aA4r(iNumInt)
        sH = sVAR_CB2 * Cos(sGrau - sGrauDesenho)
        sV = sVAR_CB2 * Sin(sGrau - sGrauDesenho)
        LINHA_BIELA2.X1 = LINHA_BIELA2.X2 + (sH * sCurso)
        LINHA_BIELA2.Y1 = LINHA_BIELA2.Y2 - (sV * sCurso)
    End If
End Sub
